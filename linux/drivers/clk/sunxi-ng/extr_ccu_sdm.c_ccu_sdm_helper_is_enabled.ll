; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i64, i64 }
%struct.ccu_sdm_internal = type { i32, i32, i64 }

@CCU_FEATURE_SIGMA_DELTA_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_sdm_helper_is_enabled(%struct.ccu_common* %0, %struct.ccu_sdm_internal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_common*, align 8
  %5 = alloca %struct.ccu_sdm_internal*, align 8
  store %struct.ccu_common* %0, %struct.ccu_common** %4, align 8
  store %struct.ccu_sdm_internal* %1, %struct.ccu_sdm_internal** %5, align 8
  %6 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %7 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CCU_FEATURE_SIGMA_DELTA_MOD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %15 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %20 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %23 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %28 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %50

33:                                               ; preds = %18, %13
  %34 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %35 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %38 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %5, align 8
  %43 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %33, %32, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
