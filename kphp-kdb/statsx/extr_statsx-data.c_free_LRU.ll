; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_free_LRU.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_free_LRU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { %struct.counter*, i32, %struct.counter*, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"free_LRU\0A\00", align 1
@Counters = common dso_local global %struct.counter** null, align 8
@counters_prime = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"first and last are %p and %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"No elements can be deleted by LRU. Failed to free mem.\0A\00", align 1
@deleted_by_lru = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_LRU() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.counter*, align 8
  %3 = alloca %struct.counter*, align 8
  %4 = load i32, i32* @verbosity, align 4
  %5 = icmp sge i32 %4, 3
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %0
  %10 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %11 = load i64, i64* @counters_prime, align 8
  %12 = getelementptr inbounds %struct.counter*, %struct.counter** %10, i64 %11
  %13 = load %struct.counter*, %struct.counter** %12, align 8
  %14 = icmp eq %struct.counter* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %101

16:                                               ; preds = %9
  %17 = load i32, i32* @verbosity, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %22 = load i64, i64* @counters_prime, align 8
  %23 = getelementptr inbounds %struct.counter*, %struct.counter** %21, i64 %22
  %24 = load %struct.counter*, %struct.counter** %23, align 8
  %25 = getelementptr inbounds %struct.counter, %struct.counter* %24, i32 0, i32 2
  %26 = load %struct.counter*, %struct.counter** %25, align 8
  %27 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %28 = load i64, i64* @counters_prime, align 8
  %29 = getelementptr inbounds %struct.counter*, %struct.counter** %27, i64 %28
  %30 = load %struct.counter*, %struct.counter** %29, align 8
  %31 = getelementptr inbounds %struct.counter, %struct.counter* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.counter* %26, i32 %32)
  br label %34

34:                                               ; preds = %19, %16
  %35 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %36 = load i64, i64* @counters_prime, align 8
  %37 = getelementptr inbounds %struct.counter*, %struct.counter** %35, i64 %36
  %38 = load %struct.counter*, %struct.counter** %37, align 8
  %39 = getelementptr inbounds %struct.counter, %struct.counter* %38, i32 0, i32 2
  %40 = load %struct.counter*, %struct.counter** %39, align 8
  %41 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %42 = load i64, i64* @counters_prime, align 8
  %43 = getelementptr inbounds %struct.counter*, %struct.counter** %41, i64 %42
  %44 = load %struct.counter*, %struct.counter** %43, align 8
  %45 = icmp eq %struct.counter* %40, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load i32, i32* @verbosity, align 4
  %48 = icmp sge i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %1, align 4
  br label %101

53:                                               ; preds = %34
  %54 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %55 = load i64, i64* @counters_prime, align 8
  %56 = getelementptr inbounds %struct.counter*, %struct.counter** %54, i64 %55
  %57 = load %struct.counter*, %struct.counter** %56, align 8
  %58 = getelementptr inbounds %struct.counter, %struct.counter* %57, i32 0, i32 2
  %59 = load %struct.counter*, %struct.counter** %58, align 8
  store %struct.counter* %59, %struct.counter** %2, align 8
  %60 = load %struct.counter*, %struct.counter** %2, align 8
  %61 = icmp ne %struct.counter* %60, null
  br i1 %61, label %62, label %100

62:                                               ; preds = %53
  %63 = load %struct.counter*, %struct.counter** %2, align 8
  %64 = getelementptr inbounds %struct.counter, %struct.counter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.counter* @get_counter_f(i32 %65, i32 0)
  store %struct.counter* %66, %struct.counter** %3, align 8
  br label %67

67:                                               ; preds = %78, %62
  %68 = load %struct.counter*, %struct.counter** %3, align 8
  %69 = icmp ne %struct.counter* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.counter*, %struct.counter** %3, align 8
  %72 = getelementptr inbounds %struct.counter, %struct.counter* %71, i32 0, i32 0
  %73 = load %struct.counter*, %struct.counter** %72, align 8
  %74 = load %struct.counter*, %struct.counter** %2, align 8
  %75 = icmp ne %struct.counter* %73, %74
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i1 [ false, %67 ], [ %75, %70 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = load %struct.counter*, %struct.counter** %3, align 8
  %80 = getelementptr inbounds %struct.counter, %struct.counter* %79, i32 0, i32 0
  %81 = load %struct.counter*, %struct.counter** %80, align 8
  store %struct.counter* %81, %struct.counter** %3, align 8
  br label %67

82:                                               ; preds = %76
  %83 = load %struct.counter*, %struct.counter** %3, align 8
  %84 = icmp ne %struct.counter* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.counter*, %struct.counter** %3, align 8
  %87 = getelementptr inbounds %struct.counter, %struct.counter* %86, i32 0, i32 0
  %88 = load %struct.counter*, %struct.counter** %87, align 8
  %89 = load %struct.counter*, %struct.counter** %2, align 8
  %90 = icmp eq %struct.counter* %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.counter*, %struct.counter** %3, align 8
  %94 = getelementptr inbounds %struct.counter, %struct.counter* %93, i32 0, i32 0
  store %struct.counter* null, %struct.counter** %94, align 8
  br label %95

95:                                               ; preds = %85, %82
  %96 = load %struct.counter*, %struct.counter** %2, align 8
  %97 = call i32 @free_counter(%struct.counter* %96, i32 1)
  %98 = load i32, i32* @deleted_by_lru, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @deleted_by_lru, align 4
  br label %100

100:                                              ; preds = %95, %53
  store i32 1, i32* %1, align 4
  br label %101

101:                                              ; preds = %100, %52, %15
  %102 = load i32, i32* %1, align 4
  ret i32 %102
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.counter* @get_counter_f(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_counter(%struct.counter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
