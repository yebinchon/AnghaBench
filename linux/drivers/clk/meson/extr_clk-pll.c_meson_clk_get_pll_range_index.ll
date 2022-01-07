; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_get_pll_range_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_get_pll_range_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_clk_pll_data = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32*, i32*, %struct.meson_clk_pll_data*)* @meson_clk_get_pll_range_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_clk_get_pll_range_index(i64 %0, i64 %1, i32 %2, i32* %3, i32* %4, %struct.meson_clk_pll_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.meson_clk_pll_data*, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.meson_clk_pll_data* %5, %struct.meson_clk_pll_data** %13, align 8
  %14 = load i32, i32* %10, align 4
  %15 = add i32 %14, 1
  %16 = load i32*, i32** %12, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %13, align 8
  %20 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 1, %22
  %24 = icmp uge i32 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %94

28:                                               ; preds = %6
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %74

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %13, align 8
  %35 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = mul i64 %38, %39
  %41 = icmp ule i64 %33, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %13, align 8
  %44 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @ENODATA, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %94

52:                                               ; preds = %32
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %13, align 8
  %55 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = mul i64 %58, %59
  %61 = icmp uge i64 %53, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %13, align 8
  %64 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @ENODATA, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %94

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %28
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %13, align 8
  %80 = call i32 @meson_clk_get_pll_range_m(i64 %75, i64 %76, i32 %78, %struct.meson_clk_pll_data* %79)
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %13, align 8
  %85 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 1, %87
  %89 = icmp uge i32 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %94

93:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %90, %62, %42, %25
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @meson_clk_get_pll_range_m(i64, i64, i32, %struct.meson_clk_pll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
