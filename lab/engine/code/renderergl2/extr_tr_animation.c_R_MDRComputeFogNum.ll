; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_R_MDRComputeFogNum.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_R_MDRComputeFogNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32* }

@tr = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_MDRComputeFogNum(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 1, i32 0), align 8
  %13 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

17:                                               ; preds = %2
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* null, i32 0, i32 2), align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = ptrtoint i32* %22 to i64
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = bitcast %struct.TYPE_15__* %25 to i32*
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  %40 = bitcast i32* %39 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %9, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = call i32 @VectorAdd(i32 %44, i32 %47, i64* %48)
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %118, %17
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %121

56:                                               ; preds = %50
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i64 %61
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %109, %56
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %112

66:                                               ; preds = %63
  %67 = load i64*, i64** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64**, i64*** %77, align 8
  %79 = getelementptr inbounds i64*, i64** %78, i64 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %75, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %66
  br label %112

87:                                               ; preds = %66
  %88 = load i64*, i64** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64**, i64*** %98, align 8
  %100 = getelementptr inbounds i64*, i64** %99, i64 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp sle i64 %96, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %87
  br label %112

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %63

112:                                              ; preds = %107, %86, %63
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %122

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %50

121:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %115, %16
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @VectorAdd(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
