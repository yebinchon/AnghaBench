; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_free_by_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_free_by_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@time_st = common dso_local global %struct.TYPE_5__** null, align 8
@last_del_time = common dso_local global i64 0, align 8
@MAX_TIME_GAP = common dso_local global i32 0, align 4
@TIME_TABLE_SIZE = common dso_local global i64 0, align 8
@my_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"del entry %p by time (key = %d) gap = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_by_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %6 = call i32 @get_utime(i32 %5)
  %7 = call i32 @GET_TIME_ID(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @time_st, align 8
  %9 = load i64, i64* @last_del_time, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %8, i64 %9
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  br label %12

12:                                               ; preds = %84, %1
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @last_del_time, align 8
  %16 = sub i64 %14, %15
  %17 = load i32, i32* @MAX_TIME_GAP, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %12
  %21 = load i64, i64* @last_del_time, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 %21, %23
  %25 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %26 = load i32, i32* @MAX_TIME_GAP, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %25, %27
  %29 = icmp ugt i64 %24, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %2, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* @last_del_time, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %35, %37
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  br label %41

41:                                               ; preds = %39, %20, %12
  %42 = phi i1 [ true, %20 ], [ true, %12 ], [ %40, %39 ]
  br i1 %42, label %43, label %85

43:                                               ; preds = %41
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = icmp ne %struct.TYPE_5__* %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i32, i32* @my_verbosity, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @last_del_time, align 8
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %56, i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %52, %49
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @del_wkey(%struct.TYPE_5__* %71)
  br label %84

73:                                               ; preds = %43
  %74 = load i64, i64* @last_del_time, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* @last_del_time, align 8
  %76 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i64 0, i64* @last_del_time, align 8
  br label %79

79:                                               ; preds = %78, %73
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @time_st, align 8
  %81 = load i64, i64* @last_del_time, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %80, i64 %81
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %4, align 8
  br label %84

84:                                               ; preds = %79, %68
  br label %12

85:                                               ; preds = %41
  ret void
}

declare dso_local i32 @GET_TIME_ID(i32) #1

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @del_wkey(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
