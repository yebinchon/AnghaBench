; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-pll.c_clk_pll4600c28_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-pll.c_clk_pll4600c28_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_pll = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.stm_pll*)* @clk_pll4600c28_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll4600c28_get_params(i64 %0, i64 %1, %struct.stm_pll* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stm_pll*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.stm_pll* %2, %struct.stm_pll** %7, align 8
  store i64 -1, i64* %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 19000000
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp ugt i64 %17, 3000000000
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %109

22:                                               ; preds = %16
  store i64 1, i64* %8, align 8
  br label %23

23:                                               ; preds = %99, %22
  %24 = load i64, i64* %8, align 8
  %25 = icmp ule i64 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %102

31:                                               ; preds = %29
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = udiv i64 %32, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %35, 4000000
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %38, 50000000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %31
  br label %99

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = mul i64 %43, 2
  %45 = udiv i64 %42, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %10, align 8
  %50 = icmp ugt i64 %49, 246
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %41
  br label %99

52:                                               ; preds = %48
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %53, 246
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %95, %58
  %60 = load i64, i64* %10, align 8
  %61 = icmp uge i64 %60, 8
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ false, %59 ], [ %64, %62 ]
  br i1 %66, label %67, label %98

67:                                               ; preds = %65
  %68 = load i64, i64* %9, align 8
  %69 = mul i64 %68, 2
  %70 = load i64, i64* %10, align 8
  %71 = mul i64 %69, %70
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %6, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %98

76:                                               ; preds = %67
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %77, %78
  store i64 %79, i64* %13, align 8
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82, %76
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %89 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.stm_pll*, %struct.stm_pll** %7, align 8
  %92 = getelementptr inbounds %struct.stm_pll, %struct.stm_pll* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %13, align 8
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %86, %82
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %10, align 8
  br label %59

98:                                               ; preds = %75, %65
  br label %99

99:                                               ; preds = %98, %51, %40
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  br label %23

102:                                              ; preds = %29
  %103 = load i64, i64* %11, align 8
  %104 = icmp eq i64 %103, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105, %19
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
