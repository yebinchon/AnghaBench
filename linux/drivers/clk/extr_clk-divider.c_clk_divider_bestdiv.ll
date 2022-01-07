; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_clk_divider_bestdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_clk_divider_bestdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_div_table = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_hw*, i64, i64*, %struct.clk_div_table*, i32, i64)* @clk_divider_bestdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_divider_bestdiv(%struct.clk_hw* %0, %struct.clk_hw* %1, i64 %2, i64* %3, %struct.clk_div_table* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.clk_div_table*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %9, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store %struct.clk_div_table* %4, %struct.clk_div_table** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %19, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %22, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store i64 1, i64* %11, align 8
  br label %28

28:                                               ; preds = %27, %7
  %29 = load %struct.clk_div_table*, %struct.clk_div_table** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i64, i64* %15, align 8
  %32 = call i8* @_get_maxdiv(%struct.clk_div_table* %29, i32 %30, i64 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %21, align 8
  %34 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %35 = call i32 @clk_hw_get_flags(%struct.clk_hw* %34)
  %36 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %28
  %40 = load i64*, i64** %12, align 8
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %18, align 8
  %42 = load %struct.clk_div_table*, %struct.clk_div_table** %13, align 8
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @_div_round(%struct.clk_div_table* %42, i64 %43, i64 %44, i64 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %17, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 1, %49 ], [ %51, %50 ]
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %21, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* %21, align 8
  br label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i64 [ %59, %58 ], [ %62, %60 ]
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %8, align 4
  br label %135

67:                                               ; preds = %28
  %68 = load i64, i64* @ULONG_MAX, align 8
  %69 = load i64, i64* %11, align 8
  %70 = udiv i64 %68, %69
  %71 = load i64, i64* %21, align 8
  %72 = call i64 @min(i64 %70, i64 %71)
  store i64 %72, i64* %21, align 8
  %73 = load %struct.clk_div_table*, %struct.clk_div_table** %13, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @_next_div(%struct.clk_div_table* %73, i32 0, i64 %74)
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %116, %67
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %21, align 8
  %80 = icmp ule i64 %78, %79
  br i1 %80, label %81, label %121

81:                                               ; preds = %76
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %82, %84
  %86 = load i64, i64* %22, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i64, i64* %22, align 8
  %90 = load i64*, i64** %12, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %8, align 4
  br label %135

92:                                               ; preds = %81
  %93 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %94, %96
  %98 = trunc i64 %97 to i32
  %99 = call i64 @clk_hw_round_rate(%struct.clk_hw* %93, i32 %98)
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %18, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %16, align 4
  %103 = call i64 @DIV_ROUND_UP_ULL(i32 %101, i32 %102)
  store i64 %103, i64* %20, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i64 @_is_best_div(i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %92
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %17, align 4
  %112 = load i64, i64* %20, align 8
  store i64 %112, i64* %19, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load i64*, i64** %12, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %92
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.clk_div_table*, %struct.clk_div_table** %13, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @_next_div(%struct.clk_div_table* %117, i32 %118, i64 %119)
  store i32 %120, i32* %16, align 4
  br label %76

121:                                              ; preds = %76
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load %struct.clk_div_table*, %struct.clk_div_table** %13, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i64, i64* %15, align 8
  %128 = call i8* @_get_maxdiv(%struct.clk_div_table* %125, i32 %126, i64 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %17, align 4
  %130 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %131 = call i64 @clk_hw_round_rate(%struct.clk_hw* %130, i32 1)
  %132 = load i64*, i64** %12, align 8
  store i64 %131, i64* %132, align 8
  br label %133

133:                                              ; preds = %124, %121
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %88, %63
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i8* @_get_maxdiv(%struct.clk_div_table*, i32, i64) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i32 @_div_round(%struct.clk_div_table*, i64, i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @_next_div(%struct.clk_div_table*, i32, i64) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i32) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i64 @_is_best_div(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
