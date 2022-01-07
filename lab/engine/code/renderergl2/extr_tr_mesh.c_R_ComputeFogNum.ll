; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_mesh.c_R_ComputeFogNum.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_mesh.c_R_ComputeFogNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@tr = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_ComputeFogNum(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 1, i32 0), align 8
  %12 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 %24
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %9, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = call i32 @VectorAdd(i32 %29, i32 %32, i64* %33)
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %103, %16
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %106

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @tr, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i64 %46
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %94, %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %97

51:                                               ; preds = %48
  %52 = load i64*, i64** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64**, i64*** %62, align 8
  %64 = getelementptr inbounds i64*, i64** %63, i64 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %60, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %97

72:                                               ; preds = %51
  %73 = load i64*, i64** %10, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64**, i64*** %83, align 8
  %85 = getelementptr inbounds i64*, i64** %84, i64 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %81, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %97

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %48

97:                                               ; preds = %92, %71, %48
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %107

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %35

106:                                              ; preds = %35
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %100, %15
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @VectorAdd(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
