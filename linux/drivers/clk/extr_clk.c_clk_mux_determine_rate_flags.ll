; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_mux_determine_rate_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_mux_determine_rate_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_core* }
%struct.clk_core = type { i32, i32, i32*, %struct.clk_core* }
%struct.clk_rate_request = type { i64, i64, i32* }

@CLK_SET_RATE_NO_REPARENT = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_mux_determine_rate_flags(%struct.clk_hw* %0, %struct.clk_rate_request* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.clk_rate_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_core*, align 8
  %9 = alloca %struct.clk_core*, align 8
  %10 = alloca %struct.clk_core*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.clk_rate_request, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 0
  %18 = load %struct.clk_core*, %struct.clk_core** %17, align 8
  store %struct.clk_core* %18, %struct.clk_core** %8, align 8
  store %struct.clk_core* null, %struct.clk_core** %10, align 8
  store i64 0, i64* %14, align 8
  %19 = load %struct.clk_rate_request*, %struct.clk_rate_request** %6, align 8
  %20 = bitcast %struct.clk_rate_request* %15 to i8*
  %21 = bitcast %struct.clk_rate_request* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  %23 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CLK_SET_RATE_NO_REPARENT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %3
  %29 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  %30 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %29, i32 0, i32 3
  %31 = load %struct.clk_core*, %struct.clk_core** %30, align 8
  store %struct.clk_core* %31, %struct.clk_core** %9, align 8
  %32 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  %33 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %40 = icmp ne %struct.clk_core* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %43 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32* [ %44, %41 ], [ null, %45 ]
  %48 = call i32 @__clk_determine_rate(i32* %47, %struct.clk_rate_request* %15)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  br label %149

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %14, align 8
  br label %68

56:                                               ; preds = %28
  %57 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %58 = icmp ne %struct.clk_core* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %61 = call i8* @clk_core_get_rate_nolock(%struct.clk_core* %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %14, align 8
  br label %67

63:                                               ; preds = %56
  %64 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  %65 = call i8* @clk_core_get_rate_nolock(%struct.clk_core* %64)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %68

68:                                               ; preds = %67, %53
  br label %133

69:                                               ; preds = %3
  %70 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  %71 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %123, %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %126

77:                                               ; preds = %73
  %78 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call %struct.clk_core* @clk_core_get_parent_by_index(%struct.clk_core* %78, i32 %79)
  store %struct.clk_core* %80, %struct.clk_core** %9, align 8
  %81 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %82 = icmp ne %struct.clk_core* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %123

84:                                               ; preds = %77
  %85 = load %struct.clk_core*, %struct.clk_core** %8, align 8
  %86 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.clk_rate_request*, %struct.clk_rate_request** %6, align 8
  %93 = bitcast %struct.clk_rate_request* %15 to i8*
  %94 = bitcast %struct.clk_rate_request* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false)
  %95 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %96 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @__clk_determine_rate(i32* %97, %struct.clk_rate_request* %15)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %123

102:                                              ; preds = %91
  br label %108

103:                                              ; preds = %84
  %104 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  %105 = call i8* @clk_core_get_rate_nolock(%struct.clk_core* %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %103, %102
  %109 = load %struct.clk_rate_request*, %struct.clk_rate_request** %6, align 8
  %110 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @mux_is_better_rate(i64 %111, i64 %113, i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.clk_core*, %struct.clk_core** %9, align 8
  store %struct.clk_core* %119, %struct.clk_core** %10, align 8
  %120 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %15, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %14, align 8
  br label %122

122:                                              ; preds = %118, %108
  br label %123

123:                                              ; preds = %122, %101, %83
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %73

126:                                              ; preds = %73
  %127 = load %struct.clk_core*, %struct.clk_core** %10, align 8
  %128 = icmp ne %struct.clk_core* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %149

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %68
  %134 = load %struct.clk_core*, %struct.clk_core** %10, align 8
  %135 = icmp ne %struct.clk_core* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.clk_core*, %struct.clk_core** %10, align 8
  %138 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.clk_rate_request*, %struct.clk_rate_request** %6, align 8
  %141 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  br label %142

142:                                              ; preds = %136, %133
  %143 = load i64, i64* %14, align 8
  %144 = load %struct.clk_rate_request*, %struct.clk_rate_request** %6, align 8
  %145 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load %struct.clk_rate_request*, %struct.clk_rate_request** %6, align 8
  %148 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %142, %129, %51
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__clk_determine_rate(i32*, %struct.clk_rate_request*) #2

declare dso_local i8* @clk_core_get_rate_nolock(%struct.clk_core*) #2

declare dso_local %struct.clk_core* @clk_core_get_parent_by_index(%struct.clk_core*, i32) #2

declare dso_local i64 @mux_is_better_rate(i64, i64, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
