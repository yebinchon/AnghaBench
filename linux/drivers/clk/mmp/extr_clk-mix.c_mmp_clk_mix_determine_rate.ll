; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c_mmp_clk_mix_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }
%struct.mmp_clk_mix = type { i32, %struct.mmp_clk_mix_clk_table* }
%struct.mmp_clk_mix_clk_table = type { i64, i32, i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @mmp_clk_mix_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_clk_mix_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.mmp_clk_mix*, align 8
  %7 = alloca %struct.mmp_clk_mix_clk_table*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %20 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %21 = call %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw* %20)
  store %struct.mmp_clk_mix* %21, %struct.mmp_clk_mix** %6, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %22 = load i64, i64* @ULONG_MAX, align 8
  store i64 %22, i64* %15, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %9, align 8
  %23 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %24 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %23, i32 0, i32 1
  %25 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %24, align 8
  %26 = icmp ne %struct.mmp_clk_mix_clk_table* %25, null
  br i1 %26, label %27, label %85

27:                                               ; preds = %2
  store i32 0, i32* %18, align 4
  br label %28

28:                                               ; preds = %81, %27
  %29 = load i32, i32* %18, align 4
  %30 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %31 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %28
  %35 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %36 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %35, i32 0, i32 1
  %37 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %36, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %37, i64 %39
  store %struct.mmp_clk_mix_clk_table* %40, %struct.mmp_clk_mix_clk_table** %7, align 8
  %41 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %7, align 8
  %42 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %81

46:                                               ; preds = %34
  %47 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %48 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %7, align 8
  %49 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %47, i32 %50)
  store %struct.clk_hw* %51, %struct.clk_hw** %8, align 8
  %52 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %53 = call i64 @clk_hw_get_rate(%struct.clk_hw* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.mmp_clk_mix_clk_table*, %struct.mmp_clk_mix_clk_table** %7, align 8
  %56 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, %struct.mmp_clk_mix_clk_table* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = udiv i64 %54, %57
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %61 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %59, %62
  %64 = call i64 @abs(i64 %63)
  store i64 %64, i64* %14, align 8
  %65 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %66 = icmp ne %struct.clk_hw* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %46
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %46
  %72 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  store %struct.clk_hw* %72, %struct.clk_hw** %9, align 8
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %11, align 8
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %142

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %67
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %18, align 4
  br label %28

84:                                               ; preds = %28
  br label %141

85:                                               ; preds = %2
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %137, %85
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %89 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %88)
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %140

91:                                               ; preds = %86
  %92 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %92, i32 %93)
  store %struct.clk_hw* %94, %struct.clk_hw** %8, align 8
  %95 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %96 = call i64 @clk_hw_get_rate(%struct.clk_hw* %95)
  store i64 %96, i64* %10, align 8
  %97 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %98 = call i32 @_get_maxdiv(%struct.mmp_clk_mix* %97)
  store i32 %98, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %99

99:                                               ; preds = %133, %91
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %99
  %104 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %6, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @_get_div(%struct.mmp_clk_mix* %104, i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* %17, align 4
  %109 = zext i32 %108 to i64
  %110 = udiv i64 %107, %109
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %113 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %111, %114
  %116 = call i64 @abs(i64 %115)
  store i64 %116, i64* %14, align 8
  %117 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %118 = icmp ne %struct.clk_hw* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %103
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %15, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119, %103
  %124 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  store %struct.clk_hw* %124, %struct.clk_hw** %9, align 8
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %11, align 8
  store i64 %126, i64* %12, align 8
  %127 = load i64, i64* %14, align 8
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %142

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %119
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %19, align 4
  br label %99

136:                                              ; preds = %99
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %86

140:                                              ; preds = %86
  br label %141

141:                                              ; preds = %140, %84
  br label %142

142:                                              ; preds = %141, %130, %78
  %143 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %144 = icmp ne %struct.clk_hw* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %158

148:                                              ; preds = %142
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %151 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %153 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %154 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %153, i32 0, i32 2
  store %struct.clk_hw* %152, %struct.clk_hw** %154, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %157 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %148, %145
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.mmp_clk_mix* @to_clk_mix(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @_get_maxdiv(%struct.mmp_clk_mix*) #1

declare dso_local i32 @_get_div(%struct.mmp_clk_mix*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
