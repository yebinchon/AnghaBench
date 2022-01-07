; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pt = type { i32, i32 }

@pt_ctx = common dso_local global i32 0, align 4
@MSR_IA32_RTIT_STATUS = common dso_local global i32 0, align 4
@RTIT_CTL_TOPA = common dso_local global i32 0, align 4
@RTIT_CTL_TRACEEN = common dso_local global i32 0, align 4
@RTIT_CTL_BRANCH_EN = common dso_local global i32 0, align 4
@RTIT_CTL_OS = common dso_local global i32 0, align 4
@RTIT_CTL_USR = common dso_local global i32 0, align 4
@PT_CONFIG_MASK = common dso_local global i32 0, align 4
@PERF_AUX_FLAG_PARTIAL = common dso_local global i32 0, align 4
@MSR_IA32_RTIT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @pt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_config(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.pt*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = call %struct.pt* @this_cpu_ptr(i32* @pt_ctx)
  store %struct.pt* %5, %struct.pt** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = call i32 @perf_event_itrace_started(%struct.perf_event* %12)
  %14 = load i32, i32* @MSR_IA32_RTIT_STATUS, align 4
  %15 = call i32 @wrmsrl(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %18 = call i32 @pt_config_filters(%struct.perf_event* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @RTIT_CTL_TOPA, align 4
  %20 = load i32, i32* @RTIT_CTL_TRACEEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 0)
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RTIT_CTL_BRANCH_EN, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %16
  %41 = load i32, i32* @RTIT_CTL_BRANCH_EN, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @RTIT_CTL_OS, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @RTIT_CTL_USR, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %66 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PT_CONFIG_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %75 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.pt*, %struct.pt** %3, align 8
  %78 = getelementptr inbounds %struct.pt, %struct.pt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @READ_ONCE(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load %struct.pt*, %struct.pt** %3, align 8
  %84 = getelementptr inbounds %struct.pt, %struct.pt* %83, i32 0, i32 0
  %85 = load i32, i32* @PERF_AUX_FLAG_PARTIAL, align 4
  %86 = call i32 @perf_aux_output_flag(i32* %84, i32 %85)
  br label %91

87:                                               ; preds = %64
  %88 = load i32, i32* @MSR_IA32_RTIT_CTL, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @wrmsrl(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %82
  ret void
}

declare dso_local %struct.pt* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_event_itrace_started(%struct.perf_event*) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @pt_config_filters(%struct.perf_event*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @perf_aux_output_flag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
