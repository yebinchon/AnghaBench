; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_get_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i32 }

@hash_st = common dso_local global i32* null, align 8
@entry_buffer = common dso_local global %struct.TYPE_2__* null, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_entry(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** @hash_st, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @GET_ENTRY_ID(i64 %9)
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %49, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %17, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %26, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %25
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @strncmp(i8* %35, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %34, %25, %16
  %46 = phi i1 [ true, %25 ], [ true, %16 ], [ %44, %34 ]
  br label %47

47:                                               ; preds = %45, %13
  %48 = phi i1 [ false, %13 ], [ %46, %45 ]
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %13

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @entry_buffer, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %67 = call i64 @get_utime(i32 %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @del_entry(i32 %70)
  store i32 -1, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %59, %56
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i64 @GET_ENTRY_ID(i64) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i64 @get_utime(i32) #1

declare dso_local i32 @del_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
