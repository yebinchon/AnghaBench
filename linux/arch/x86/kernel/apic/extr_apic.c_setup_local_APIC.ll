; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_setup_local_APIC.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_setup_local_APIC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 (...)*, i32 (...)*, i64 }

@disable_apic = common dso_local global i64 0, align 8
@APIC_SPIV = common dso_local global i32 0, align 4
@APIC_SPIV_APIC_ENABLED = common dso_local global i32 0, align 4
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@APIC_TASKPRI = common dso_local global i32 0, align 4
@APIC_TPRI_MASK = common dso_local global i32 0, align 4
@APIC_VECTOR_MASK = common dso_local global i32 0, align 4
@SPURIOUS_APIC_VECTOR = common dso_local global i32 0, align 4
@APIC_LVT0 = common dso_local global i32 0, align 4
@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@pic_mode = common dso_local global i64 0, align 8
@skip_ioapic_setup = common dso_local global i64 0, align 8
@APIC_DM_EXTINT = common dso_local global i32 0, align 4
@APIC_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"enabled ExtINT on CPU#%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"masked ExtINT on CPU#%d\0A\00", align 1
@apic_extnmi = common dso_local global i64 0, align 8
@APIC_EXTNMI_NONE = common dso_local global i64 0, align 8
@APIC_EXTNMI_ALL = common dso_local global i64 0, align 8
@APIC_DM_NMI = common dso_local global i32 0, align 4
@APIC_LVT_LEVEL_TRIGGER = common dso_local global i32 0, align 4
@APIC_LVT1 = common dso_local global i32 0, align 4
@APIC_ESR = common dso_local global i32 0, align 4
@APIC_LDR = common dso_local global i32 0, align 4
@APIC_SPIV_FOCUS_DISABLED = common dso_local global i32 0, align 4
@BAD_APICID = common dso_local global i32 0, align 4
@x86_cpu_to_logical_apicid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_local_APIC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_local_APIC() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* @disable_apic, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @disable_ioapic_support()
  br label %116

8:                                                ; preds = %0
  %9 = load i32, i32* @APIC_SPIV, align 4
  %10 = call i32 @apic_read(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @APIC_SPIV_APIC_ENABLED, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @APIC_SPIV, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @apic_write(i32 %15, i32 %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = call i32 (...) %20()
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (...)*, i32 (...)** %27, align 8
  %29 = call i32 (...) %28()
  %30 = load i32, i32* @APIC_TASKPRI, align 4
  %31 = call i32 @apic_read(i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* @APIC_TPRI_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = or i32 %36, 16
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* @APIC_TASKPRI, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @apic_write(i32 %38, i32 %39)
  %41 = call i32 (...) @apic_pending_intr_clear()
  %42 = load i32, i32* @APIC_SPIV, align 4
  %43 = call i32 @apic_read(i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* @APIC_VECTOR_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %2, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* @APIC_SPIV_APIC_ENABLED, align 4
  %49 = load i32, i32* %2, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @SPURIOUS_APIC_VECTOR, align 4
  %52 = load i32, i32* %2, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* @APIC_SPIV, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @apic_write(i32 %54, i32 %55)
  %57 = call i32 (...) @perf_events_lapic_init()
  %58 = load i32, i32* @APIC_LVT0, align 4
  %59 = call i32 @apic_read(i32 %58)
  %60 = load i32, i32* @APIC_LVT_MASKED, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %1, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %8
  %65 = load i64, i64* @pic_mode, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* @skip_ioapic_setup, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70, %67, %64
  %74 = load i32, i32* @APIC_DM_EXTINT, align 4
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* @APIC_VERBOSE, align 4
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @apic_printk(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %85

78:                                               ; preds = %70, %8
  %79 = load i32, i32* @APIC_DM_EXTINT, align 4
  %80 = load i32, i32* @APIC_LVT_MASKED, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %2, align 4
  %82 = load i32, i32* @APIC_VERBOSE, align 4
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @apic_printk(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %73
  %86 = load i32, i32* @APIC_LVT0, align 4
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @apic_write(i32 %86, i32 %87)
  %89 = load i32, i32* %1, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* @apic_extnmi, align 8
  %93 = load i64, i64* @APIC_EXTNMI_NONE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91, %85
  %96 = load i64, i64* @apic_extnmi, align 8
  %97 = load i64, i64* @APIC_EXTNMI_ALL, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95, %91
  %100 = load i32, i32* @APIC_DM_NMI, align 4
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @APIC_DM_NMI, align 4
  %103 = load i32, i32* @APIC_LVT_MASKED, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %99
  %106 = call i64 (...) @lapic_is_integrated()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* @APIC_LVT_LEVEL_TRIGGER, align 4
  %110 = load i32, i32* %2, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* @APIC_LVT1, align 4
  %114 = load i32, i32* %2, align 4
  %115 = call i32 @apic_write(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %6
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @disable_ioapic_support(...) #1

declare dso_local i32 @apic_read(i32) #1

declare dso_local i32 @apic_write(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @apic_pending_intr_clear(...) #1

declare dso_local i32 @perf_events_lapic_init(...) #1

declare dso_local i32 @apic_printk(i32, i8*, i32) #1

declare dso_local i64 @lapic_is_integrated(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
