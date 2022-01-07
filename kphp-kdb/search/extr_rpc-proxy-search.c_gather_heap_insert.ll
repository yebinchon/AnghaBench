; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_gather_heap_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_rpc-proxy-search.c_gather_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Bad result: bytes = %d\0A\00", align 1
@TL_SEARCH_RESULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Bad result: data = %d\0A\00", align 1
@GH_E = common dso_local global %struct.TYPE_5__* null, align 8
@GH_N = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Bad result: H->n = %d\0A\00", align 1
@GH_total = common dso_local global i32 0, align 4
@GH_mode = common dso_local global i32 0, align 4
@FLAG_SORT = common dso_local global i32 0, align 4
@FLAG_GROUP_HASH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Bad result: size = %d, H->remaining = %d, bytes = %d\0A\00", align 1
@GH_n = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"gather_heap_insert: %d elements (size %d)\0A\00", align 1
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
  br label %161

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load i32, i32* @TL_SEARCH_RESULT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 -1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %3, align 4
  br label %161

27:                                               ; preds = %16
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @GH_E, align 8
  %29 = load i64, i64* @GH_N, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %6, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %4, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %27
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 -1, i32* %3, align 4
  br label %161

50:                                               ; preds = %40
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %4, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32, i32* @GH_total, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @GH_total, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %4, align 8
  %58 = load i32, i32* %56, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GH_mode, align 4
  %65 = load i32, i32* @FLAG_SORT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = add nsw i32 %63, %69
  %71 = load i32, i32* @GH_mode, align 4
  %72 = load i32, i32* @FLAG_GROUP_HASH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 2, i32 0
  %77 = add nsw i32 %70, %76
  store i32 %77, i32* %7, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %80, %81
  %83 = mul nsw i32 %82, 4
  %84 = add nsw i32 %83, 16
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %50
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %91, i32 %92)
  store i32 -1, i32* %3, align 4
  br label %161

94:                                               ; preds = %50
  %95 = load i32, i32* @GH_n, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* @GH_n, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = sub nsw i32 %108, 16
  %110 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %161

116:                                              ; preds = %104
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i32* %117, i32** %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = call i32 @load_heap_v(%struct.TYPE_5__* %120)
  %122 = load i64, i64* @GH_N, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* @GH_N, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %8, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %10, align 8
  br label %128

128:                                              ; preds = %144, %116
  %129 = load i32, i32* %8, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %155

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %132, 1
  store i32 %133, i32* %9, align 4
  %134 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %134, i64 %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = icmp ule i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  br label %155

144:                                              ; preds = %131
  %145 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %145, i64 %147
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %150, i64 %152
  store %struct.TYPE_5__* %149, %struct.TYPE_5__** %153, align 8
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %8, align 4
  br label %128

155:                                              ; preds = %143, %128
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @GH, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %157, i64 %159
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %160, align 8
  store i32 1, i32* %3, align 4
  br label %161

161:                                              ; preds = %155, %115, %87, %45, %22, %13
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @load_heap_v(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
