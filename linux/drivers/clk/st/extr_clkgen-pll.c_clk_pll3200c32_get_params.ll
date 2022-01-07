; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-pll.c_clk_pll3200c32_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-pll.c_clk_pll3200c32_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_pll = type { i64, i64, i32 }

@clk_pll3200c32_get_params.cp_table = internal constant [19 x i8] c"08@HPX`hpx\80\88\90\98\A0\A8\B0\B8\C0", align 16
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.stm_pll*)* @clk_pll3200c32_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll3200c32_get_params(i64 %0, i64 %1, %struct.stm_pll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stm_pll*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.stm_pll* %2, %struct.stm_pll** %7, align 8
  store i64 -1, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 800000000
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %16, 1600000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %106

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %22, 1000
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = udiv i64 %24, 1000
  store i64 %25, i64* %6, align 8
  store i64 1, i64* %8, align 8
  br label %26

26:                                               ; preds = %74, %21
  %27 = load i64, i64* %8, align 8
  %28 = icmp ule i64 %27, 7
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %77

34:                                               ; preds = %32
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %35, %36
  %38 = load i64, i64* %5, align 8
  %39 = mul i64 2, %38
  %40 = udiv i64 %37, %39
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %41, 8
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %74

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = icmp ugt i64 %45, 200
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %77

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = mul i64 %49, 2
  %51 = load i64, i64* %9, align 8
  %52 = mul i64 %50, %51
  %53 = load i64, i64* %8, align 8
  %54 = udiv i64 %52, %53
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %55, %56
  %58 = call i64 @abs(i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61, %48
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %68 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %71 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %65, %61
  br label %74

74:                                               ; preds = %73, %43
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %26

77:                                               ; preds = %47, %32
  %78 = load i64, i64* %10, align 8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %106

83:                                               ; preds = %77
  %84 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %85 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %84, i32 0, i32 2
  store i32 6, i32* %85, align 8
  br label %86

86:                                               ; preds = %100, %83
  %87 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %88 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %91 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 6
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [19 x i8], [19 x i8]* @clk_pll3200c32_get_params.cp_table, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = icmp ugt i64 %89, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %102 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %86

105:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %80, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
