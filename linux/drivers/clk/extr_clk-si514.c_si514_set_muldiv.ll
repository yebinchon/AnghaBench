; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_set_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_set_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si514 = type { i32 }
%struct.clk_si514_muldiv = type { i32, i32, i32, i32 }

@SI514_REG_LP = common dso_local global i32 0, align 4
@SI514_REG_HS_DIV = common dso_local global i32 0, align 4
@SI514_REG_M_FRAC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si514*, %struct.clk_si514_muldiv*)* @si514_set_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si514_set_muldiv(%struct.clk_si514* %0, %struct.clk_si514_muldiv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_si514*, align 8
  %5 = alloca %struct.clk_si514_muldiv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.clk_si514* %0, %struct.clk_si514** %4, align 8
  store %struct.clk_si514_muldiv* %1, %struct.clk_si514_muldiv** %5, align 8
  %9 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %10 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 65
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %15 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 65
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %20 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 139575831
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  store i32 34, i32* %6, align 4
  br label %76

24:                                               ; preds = %18, %13
  %25 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %26 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 67
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %31 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 67
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %36 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 461581994
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %24
  store i32 35, i32* %6, align 4
  br label %75

40:                                               ; preds = %34, %29
  %41 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %42 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 72
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %47 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 72
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %52 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 503383578
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %40
  store i32 51, i32* %6, align 4
  br label %74

56:                                               ; preds = %50, %45
  %57 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %58 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 75
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %63 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 75
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %68 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 452724474
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %56
  store i32 52, i32* %6, align 4
  br label %73

72:                                               ; preds = %66, %61
  store i32 68, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %39
  br label %76

76:                                               ; preds = %75, %23
  %77 = load %struct.clk_si514*, %struct.clk_si514** %4, align 8
  %78 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SI514_REG_LP, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @regmap_write(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %149

87:                                               ; preds = %76
  %88 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %89 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  store i32 %90, i32* %91, align 16
  %92 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %93 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 8
  %96 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 1
  store i32 %95, i32* %96, align 4
  %97 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %98 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 16
  %101 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 2
  store i32 %100, i32* %101, align 8
  %102 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %103 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 24
  %106 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %107 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 5
  %110 = or i32 %105, %109
  %111 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 3
  store i32 %110, i32* %111, align 4
  %112 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %113 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 3
  %116 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 4
  store i32 %115, i32* %116, align 16
  %117 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %118 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  store i32 %119, i32* %120, align 4
  %121 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %122 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 8
  %125 = load %struct.clk_si514_muldiv*, %struct.clk_si514_muldiv** %5, align 8
  %126 = getelementptr inbounds %struct.clk_si514_muldiv, %struct.clk_si514_muldiv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 4
  %129 = or i32 %124, %128
  %130 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 6
  store i32 %129, i32* %130, align 8
  %131 = load %struct.clk_si514*, %struct.clk_si514** %4, align 8
  %132 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SI514_REG_HS_DIV, align 4
  %135 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %136 = getelementptr inbounds i32, i32* %135, i64 5
  %137 = call i32 @regmap_bulk_write(i32 %133, i32 %134, i32* %136, i32 2)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %87
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %149

142:                                              ; preds = %87
  %143 = load %struct.clk_si514*, %struct.clk_si514** %4, align 8
  %144 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SI514_REG_M_FRAC1, align 4
  %147 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %148 = call i32 @regmap_bulk_write(i32 %145, i32 %146, i32* %147, i32 5)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %142, %140, %85
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
