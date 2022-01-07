; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_setup.c_pSeries_coalesce_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_setup.c_pSeries_coalesce_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvcall_mpp_x_data = type { i32 }

@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@FW_FEATURE_XCMO = common dso_local global i32 0, align 4
@powerpc_firmware_features = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pSeries_coalesce_init() #0 {
  %1 = alloca %struct.hvcall_mpp_x_data, align 4
  %2 = load i32, i32* @FW_FEATURE_CMO, align 4
  %3 = call i64 @firmware_has_feature(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i32 @h_get_mpp_x(%struct.hvcall_mpp_x_data* %1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @FW_FEATURE_XCMO, align 4
  %10 = load i32, i32* @powerpc_firmware_features, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* @powerpc_firmware_features, align 4
  br label %17

12:                                               ; preds = %5, %0
  %13 = load i32, i32* @FW_FEATURE_XCMO, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @powerpc_firmware_features, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @powerpc_firmware_features, align 4
  br label %17

17:                                               ; preds = %12, %8
  ret void
}

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @h_get_mpp_x(%struct.hvcall_mpp_x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
