; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgcs_detr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgcs_detr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }

@INT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*, i32, i32)* @alchemy_clk_fgcs_detr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_clk_fgcs_detr(%struct.clk_hw* %0, %struct.clk_rate_request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.clk_rate_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca %struct.clk_hw*, align 8
  %12 = alloca %struct.clk_hw*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load i64, i64* @INT_MAX, align 8
  store i64 %22, i64* %20, align 8
  store i64 0, i64* %18, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %11, align 8
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %17, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %12, align 8
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %90, %4
  %26 = load i32, i32* %21, align 4
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %93

28:                                               ; preds = %25
  %29 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %30 = load i32, i32* %21, align 4
  %31 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %29, i32 %30)
  store %struct.clk_hw* %31, %struct.clk_hw** %10, align 8
  %32 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %33 = icmp ne %struct.clk_hw* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %93

35:                                               ; preds = %28
  %36 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %37 = call i32 @clk_hw_is_prepared(%struct.clk_hw* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %41 = icmp ne %struct.clk_hw* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  store %struct.clk_hw* %43, %struct.clk_hw** %12, align 8
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %35
  %46 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %47 = call i64 @clk_hw_get_rate(%struct.clk_hw* %46)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %50 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %90

54:                                               ; preds = %45
  %55 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %56 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @alchemy_calc_div(i64 %57, i64 %58, i32 %59, i32 %60, i32* null)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sdiv i64 %62, %63
  store i64 %64, i64* %16, align 8
  %65 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %66 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %16, align 8
  %69 = sub nsw i64 %67, %68
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %72 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %90

76:                                               ; preds = %54
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* %20, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i64, i64* %19, align 8
  store i64 %81, i64* %20, align 8
  %82 = load i64, i64* %15, align 8
  store i64 %82, i64* %18, align 8
  %83 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  store %struct.clk_hw* %83, %struct.clk_hw** %11, align 8
  %84 = load i64, i64* %16, align 8
  store i64 %84, i64* %17, align 8
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i64, i64* %19, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %93

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %75, %53
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %21, align 4
  br label %25

93:                                               ; preds = %88, %34, %25
  %94 = load i64, i64* %20, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %165

96:                                               ; preds = %93
  %97 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %98 = icmp ne %struct.clk_hw* %97, null
  br i1 %98, label %99, label %165

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %102
  %106 = phi i32 [ 1, %102 ], [ %104, %103 ]
  store i32 %106, i32* %21, align 4
  br label %107

107:                                              ; preds = %160, %105
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %164

111:                                              ; preds = %107
  %112 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %113 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %114, %116
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %14, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %164

121:                                              ; preds = %111
  %122 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i64 @clk_hw_round_rate(%struct.clk_hw* %122, i64 %123)
  store i64 %124, i64* %15, align 8
  %125 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %126 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @alchemy_calc_div(i64 %127, i64 %128, i32 %129, i32 %130, i32* null)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* %13, align 8
  %134 = sdiv i64 %132, %133
  store i64 %134, i64* %16, align 8
  %135 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %136 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %16, align 8
  %139 = sub nsw i64 %137, %138
  store i64 %139, i64* %19, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %142 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %121
  br label %160

146:                                              ; preds = %121
  %147 = load i64, i64* %19, align 8
  %148 = load i64, i64* %20, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i64, i64* %19, align 8
  store i64 %151, i64* %20, align 8
  %152 = load i64, i64* %15, align 8
  store i64 %152, i64* %18, align 8
  %153 = load %struct.clk_hw*, %struct.clk_hw** %12, align 8
  store %struct.clk_hw* %153, %struct.clk_hw** %11, align 8
  %154 = load i64, i64* %16, align 8
  store i64 %154, i64* %17, align 8
  br label %155

155:                                              ; preds = %150, %146
  %156 = load i64, i64* %19, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %164

159:                                              ; preds = %155
  br label %160

160:                                              ; preds = %159, %145
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %21, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %21, align 4
  br label %107

164:                                              ; preds = %158, %120, %107
  br label %165

165:                                              ; preds = %164, %96, %93
  %166 = load i64, i64* %17, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i64, i64* %17, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %5, align 4
  br label %181

171:                                              ; preds = %165
  %172 = load i64, i64* %18, align 8
  %173 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %174 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %176 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %177 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %176, i32 0, i32 2
  store %struct.clk_hw* %175, %struct.clk_hw** %177, align 8
  %178 = load i64, i64* %17, align 8
  %179 = load %struct.clk_rate_request*, %struct.clk_rate_request** %7, align 8
  %180 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %171, %168
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @clk_hw_is_prepared(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @alchemy_calc_div(i64, i64, i32, i32, i32*) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
