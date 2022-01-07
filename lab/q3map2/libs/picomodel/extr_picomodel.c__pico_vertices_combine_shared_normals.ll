; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c__pico_vertices_combine_shared_normals.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c__pico_vertices_combine_shared_normals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_17__ = type { i64*, i64* }
%struct.TYPE_15__ = type { float**, i64* }

@lessSmoothVertex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_pico_vertices_combine_shared_normals(float** %0, i64* %1, float** %2, i64 %3) #0 {
  %5 = alloca float**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store float** %0, float*** %5, align 8
  store i64* %1, i64** %6, align 8
  store float** %2, float*** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %19 = load float**, float*** %5, align 8
  store float** %19, float*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %21 = load i64*, i64** %6, align 8
  store i64* %21, i64** %20, align 8
  %22 = load i32, i32* @lessSmoothVertex, align 4
  %23 = call i32 @UniqueIndices_init(%struct.TYPE_16__* %9, i32 %22, %struct.TYPE_15__* %11)
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @UniqueIndices_reserve(%struct.TYPE_16__* %9, i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @indexarray_reserve(%struct.TYPE_17__* %10, i64 %26)
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %59, %4
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = call i64 @UniqueIndices_size(%struct.TYPE_16__* %9)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i64 @UniqueIndices_insert(%struct.TYPE_16__* %9, i64 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load float**, float*** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds float*, float** %40, i64 %46
  %48 = load float*, float** %47, align 8
  store float* %48, float** %15, align 8
  %49 = load float*, float** %15, align 8
  %50 = load float**, float*** %7, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds float*, float** %50, i64 %51
  %53 = load float*, float** %52, align 8
  %54 = load float*, float** %15, align 8
  %55 = call i32 @_pico_add_vec(float* %49, float* %53, float* %54)
  br label %56

56:                                               ; preds = %39, %32
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @indexarray_push_back(%struct.TYPE_17__* %10, i64 %57)
  br label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %28

62:                                               ; preds = %28
  store i64 0, i64* %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  store i64* %64, i64** %17, align 8
  br label %65

65:                                               ; preds = %101, %62
  %66 = load i64*, i64** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = icmp ne i64* %66, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = load i64*, i64** %17, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp ule i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load float**, float*** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64*, i64** %17, align 8
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds float*, float** %76, i64 %83
  %85 = load float*, float** %84, align 8
  %86 = load float**, float*** %7, align 8
  %87 = load i64*, i64** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = ptrtoint i64* %87 to i64
  %91 = ptrtoint i64* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 8
  %94 = getelementptr inbounds float*, float** %86, i64 %93
  %95 = load float*, float** %94, align 8
  %96 = call i32 @_pico_copy_vec(float* %85, float* %95)
  br label %100

97:                                               ; preds = %70
  %98 = load i64*, i64** %17, align 8
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %16, align 8
  br label %100

100:                                              ; preds = %97, %75
  br label %101

101:                                              ; preds = %100
  %102 = load i64*, i64** %17, align 8
  %103 = getelementptr inbounds i64, i64* %102, i32 1
  store i64* %103, i64** %17, align 8
  br label %65

104:                                              ; preds = %65
  %105 = call i32 @UniqueIndices_destroy(%struct.TYPE_16__* %9)
  %106 = call i32 @indexarray_clear(%struct.TYPE_17__* %10)
  ret void
}

declare dso_local i32 @UniqueIndices_init(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @UniqueIndices_reserve(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @indexarray_reserve(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @UniqueIndices_size(%struct.TYPE_16__*) #1

declare dso_local i64 @UniqueIndices_insert(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @_pico_add_vec(float*, float*, float*) #1

declare dso_local i32 @indexarray_push_back(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @_pico_copy_vec(float*, float*) #1

declare dso_local i32 @UniqueIndices_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @indexarray_clear(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
