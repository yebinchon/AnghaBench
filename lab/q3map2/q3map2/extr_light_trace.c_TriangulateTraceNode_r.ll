; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_TriangulateTraceNode_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_TriangulateTraceNode_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32*, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, i32, i32 }

@numTraceNodes = common dso_local global i32 0, align 4
@traceNodes = common dso_local global %struct.TYPE_12__* null, align 8
@traceWindings = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @TriangulateTraceNode_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TriangulateTraceNode_r(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @numTraceNodes, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %201

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @traceNodes, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %24
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %11, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @TriangulateTraceNode_r(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @TriangulateTraceNode_r(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %2, align 4
  br label %201

54:                                               ; preds = %21
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @free(i32* %69)
  br label %71

71:                                               ; preds = %66, %59
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %2, align 4
  br label %201

75:                                               ; preds = %54
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %10, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 %84, 2
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 24
  %93 = trunc i64 %92 to i32
  %94 = call i32* @safe_malloc(i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 4
  store i32* %94, i32** %96, align 8
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %188, %75
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %191

101:                                              ; preds = %97
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @traceWindings, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %108
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %12, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 0
  %121 = bitcast %struct.TYPE_9__* %116 to i8*
  %122 = bitcast %struct.TYPE_9__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 4, i1 false)
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %184, %101
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %187

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = bitcast %struct.TYPE_9__* %133 to i8*
  %141 = bitcast %struct.TYPE_9__* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 4, i1 false)
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 2
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 %150
  %152 = bitcast %struct.TYPE_9__* %144 to i8*
  %153 = bitcast %struct.TYPE_9__* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %152, i8* align 4 %153, i64 4, i1 false)
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @VectorSubtract(i32 %158, i32 %163, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 2
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @VectorSubtract(i32 %171, i32 %176, i32 %178)
  %180 = call i32 @AddTraceTriangle(%struct.TYPE_11__* %13)
  store i32 %180, i32* %6, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @AddItemToTraceNode(%struct.TYPE_12__* %181, i32 %182)
  br label %184

184:                                              ; preds = %130
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %123

187:                                              ; preds = %123
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %97

191:                                              ; preds = %97
  %192 = load i32*, i32** %10, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @free(i32* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %2, align 4
  br label %201

201:                                              ; preds = %197, %71, %30, %20
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @safe_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @AddTraceTriangle(%struct.TYPE_11__*) #1

declare dso_local i32 @AddItemToTraceNode(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
