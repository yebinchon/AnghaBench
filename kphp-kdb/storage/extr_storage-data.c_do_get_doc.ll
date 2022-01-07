; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_do_get_doc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_do_get_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }

@STORAGE_ERR_UNKNOWN_VOLUME_ID = common dso_local global i32 0, align 4
@STORAGE_ERR_WRONG_SECRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_get_doc(i64 %0, i32 %1, i64 %2, %struct.TYPE_5__** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call %struct.TYPE_5__* @get_volume_f(i64 %16, i32 0)
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %18, align 8
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @STORAGE_ERR_UNKNOWN_VOLUME_ID, align 4
  store i32 %23, i32* %7, align 4
  br label %109

24:                                               ; preds = %6
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i64*, i64** %12, align 8
  %30 = call i32 @doc_lookup(%struct.TYPE_5__* %26, i32 %27, i64 %28, i64* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %109

35:                                               ; preds = %24
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %108

38:                                               ; preds = %35
  %39 = load i64*, i64** %12, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @doc_lookup(%struct.TYPE_5__* %49, i32 %51, i64 0, i64* %15)
  store i32 %52, i32* %14, align 4
  br label %92

53:                                               ; preds = %38
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = call i32 @pthread_mutex_lock(i32* %56)
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  %69 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @doc_lookup(%struct.TYPE_5__* %70, i32 %72, i64 0, i64* %15)
  store i32 %73, i32* %14, align 4
  br label %91

74:                                               ; preds = %53
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %75, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %15, align 8
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = call i32 @pthread_mutex_unlock(i32* %89)
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %74, %64
  br label %92

92:                                               ; preds = %91, %47
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @STORAGE_ERR_WRONG_SECRET, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95, %92
  %100 = load i64, i64* %15, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %100, %102
  %104 = sub i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %13, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %99, %95
  br label %108

108:                                              ; preds = %107, %35
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %33, %22
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_5__* @get_volume_f(i64, i32) #1

declare dso_local i32 @doc_lookup(%struct.TYPE_5__*, i32, i64, i64*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
