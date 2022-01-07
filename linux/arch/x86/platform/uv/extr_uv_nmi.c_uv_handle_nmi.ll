; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_handle_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_handle_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_hub_nmi_s = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@uv_hub_nmi = common dso_local global %struct.uv_hub_nmi_s* null, align 8
@uv_cpu_nmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NMI_DONE = common dso_local global i32 0, align 4
@uv_nmi_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"kdump\00", align 1
@uv_nmi_action = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"kdb\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"kgdb\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"UV: unknown NMI action: %s\0A\00", align 1
@UV_NMI_STATE_OUT = common dso_local global i32 0, align 4
@uv_nmi_cpu_mask = common dso_local global i32 0, align 4
@uv_nmi_cpus_in_nmi = common dso_local global i32 0, align 4
@uv_in_nmi = common dso_local global i32 0, align 4
@uv_nmi_kexec_failed = common dso_local global i32 0, align 4
@uv_nmi_slave_continue = common dso_local global i32 0, align 4
@SLAVE_CLEAR = common dso_local global i32 0, align 4
@NMI_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pt_regs*)* @uv_handle_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_handle_nmi(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.uv_hub_nmi_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %10 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** @uv_hub_nmi, align 8
  store %struct.uv_hub_nmi_s* %10, %struct.uv_hub_nmi_s** %6, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 1), align 4
  %15 = call i32 @this_cpu_read(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.uv_hub_nmi_s*, %struct.uv_hub_nmi_s** %6, align 8
  %19 = call i32 @uv_check_nmi(%struct.uv_hub_nmi_s* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @local_irq_restore(i64 %22)
  %24 = load i32, i32* @NMI_DONE, align 4
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %17, %2
  %26 = call i32 @atomic_read(i32* @uv_nmi_cpu)
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = call i64 @uv_nmi_action_is(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %36 = call i32 @uv_nmi_kdump(i32 %33, i32 %34, %struct.pt_regs* %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @uv_nmi_action, align 4
  %41 = load i32, i32* @uv_nmi_action, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = call i32 @strncpy(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %32
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @uv_nmi_wait(i32 %46)
  %48 = call i64 @uv_nmi_action_is(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @uv_nmi_action_health(i32 %51, %struct.pt_regs* %52, i32 %53)
  br label %88

55:                                               ; preds = %45
  %56 = call i64 @uv_nmi_action_is(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i64 @uv_nmi_action_is(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @uv_nmi_dump_state(i32 %62, %struct.pt_regs* %63, i32 %64)
  br label %87

66:                                               ; preds = %58
  %67 = call i64 @uv_nmi_action_is(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = call i64 @uv_nmi_action_is(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @uv_call_kgdb_kdb(i32 %73, %struct.pt_regs* %74, i32 %75)
  br label %86

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @uv_nmi_action, align 4
  %82 = call i32 @pr_alert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @uv_nmi_sync_exit(i32 %84)
  br label %86

86:                                               ; preds = %83, %72
  br label %87

87:                                               ; preds = %86, %61
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uv_cpu_nmi, i32 0, i32 0), align 4
  %90 = load i32, i32* @UV_NMI_STATE_OUT, align 4
  %91 = call i32 @this_cpu_write(i32 %89, i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @uv_clear_nmi(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load i32, i32* @uv_nmi_cpu_mask, align 4
  %98 = call i64 @cpumask_weight(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 (...) @uv_nmi_cleanup_mask()
  br label %102

102:                                              ; preds = %100, %96
  %103 = call i32 @atomic_set(i32* @uv_nmi_cpus_in_nmi, i32 -1)
  %104 = call i32 @atomic_set(i32* @uv_nmi_cpu, i32 -1)
  %105 = call i32 @atomic_set(i32* @uv_in_nmi, i32 0)
  %106 = call i32 @atomic_set(i32* @uv_nmi_kexec_failed, i32 0)
  %107 = load i32, i32* @SLAVE_CLEAR, align 4
  %108 = call i32 @atomic_set(i32* @uv_nmi_slave_continue, i32 %107)
  br label %109

109:                                              ; preds = %102, %88
  %110 = call i32 (...) @uv_nmi_touch_watchdogs()
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @local_irq_restore(i64 %111)
  %113 = load i32, i32* @NMI_HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @uv_check_nmi(%struct.uv_hub_nmi_s*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @uv_nmi_action_is(i8*) #1

declare dso_local i32 @uv_nmi_kdump(i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @uv_nmi_wait(i32) #1

declare dso_local i32 @uv_nmi_action_health(i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @uv_nmi_dump_state(i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @uv_call_kgdb_kdb(i32, %struct.pt_regs*, i32) #1

declare dso_local i32 @pr_alert(i8*, i32) #1

declare dso_local i32 @uv_nmi_sync_exit(i32) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @uv_clear_nmi(i32) #1

declare dso_local i64 @cpumask_weight(i32) #1

declare dso_local i32 @uv_nmi_cleanup_mask(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @uv_nmi_touch_watchdogs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
