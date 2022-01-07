; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_gfx3d_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_gfx3d_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, %struct.clk_hw* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_gfx3d_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_gfx3d_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_rate_request, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca %struct.clk_hw*, align 8
  %10 = alloca %struct.clk_hw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %13 = bitcast %struct.clk_rate_request* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %14, i32 0)
  store %struct.clk_hw* %15, %struct.clk_hw** %10, align 8
  %16 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %17 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %20 = call i64 @clk_hw_get_rate(%struct.clk_hw* %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.clk_hw*, %struct.clk_hw** %10, align 8
  %24 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %25 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %24, i32 0, i32 2
  store %struct.clk_hw* %23, %struct.clk_hw** %25, align 8
  store i32 0, i32* %3, align 4
  br label %110

26:                                               ; preds = %2
  %27 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %28 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %27, i32 2)
  store %struct.clk_hw* %28, %struct.clk_hw** %9, align 8
  %29 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %30 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %29, i32 3)
  store %struct.clk_hw* %30, %struct.clk_hw** %7, align 8
  %31 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %32 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %31, i32 4)
  store %struct.clk_hw* %32, %struct.clk_hw** %8, align 8
  %33 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %34 = call i64 @clk_hw_get_rate(%struct.clk_hw* %33)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %36 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @min(i64 %37, i64 %38)
  %40 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %41 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %6, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %44 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %26
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %51 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %53 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  %54 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %55 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %56 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %55, i32 0, i32 2
  store %struct.clk_hw* %54, %struct.clk_hw** %56, align 8
  store i32 0, i32* %3, align 4
  br label %110

57:                                               ; preds = %26
  %58 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %59 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %58, i32 0, i32 2
  %60 = load %struct.clk_hw*, %struct.clk_hw** %59, align 8
  %61 = load %struct.clk_hw*, %struct.clk_hw** %9, align 8
  %62 = icmp eq %struct.clk_hw* %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %65 = call i64 @clk_hw_get_rate(%struct.clk_hw* %64)
  %66 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %67 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %72 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %73 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %72, i32 0, i32 2
  store %struct.clk_hw* %71, %struct.clk_hw** %73, align 8
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %76 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %77 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %76, i32 0, i32 2
  store %struct.clk_hw* %75, %struct.clk_hw** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %94

79:                                               ; preds = %57
  %80 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %81 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %80, i32 0, i32 2
  %82 = load %struct.clk_hw*, %struct.clk_hw** %81, align 8
  %83 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %84 = icmp eq %struct.clk_hw* %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %87 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %88 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %87, i32 0, i32 2
  store %struct.clk_hw* %86, %struct.clk_hw** %88, align 8
  br label %93

89:                                               ; preds = %79
  %90 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %91 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %92 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %91, i32 0, i32 2
  store %struct.clk_hw* %90, %struct.clk_hw** %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %96 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %95, i32 0, i32 2
  %97 = load %struct.clk_hw*, %struct.clk_hw** %96, align 8
  %98 = call i32 @__clk_determine_rate(%struct.clk_hw* %97, %struct.clk_rate_request* %6)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %3, align 4
  br label %110

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %6, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %107 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %109 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %108, i32 0, i32 0
  store i64 %105, i64* %109, align 8
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %103, %101, %48, %22
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #2

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @__clk_determine_rate(%struct.clk_hw*, %struct.clk_rate_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
