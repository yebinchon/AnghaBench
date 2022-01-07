; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Bad result: bytes = %d\0A\00", align 1
@TL_MAYBE_FALSE = common dso_local global i32 0, align 4
@TL_MAYBE_TRUE = common dso_local global i32 0, align 4
@TL_VECTOR_TOTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad result: data = %d\0A\00", align 1
@GH_E = common dso_local global %struct.TYPE_5__* null, align 8
@GH_N = common dso_local global i64 0, align 8
@GH_total = common dso_local global i32 0, align 4
@GH_mode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Bad result: size = %d, H->remaining = %d, bytes = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"gather_heap_insert: %d elements (size %d)\0A\00", align 1
@GH = common dso_local global %struct.TYPE_5__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @gather_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_heap_insert(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %3, align 4
  br label %135

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %135

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %4, align 8
  %35 = load i32, i32* %33, align 4
  %36 = load i32, i32* @TL_VECTOR_TOTAL, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 -1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %3, align 4
  br label %135

43:                                               ; preds = %32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GH_E, align 8
  %45 = load i64, i64* @GH_N, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %6, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  %49 = load i32, i32* %47, align 4
  %50 = load i32, i32* @GH_total, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* @GH_total, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %4, align 8
  %54 = load i32, i32* %52, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @GH_mode, align 4
  %58 = and i32 %57, 8
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 2
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %64, %65
  %67 = mul nsw i32 %66, 4
  %68 = add nsw i32 %67, 12
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %43
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75, i32 %76)
  store i32 -1, i32* %3, align 4
  br label %135

78:                                               ; preds = %43
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 12
  %84 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %135

90:                                               ; preds = %78
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = call i32 @load_heap_v(%struct.TYPE_5__* %94)
  %96 = load i64, i64* @GH_N, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* @GH_N, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %8, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %10, align 8
  br label %102

102:                                              ; preds = %118, %90
  %103 = load i32, i32* %8, align 4
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %9, align 4
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %108, i64 %110
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp ule i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %129

118:                                              ; preds = %105
  %119 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %119, i64 %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %124, i64 %126
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %127, align 8
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %8, align 4
  br label %102

129:                                              ; preds = %117, %102
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %131 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %131, i64 %133
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %134, align 8
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %129, %89, %71, %38, %21, %13
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
