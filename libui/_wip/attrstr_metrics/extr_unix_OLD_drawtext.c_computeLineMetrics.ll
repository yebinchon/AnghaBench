; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD_drawtext.c_computeLineMetrics.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD_drawtext.c_computeLineMetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"uiDrawTextLayoutLineMetrics[] (text layout)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @computeLineMetrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeLineMetrics(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 96
  %20 = trunc i64 %19 to i32
  %21 = call i64 @uiAlloc(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %22 = inttoptr i64 %21 to %struct.TYPE_12__*
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @pango_layout_get_iter(i32 %27)
  store i32* %28, i32** %3, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %115, %1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %118

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @pango_layout_iter_get_baseline(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = call %struct.TYPE_15__* @pango_layout_iter_get_line_readonly(i32* %39)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %4, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pango_layout_index_to_pos(i32 %43, i32 %46, %struct.TYPE_14__* %5)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = call i32 @pango_layout_line_get_extents(%struct.TYPE_15__* %48, i32* null, %struct.TYPE_14__* %6)
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @pangoToCairo(i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 11
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = bitcast { i64, i32 }* %11 to i8*
  %57 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 12, i1 false)
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %59 = load i64, i64* %58, align 4
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PANGO_ASCENT(i64 %59, i32 %61)
  %63 = sub nsw i32 %55, %62
  %64 = call i8* @pangoToCairo(i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 10
  store i8* %64, i8** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @pangoToCairo(i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 9
  store i8* %69, i8** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @pangoToCairo(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @pangoToCairo(i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = bitcast { i64, i32 }* %12 to i8*
  %82 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 4 %82, i64 12, i1 false)
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %84 = load i64, i64* %83, align 4
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @PANGO_ASCENT(i64 %84, i32 %86)
  %88 = call i8* @pangoToCairo(i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 6
  store i8* %88, i8** %90, align 8
  %91 = bitcast { i64, i32 }* %13 to i8*
  %92 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 12, i1 false)
  %93 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 4
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @PANGO_DESCENT(i64 %94, i32 %96)
  %98 = call i8* @pangoToCairo(i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @pango_layout_iter_next_line(i32* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 1
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %9, align 8
  br label %115

115:                                              ; preds = %36
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %32

118:                                              ; preds = %32
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @pango_layout_iter_free(i32* %119)
  ret void
}

declare dso_local i64 @uiAlloc(i32, i8*) #1

declare dso_local i32* @pango_layout_get_iter(i32) #1

declare dso_local i32 @pango_layout_iter_get_baseline(i32*) #1

declare dso_local %struct.TYPE_15__* @pango_layout_iter_get_line_readonly(i32*) #1

declare dso_local i32 @pango_layout_index_to_pos(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @pango_layout_line_get_extents(%struct.TYPE_15__*, i32*, %struct.TYPE_14__*) #1

declare dso_local i8* @pangoToCairo(i32) #1

declare dso_local i32 @PANGO_ASCENT(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PANGO_DESCENT(i64, i32) #1

declare dso_local i32 @pango_layout_iter_next_line(i32*) #1

declare dso_local i32 @pango_layout_iter_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
