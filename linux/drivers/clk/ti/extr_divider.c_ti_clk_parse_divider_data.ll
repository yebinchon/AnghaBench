; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_parse_divider_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_parse_divider_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32, i32 }

@CLKF_INDEX_STARTS_AT_ONE = common dso_local global i32 0, align 4
@CLKF_INDEX_POWER_OF_TWO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_clk_parse_divider_data(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.clk_div_table** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.clk_div_table**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.clk_div_table*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.clk_div_table** %5, %struct.clk_div_table*** %13, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @CLKF_INDEX_STARTS_AT_ONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %15, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %27, %26
  store i32 1, i32* %16, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @CLKF_INDEX_POWER_OF_TWO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %16, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %16, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @fls(i32 %48)
  %50 = load i32*, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.clk_div_table**, %struct.clk_div_table*** %13, align 8
  store %struct.clk_div_table* null, %struct.clk_div_table** %51, align 8
  store i32 0, i32* %7, align 4
  br label %143

52:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ true, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %83

62:                                               ; preds = %60
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %83

70:                                               ; preds = %62
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %53

83:                                               ; preds = %69, %60
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.clk_div_table* @kcalloc(i32 %86, i32 8, i32 %87)
  store %struct.clk_div_table* %88, %struct.clk_div_table** %18, align 8
  %89 = load %struct.clk_div_table*, %struct.clk_div_table** %18, align 8
  %90 = icmp ne %struct.clk_div_table* %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  %94 = call %struct.clk_div_table* @ERR_PTR(i32 %93)
  %95 = load %struct.clk_div_table**, %struct.clk_div_table*** %13, align 8
  store %struct.clk_div_table* %94, %struct.clk_div_table** %95, align 8
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %143

98:                                               ; preds = %83
  store i32 0, i32* %14, align 4
  %99 = load i32*, i32** %12, align 8
  store i32 0, i32* %99, align 4
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %133, %98
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %136

104:                                              ; preds = %100
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %104
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.clk_div_table*, %struct.clk_div_table** %18, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %117, i64 %119
  %121 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %120, i32 0, i32 0
  store i32 %116, i32* %121, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.clk_div_table*, %struct.clk_div_table** %18, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %123, i64 %125
  %127 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %126, i32 0, i32 1
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32*, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %111, %104
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %100

136:                                              ; preds = %100
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @fls(i32 %138)
  %140 = load i32*, i32** %12, align 8
  store i32 %139, i32* %140, align 4
  %141 = load %struct.clk_div_table*, %struct.clk_div_table** %18, align 8
  %142 = load %struct.clk_div_table**, %struct.clk_div_table*** %13, align 8
  store %struct.clk_div_table* %141, %struct.clk_div_table** %142, align 8
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %136, %91, %47
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @fls(i32) #1

declare dso_local %struct.clk_div_table* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.clk_div_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
