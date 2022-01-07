; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_FilterTraceWindingIntoNodes_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_FilterTraceWindingIntoNodes_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@numTraceNodes = common dso_local global i32 0, align 4
@traceNodes = common dso_local global %struct.TYPE_13__* null, align 8
@headNodeNum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid tracenode: %d\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @FilterTraceWindingIntoNodes_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FilterTraceWindingIntoNodes_r(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @numTraceNodes, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  br label %169

19:                                               ; preds = %14
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @traceNodes, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 %22
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %9, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %163

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @headNodeNum, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PlaneFromPoints(i32 %35, i32 %41, i32 %47, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %32
  br label %169

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64*, i64** %6, align 8
  %80 = call i32 @Vector4Copy(i32 %78, i64* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i64*, i64** %7, align 8
  %85 = call i32 @Vector4Copy(i32 %83, i64* %84)
  %86 = load i32, i32* @vec3_origin, align 4
  %87 = load i64*, i64** %7, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = call i32 @VectorSubtract(i32 %86, i64* %87, i64* %88)
  %90 = load i64*, i64** %7, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 3
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 0, %92
  %94 = load i64*, i64** %8, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 3
  store i64 %93, i64* %95, align 8
  %96 = load i64*, i64** %6, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = call float @DotProduct(i64* %96, i64* %97)
  %99 = fcmp ogt float %98, 0x3FEFF7CEE0000000
  br i1 %99, label %100, label %117

100:                                              ; preds = %75
  %101 = load i64*, i64** %6, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 3
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = call float @fabs(i64 %107)
  %109 = fcmp olt float %108, 0x3F50624DE0000000
  br i1 %109, label %110, label %117

110:                                              ; preds = %100
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  call void @FilterTraceWindingIntoNodes_r(%struct.TYPE_12__* %111, i32 %116)
  br label %169

117:                                              ; preds = %100, %75
  %118 = load i64*, i64** %6, align 8
  %119 = load i64*, i64** %8, align 8
  %120 = call float @DotProduct(i64* %118, i64* %119)
  %121 = fcmp ogt float %120, 0x3FEFF7CEE0000000
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load i64*, i64** %6, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 3
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 3
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = call float @fabs(i64 %129)
  %131 = fcmp olt float %130, 0x3F50624DE0000000
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  call void @FilterTraceWindingIntoNodes_r(%struct.TYPE_12__* %133, i32 %138)
  br label %169

139:                                              ; preds = %122, %117
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = load i64*, i64** %6, align 8
  %142 = call i32 @ClipTraceWinding(%struct.TYPE_12__* %140, i64* %141, %struct.TYPE_12__* %10, %struct.TYPE_12__* %11)
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %144, 3
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  call void @FilterTraceWindingIntoNodes_r(%struct.TYPE_12__* %10, i32 %151)
  br label %152

152:                                              ; preds = %146, %139
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sge i32 %154, 3
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  call void @FilterTraceWindingIntoNodes_r(%struct.TYPE_12__* %11, i32 %161)
  br label %162

162:                                              ; preds = %156, %152
  br label %169

163:                                              ; preds = %19
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %165 = call i32 @AddTraceWinding(%struct.TYPE_12__* %164)
  store i32 %165, i32* %5, align 4
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @AddItemToTraceNode(%struct.TYPE_13__* %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %162, %132, %110, %56, %18
  ret void
}

declare dso_local i32 @PlaneFromPoints(i32, i32, i32, i32) #1

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i32 @Vector4Copy(i32, i64*) #1

declare dso_local i32 @VectorSubtract(i32, i64*, i64*) #1

declare dso_local float @DotProduct(i64*, i64*) #1

declare dso_local float @fabs(i64) #1

declare dso_local i32 @ClipTraceWinding(%struct.TYPE_12__*, i64*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @AddTraceWinding(%struct.TYPE_12__*) #1

declare dso_local i32 @AddItemToTraceNode(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
