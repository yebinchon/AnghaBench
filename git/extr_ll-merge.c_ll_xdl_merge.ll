; ModuleID = '/home/carl/AnghaBench/git/extr_ll-merge.c_ll_xdl_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_ll-merge.c_ll_xdl_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_merge_driver = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.ll_merge_options = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i8*, i8*, i8*, i64, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@MAX_XDIFF_SIZE = common dso_local global i64 0, align 8
@XDL_MERGE_ZEALOUS = common dso_local global i32 0, align 4
@git_xmerge_style = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_merge_driver*, i32*, i8*, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i8*, %struct.ll_merge_options*, i32)* @ll_xdl_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_xdl_merge(%struct.ll_merge_driver* %0, i32* %1, i8* %2, %struct.TYPE_17__* %3, i8* %4, %struct.TYPE_17__* %5, i8* %6, %struct.TYPE_17__* %7, i8* %8, %struct.ll_merge_options* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ll_merge_driver*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.ll_merge_options*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_16__, align 8
  store %struct.ll_merge_driver* %0, %struct.ll_merge_driver** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %16, align 8
  store i8* %4, i8** %17, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %18, align 8
  store i8* %6, i8** %19, align 8
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %20, align 8
  store i8* %8, i8** %21, align 8
  store %struct.ll_merge_options* %9, %struct.ll_merge_options** %22, align 8
  store i32 %10, i32* %23, align 4
  %25 = load %struct.ll_merge_options*, %struct.ll_merge_options** %22, align 8
  %26 = call i32 @assert(%struct.ll_merge_options* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_XDIFF_SIZE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %71, label %32

32:                                               ; preds = %11
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAX_XDIFF_SIZE, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %71, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_XDIFF_SIZE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %71, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @buffer_is_binary(i32 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @buffer_is_binary(i32 %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @buffer_is_binary(i32 %65, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %62, %53, %44, %38, %32, %11
  %72 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %13, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %80 = load i8*, i8** %21, align 8
  %81 = load %struct.ll_merge_options*, %struct.ll_merge_options** %22, align 8
  %82 = load i32, i32* %23, align 4
  %83 = call i32 @ll_binary_merge(%struct.ll_merge_driver* %72, i32* %73, i8* %74, %struct.TYPE_17__* %75, i8* %76, %struct.TYPE_17__* %77, i8* %78, %struct.TYPE_17__* %79, i8* %80, %struct.ll_merge_options* %81, i32 %82)
  store i32 %83, i32* %12, align 4
  br label %120

84:                                               ; preds = %62
  %85 = call i32 @memset(%struct.TYPE_16__* %24, i32 0, i32 56)
  %86 = load i32, i32* @XDL_MERGE_ZEALOUS, align 4
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 7
  store i32 %86, i32* %87, align 8
  %88 = load %struct.ll_merge_options*, %struct.ll_merge_options** %22, align 8
  %89 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 6
  store i32 %90, i32* %91, align 4
  %92 = load %struct.ll_merge_options*, %struct.ll_merge_options** %22, align 8
  %93 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* @git_xmerge_style, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %84
  %100 = load i64, i64* @git_xmerge_style, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 4
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %84
  %103 = load i32, i32* %23, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %23, align 4
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i8*, i8** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  %111 = load i8*, i8** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  store i8* %111, i8** %112, align 8
  %113 = load i8*, i8** %21, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  store i8* %113, i8** %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @xdl_merge(%struct.TYPE_17__* %115, %struct.TYPE_17__* %116, %struct.TYPE_17__* %117, %struct.TYPE_16__* %24, i32* %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %108, %71
  %121 = load i32, i32* %12, align 4
  ret i32 %121
}

declare dso_local i32 @assert(%struct.ll_merge_options*) #1

declare dso_local i64 @buffer_is_binary(i32, i64) #1

declare dso_local i32 @ll_binary_merge(%struct.ll_merge_driver*, i32*, i8*, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i8*, %struct.TYPE_17__*, i8*, %struct.ll_merge_options*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @xdl_merge(%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
