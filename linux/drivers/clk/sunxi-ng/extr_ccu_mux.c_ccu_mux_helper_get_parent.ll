; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_helper_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_helper_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i64, i64 }
%struct.ccu_mux_internal = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_mux_helper_get_parent(%struct.ccu_common* %0, %struct.ccu_mux_internal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_common*, align 8
  %5 = alloca %struct.ccu_mux_internal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %4, align 8
  store %struct.ccu_mux_internal* %1, %struct.ccu_mux_internal** %5, align 8
  %10 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %11 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %14 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %5, align 8
  %20 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %5, align 8
  %24 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %5, align 8
  %31 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %2
  %35 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %36 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %35, i32 0, i32 0
  %37 = call i32 @clk_hw_get_num_parents(i32* %36)
  store i32 %37, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %55, %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.ccu_mux_internal*, %struct.ccu_mux_internal** %5, align 8
  %44 = getelementptr inbounds %struct.ccu_mux_internal, %struct.ccu_mux_internal* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %61

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %38

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_hw_get_num_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
