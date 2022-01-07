; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_calc_divs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si570.c_si570_calc_divs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si570 = type { i32 }

@ULLONG_MAX = common dso_local global i32 0, align 4
@si570_calc_divs.si570_hs_div_values = internal constant [6 x i32] [i32 11, i32 9, i32 7, i32 6, i32 5, i32 4], align 16
@FDCO_MIN = common dso_local global i32 0, align 4
@FDCO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clk_si570*, i32*, i32*, i32*)* @si570_calc_divs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si570_calc_divs(i64 %0, %struct.clk_si570* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_si570*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store %struct.clk_si570* %1, %struct.clk_si570** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* @ULLONG_MAX, align 4
  store i32 %17, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %86, %5
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @si570_calc_divs.si570_hs_div_values, i64 0, i64 0))
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* @si570_calc_divs.si570_hs_div_values, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @FDCO_MIN, align 4
  %28 = load i32, i32* %14, align 4
  %29 = zext i32 %28 to i64
  %30 = call i32 @div_u64(i32 %27, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @div_u64(i32 %30, i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %22
  %40 = load i32, i32* %13, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %78, %42
  %44 = load i32, i32* %13, align 4
  %45 = icmp ule i32 %44, 128
  br i1 %45, label %46, label %85

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @FDCO_MAX, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %85

57:                                               ; preds = %46
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @FDCO_MIN, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = shl i32 %70, 28
  %72 = load %struct.clk_si570*, %struct.clk_si570** %8, align 8
  %73 = getelementptr inbounds %struct.clk_si570, %struct.clk_si570* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @div64_u64(i32 %71, i32 %74)
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %65, %61, %57
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 2
  %83 = load i32, i32* %13, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %43

85:                                               ; preds = %56, %43
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %18

89:                                               ; preds = %18
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @ULLONG_MAX, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %97

96:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
