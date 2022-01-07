; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gstorage.c_set_data_metrics.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gstorage.c_set_data_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i64, float, float, float, i32, i64, i64, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@conf = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_data_metrics(%struct.TYPE_18__* %0, %struct.TYPE_18__** %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %3, i32* %14, align 4
  %15 = bitcast %struct.TYPE_17__* %5 to i8*
  %16 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call float @get_percentage(i32 %18, i64 %21)
  store float %22, float* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call float @get_percentage(i32 %24, i64 %27)
  store float %28, float* %11, align 4
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call float @get_percentage(i32 %30, i64 %34)
  store float %35, float* %12, align 4
  %36 = call %struct.TYPE_18__* (...) @new_gmetrics()
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %9, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load float, float* %10, align 4
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %54, label %55

54:                                               ; preds = %4
  br label %57

55:                                               ; preds = %4
  %56 = load float, float* %10, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi float [ 0.000000e+00, %54 ], [ %56, %55 ]
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  store float %58, float* %60, align 8
  %61 = load float, float* %12, align 4
  %62 = fcmp olt float %61, 0.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %66

64:                                               ; preds = %57
  %65 = load float, float* %12, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi float [ 0.000000e+00, %63 ], [ %65, %64 ]
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  store float %67, float* %69, align 4
  %70 = load float, float* %11, align 4
  %71 = fcmp olt float %70, 0.000000e+00
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %75

73:                                               ; preds = %66
  %74 = load float, float* %11, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi float [ 0.000000e+00, %72 ], [ %74, %73 ]
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 4
  store float %76, float* %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 11
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @conf, i32 0, i32 2), align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %75
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  br label %115

115:                                              ; preds = %93, %88, %75
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @conf, i32 0, i32 1), align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 7
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %123, %118, %115
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @conf, i32 0, i32 0), align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 6
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %137, %132, %129
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %150 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %150, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @get_percentage(i32, i64) #2

declare dso_local %struct.TYPE_18__* @new_gmetrics(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
