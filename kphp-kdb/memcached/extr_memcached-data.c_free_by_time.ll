; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_free_by_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_free_by_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@time_st = common dso_local global i32* null, align 8
@last_del_time = common dso_local global i64 0, align 8
@MAX_TIME_GAP = common dso_local global i32 0, align 4
@TIME_TABLE_SIZE = common dso_local global i64 0, align 8
@entry_buffer = common dso_local global %struct.TYPE_2__* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"del entry %d by time (key = %s) gap = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_by_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %6 = call i32 @get_utime(i32 %5)
  %7 = call i32 @GET_TIME_ID(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** @time_st, align 8
  %9 = load i64, i64* @last_del_time, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %100, %1
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
  br i1 %42, label %43, label %101

43:                                               ; preds = %41
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %43
  %53 = load i64, i64* @verbosity, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @last_del_time, align 8
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %73, i32 %78)
  br label %80

80:                                               ; preds = %55, %52
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = call i32 @del_entry(i64 %87)
  br label %100

89:                                               ; preds = %43
  %90 = load i64, i64* @last_del_time, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* @last_del_time, align 8
  %92 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i64 0, i64* @last_del_time, align 8
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i32*, i32** @time_st, align 8
  %97 = load i64, i64* @last_del_time, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %80
  br label %12

101:                                              ; preds = %41
  ret void
}

declare dso_local i32 @GET_TIME_ID(i32) #1

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @del_entry(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
