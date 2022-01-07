; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_system_reset_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_system_reset_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.pt_regs*)* }
%struct.pt_regs = type { i32 }

@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@SPRN_HSRR0 = common dso_local global i32 0, align 4
@SPRN_HSRR1 = common dso_local global i32 0, align 4
@irq_stat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ppc_md = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KMSG_DUMP_OOPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"System Reset\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@LOCKDEP_NOW_UNRELIABLE = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unrecoverable System Reset\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @system_reset_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = call i32 (...) @in_nmi()
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @nmi_enter()
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %14 = call i64 @cpu_has_feature(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @SPRN_HSRR0, align 4
  %18 = call i64 @mfspr(i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i32, i32* @SPRN_HSRR1, align 4
  %20 = call i64 @mfspr(i32 %19)
  store i64 %20, i64* %4, align 8
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = call i32 @hv_nmi_check_nonrecoverable(%struct.pt_regs* %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @irq_stat, i32 0, i32 0), align 4
  %25 = call i32 @__this_cpu_inc(i32 %24)
  %26 = load i64 (%struct.pt_regs*)*, i64 (%struct.pt_regs*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 8
  %27 = icmp ne i64 (%struct.pt_regs*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i64 (%struct.pt_regs*)*, i64 (%struct.pt_regs*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = call i64 %29(%struct.pt_regs* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %60

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %37 = call i64 @debugger(%struct.pt_regs* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %60

40:                                               ; preds = %35
  %41 = load i32, i32* @KMSG_DUMP_OOPS, align 4
  %42 = call i32 @kmsg_dump(i32 %41)
  %43 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %44 = call i32 @crash_fadump(%struct.pt_regs* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %46 = call i32 @crash_kexec(%struct.pt_regs* %45)
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = call i32 @crash_kexec_secondary(%struct.pt_regs* %47)
  %49 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %50 = load i32, i32* @SIGABRT, align 4
  %51 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %49, i32 %50)
  %52 = load i32, i32* @MSEC_PER_SEC, align 4
  %53 = mul nsw i32 2, %52
  %54 = call i32 @mdelay(i32 %53)
  %55 = load i32, i32* @TAINT_DIE, align 4
  %56 = load i32, i32* @LOCKDEP_NOW_UNRELIABLE, align 4
  %57 = call i32 @add_taint(i32 %55, i32 %56)
  %58 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %59 = call i32 @nmi_panic(%struct.pt_regs* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %40, %39, %33
  %61 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MSR_RI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %69 = call i32 @nmi_panic(%struct.pt_regs* %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* @SPRN_HSRR0, align 4
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @mtspr(i32 %74, i64 %75)
  %77 = load i32, i32* @SPRN_HSRR1, align 4
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @mtspr(i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (...) @nmi_exit()
  br label %85

85:                                               ; preds = %83, %80
  ret void
}

declare dso_local i32 @in_nmi(...) #1

declare dso_local i32 @nmi_enter(...) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local i32 @hv_nmi_check_nonrecoverable(%struct.pt_regs*) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i64 @debugger(%struct.pt_regs*) #1

declare dso_local i32 @kmsg_dump(i32) #1

declare dso_local i32 @crash_fadump(%struct.pt_regs*, i8*) #1

declare dso_local i32 @crash_kexec(%struct.pt_regs*) #1

declare dso_local i32 @crash_kexec_secondary(%struct.pt_regs*) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @add_taint(i32, i32) #1

declare dso_local i32 @nmi_panic(%struct.pt_regs*, i8*) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i32 @nmi_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
