; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_clk_mix = type { i32, i32*, i32 }

@CLK_MUX_INDEX_BIT = common dso_local global i32 0, align 4
@CLK_MUX_INDEX_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_clk_mix*, i32)* @_get_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_mux(%struct.mmp_clk_mix* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmp_clk_mix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmp_clk_mix* %0, %struct.mmp_clk_mix** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %9 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %8, i32 0, i32 2
  %10 = call i32 @clk_hw_get_num_parents(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %12 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CLK_MUX_INDEX_BIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ffs(i32 %18)
  %20 = sub i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %23 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CLK_MUX_INDEX_ONE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = sub i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %21
  %32 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %33 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %43 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %65

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %65

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %31
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %61, %51, %28, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @clk_hw_get_num_parents(i32*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
