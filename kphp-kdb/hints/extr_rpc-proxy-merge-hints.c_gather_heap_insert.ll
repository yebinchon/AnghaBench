; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Bad result: bytes = %d\0A\00", align 1
@TL_VECTOR_TOTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Bad result: data = %08x\0A\00", align 1
@GH_E = common dso_local global %struct.TYPE_7__* null, align 8
@GH_N = common dso_local global i64 0, align 8
@GH_total = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Bad result: H->remaining = %d, bytes = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"gather_heap_insert: %d elements (size %d)\0A\00", align 1
@GH = common dso_local global %struct.TYPE_7__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @gather_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gather_heap_insert(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 12
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 -1, i32* %3, align 4
  br label %106

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* @TL_VECTOR_TOTAL, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 -1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %3, align 4
  br label %106

25:                                               ; preds = %14
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @GH_E, align 8
  %27 = load i64, i64* @GH_N, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %27
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %4, align 8
  %31 = load i32, i32* %29, align 4
  %32 = load i32, i32* @GH_total, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @GH_total, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %4, align 8
  %36 = load i32, i32* %34, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 4
  %43 = mul nsw i32 %42, 4
  %44 = add nsw i32 %43, 12
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %25
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51)
  store i32 -1, i32* %3, align 4
  br label %106

53:                                               ; preds = %25
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 12
  %59 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %106

65:                                               ; preds = %53
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = call i32 @load_heap_v(%struct.TYPE_7__* %69)
  %71 = load i64, i64* @GH_N, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* @GH_N, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %89, %65
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = call i64 @gh_entry_less(%struct.TYPE_7__* %84, %struct.TYPE_7__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %100

89:                                               ; preds = %77
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %90, i64 %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %95, i64 %97
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %98, align 8
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %7, align 4
  br label %74

100:                                              ; preds = %88, %74
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @GH, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %102, i64 %104
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %105, align 8
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %100, %64, %47, %20, %11
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_7__*) #1

declare dso_local i64 @gh_entry_less(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
