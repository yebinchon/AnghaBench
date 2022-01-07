; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_free_by_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_free_by_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [23 x i8] c"free_by_time: mx = %d\0A\00", align 1
@time_st = common dso_local global i32* null, align 8
@last_del_time = common dso_local global i64 0, align 8
@MAX_TIME_GAP = common dso_local global i32 0, align 4
@TIME_TABLE_SIZE = common dso_local global i64 0, align 8
@entry_buffer = common dso_local global %struct.TYPE_5__* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"del entry %p by time(key = %s) gap = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_by_time(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 (...) @get_double_time_since_epoch()
  %9 = call i32 @GET_TIME_ID(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** @time_st, align 8
  %11 = load i64, i64* @last_del_time, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %101, %1
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @last_del_time, align 8
  %18 = sub i64 %16, %17
  %19 = load i32, i32* @MAX_TIME_GAP, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %18, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* @last_del_time, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %23, %25
  %27 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %28 = load i32, i32* @MAX_TIME_GAP, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 %27, %29
  %31 = icmp ugt i64 %26, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %2, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* @last_del_time, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %37, %39
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br label %43

43:                                               ; preds = %41, %22, %14
  %44 = phi i1 [ true, %22 ], [ true, %14 ], [ %42, %41 ]
  br i1 %44, label %45, label %102

45:                                               ; preds = %43
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @entry_buffer, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @assert(%struct.TYPE_5__* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = icmp ne %struct.TYPE_5__* %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %45
  %60 = load i32, i32* @verbosity, align 4
  %61 = icmp sge i32 %60, 4
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @last_del_time, align 8
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %66, i8* %71, i32 %76)
  br label %78

78:                                               ; preds = %62, %59
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @do_pmemcached_delete(i8* %83, i32 %88)
  br label %101

90:                                               ; preds = %45
  %91 = load i64, i64* @last_del_time, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* @last_del_time, align 8
  %93 = load i64, i64* @TIME_TABLE_SIZE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i64 0, i64* @last_del_time, align 8
  br label %96

96:                                               ; preds = %95, %90
  %97 = load i32*, i32** @time_st, align 8
  %98 = load i64, i64* @last_del_time, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %78
  br label %14

102:                                              ; preds = %43
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @GET_TIME_ID(i32) #1

declare dso_local i32 @get_double_time_since_epoch(...) #1

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @do_pmemcached_delete(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
