; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-exynos-audss.c_exynos_audss_clk_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-exynos-audss.c_exynos_audss_clk_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@EXYNOS_MOUT_AUDSS = common dso_local global i32 0, align 4
@EXYNOS_DOUT_SRP = common dso_local global i32 0, align 4
@clk_data = common dso_local global %struct.TYPE_2__* null, align 8
@EXYNOS_SRP_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos_audss_clk_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_audss_clk_teardown() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EXYNOS_MOUT_AUDSS, align 4
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @EXYNOS_DOUT_SRP, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_data, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IS_ERR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_data, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_hw_unregister_mux(i32 %24)
  br label %26

26:                                               ; preds = %17, %7
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %3

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @EXYNOS_SRP_CLK, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_data, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IS_ERR(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %35
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_data, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_hw_unregister_divider(i32 %52)
  br label %54

54:                                               ; preds = %45, %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %31

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i32, i32* %1, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_data, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_data, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IS_ERR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %65
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_data, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_hw_unregister_gate(i32 %82)
  br label %84

84:                                               ; preds = %75, %65
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %59

88:                                               ; preds = %59
  ret void
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_hw_unregister_mux(i32) #1

declare dso_local i32 @clk_hw_unregister_divider(i32) #1

declare dso_local i32 @clk_hw_unregister_gate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
