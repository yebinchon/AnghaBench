; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_get_vector_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_get_vector_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }

@vector_hash_prime = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_7__** null, align 8
@tot_vectors = common dso_local global i32 0, align 4
@tot_counters_arrays = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @get_vector_f(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @vector_hash_prime, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %12, i64 %14
  store %struct.TYPE_7__** %15, %struct.TYPE_7__*** %7, align 8
  br label %16

16:                                               ; preds = %53, %2
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 %46
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %47, align 8
  br label %51

48:                                               ; preds = %28
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = call i32 @del_use(%struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %48, %35
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %3, align 8
  br label %85

53:                                               ; preds = %20
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store %struct.TYPE_7__** %55, %struct.TYPE_7__*** %7, align 8
  br label %16

56:                                               ; preds = %16
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load i32, i32* @tot_vectors, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @tot_vectors, align 4
  %62 = load i32, i32* @tot_counters_arrays, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @tot_counters_arrays, align 4
  %64 = call %struct.TYPE_7__* @zmalloc0(i32 16)
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %8, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = call i32 @add_use_front(%struct.TYPE_7__* %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @H, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %82
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %3, align 8
  br label %85

84:                                               ; preds = %56
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %85

85:                                               ; preds = %84, %59, %51
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %86
}

declare dso_local i32 @del_use(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @zmalloc0(i32) #1

declare dso_local i32 @add_use_front(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
