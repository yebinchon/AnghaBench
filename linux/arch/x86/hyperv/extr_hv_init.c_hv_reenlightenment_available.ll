; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_reenlightenment_available.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/hyperv/extr_hv_init.c_hv_reenlightenment_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ms_hyperv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HV_X64_ACCESS_FREQUENCY_MSRS = common dso_local global i32 0, align 4
@HV_FEATURE_FREQUENCY_MSRS_AVAILABLE = common dso_local global i32 0, align 4
@HV_X64_ACCESS_REENLIGHTENMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hv_reenlightenment_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_reenlightenment_available() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ms_hyperv, i32 0, i32 0), align 4
  %2 = load i32, i32* @HV_X64_ACCESS_FREQUENCY_MSRS, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ms_hyperv, i32 0, i32 1), align 4
  %7 = load i32, i32* @HV_FEATURE_FREQUENCY_MSRS_AVAILABLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ms_hyperv, i32 0, i32 0), align 4
  %12 = load i32, i32* @HV_X64_ACCESS_REENLIGHTENMENT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %5, %0
  %16 = phi i1 [ false, %5 ], [ false, %0 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
