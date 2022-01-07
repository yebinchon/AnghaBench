; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c_omap2_dpll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c_omap2_dpll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"clock: %s: starting DPLL round_rate, target rate %lu\0A\00", align 1
@DPLL_SCALE_FACTOR = common dso_local global i64 0, align 8
@DPLL_FINT_UNDERFLOW = common dso_local global i32 0, align 4
@DPLL_FINT_INVALID = common dso_local global i32 0, align 4
@DPLL_MULT_UNDERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"clock: %s: m = %d: n = %d: new_rate = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"clock: %s: cannot round to rate %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap2_dpll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_hw_omap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dpll_data*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %22 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %23 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %22)
  store %struct.clk_hw_omap* %23, %struct.clk_hw_omap** %8, align 8
  %24 = load i32, i32* @INT_MAX, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @INT_MAX, align 4
  store i32 %25, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %26 = load i64, i64* @LONG_MAX, align 8
  store i64 %26, i64* %20, align 8
  %27 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %28 = icmp ne %struct.clk_hw_omap* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %31 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %30, i32 0, i32 0
  %32 = load %struct.dpll_data*, %struct.dpll_data** %31, align 8
  %33 = icmp ne %struct.dpll_data* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %3
  store i64 -1, i64* %4, align 8
  br label %170

35:                                               ; preds = %29
  %36 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %37 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %36, i32 0, i32 0
  %38 = load %struct.dpll_data*, %struct.dpll_data** %37, align 8
  store %struct.dpll_data* %38, %struct.dpll_data** %17, align 8
  %39 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %40 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %46 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %51 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %49, %43, %35
  %54 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %55 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @clk_hw_get_rate(i32 %56)
  store i64 %57, i64* %18, align 8
  %58 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %59 = call i8* @clk_hw_get_name(%struct.clk_hw* %58)
  store i8* %59, i8** %21, align 8
  %60 = load i8*, i8** %21, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 (i8*, i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %61)
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* @DPLL_SCALE_FACTOR, align 8
  %66 = udiv i64 %64, %65
  %67 = udiv i64 %63, %66
  store i64 %67, i64* %15, align 8
  %68 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %69 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DPLL_SCALE_FACTOR, align 8
  %72 = mul i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  %74 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %75 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %77 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %144, %53
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %82 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %147

85:                                               ; preds = %79
  %86 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @_dpll_test_fint(%struct.clk_hw_omap* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @DPLL_FINT_UNDERFLOW, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %147

93:                                               ; preds = %85
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @DPLL_FINT_INVALID, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %144

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %15, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %100, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %147

109:                                              ; preds = %99
  %110 = load i32, i32* %10, align 4
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %18, align 8
  %113 = call i32 @_dpll_test_mult(i32* %9, i32 %110, i64* %16, i64 %111, i64 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @DPLL_MULT_UNDERFLOW, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %144

118:                                              ; preds = %109
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %16, align 8
  %121 = sub i64 %119, %120
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* %19, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %144

125:                                              ; preds = %118
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %20, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i64, i64* %19, align 8
  store i64 %130, i64* %20, align 8
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i8*, i8** %21, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %10, align 4
  %138 = load i64, i64* %16, align 8
  %139 = call i32 (i8*, i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %134, i64 %136, i32 %137, i64 %138)
  %140 = load i64, i64* %19, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %147

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %124, %117, %97
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %79

147:                                              ; preds = %142, %108, %92, %79
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* @LONG_MAX, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8*, i8** %21, align 8
  %153 = load i64, i64* %6, align 8
  %154 = call i32 (i8*, i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %152, i64 %153)
  store i64 -1, i64* %4, align 8
  br label %170

155:                                              ; preds = %147
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %158 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %161 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 4
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* %20, align 8
  %164 = sub i64 %162, %163
  %165 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %166 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  %167 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %168 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %4, align 8
  br label %170

170:                                              ; preds = %155, %151, %34
  %171 = load i64, i64* %4, align 8
  ret i64 %171
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(i32) #1

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i64, ...) #1

declare dso_local i32 @_dpll_test_fint(%struct.clk_hw_omap*, i32) #1

declare dso_local i32 @_dpll_test_mult(i32*, i32, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
