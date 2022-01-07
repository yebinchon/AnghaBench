; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_phase.c_ccu_phase_get_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_phase.c_ccu_phase_get_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_phase = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @ccu_phase_get_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_phase_get_phase(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.ccu_phase*, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.ccu_phase* @hw_to_ccu_phase(%struct.clk_hw* %13)
  store %struct.ccu_phase* %14, %struct.ccu_phase** %4, align 8
  %15 = load %struct.ccu_phase*, %struct.ccu_phase** %4, align 8
  %16 = getelementptr inbounds %struct.ccu_phase, %struct.ccu_phase* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ccu_phase*, %struct.ccu_phase** %4, align 8
  %20 = getelementptr inbounds %struct.ccu_phase, %struct.ccu_phase* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %18, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.ccu_phase*, %struct.ccu_phase** %4, align 8
  %27 = getelementptr inbounds %struct.ccu_phase, %struct.ccu_phase* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ccu_phase*, %struct.ccu_phase** %4, align 8
  %31 = getelementptr inbounds %struct.ccu_phase, %struct.ccu_phase* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 180, i32* %2, align 4
  br label %81

40:                                               ; preds = %1
  %41 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %42 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %41)
  store %struct.clk_hw* %42, %struct.clk_hw** %5, align 8
  %43 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %44 = icmp ne %struct.clk_hw* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %81

48:                                               ; preds = %40
  %49 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %50 = call i32 @clk_hw_get_rate(%struct.clk_hw* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %81

56:                                               ; preds = %48
  %57 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %58 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %57)
  store %struct.clk_hw* %58, %struct.clk_hw** %6, align 8
  %59 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %60 = icmp ne %struct.clk_hw* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %81

64:                                               ; preds = %56
  %65 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %66 = call i32 @clk_hw_get_rate(%struct.clk_hw* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %81

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = udiv i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @DIV_ROUND_CLOSEST(i32 360, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %72, %69, %61, %53, %45, %39
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.ccu_phase* @hw_to_ccu_phase(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
