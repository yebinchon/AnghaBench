; ModuleID = '/home/carl/AnghaBench/git/extr_lockfile.c_lock_file_timeout.c'
source_filename = "/home/carl/AnghaBench/git/extr_lockfile.c_lock_file_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }

@lock_file_timeout.random_initialized = internal global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@INITIAL_BACKOFF_MS = common dso_local global i32 0, align 4
@BACKOFF_MAX_MULTIPLIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lock_file*, i8*, i32, i64)* @lock_file_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_file_timeout(%struct.lock_file* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lock_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.lock_file* %0, %struct.lock_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @lock_file(%struct.lock_file* %19, i8* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %90

23:                                               ; preds = %4
  %24 = load i32, i32* @lock_file_timeout.random_initialized, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = call i64 (...) @getpid()
  %28 = trunc i64 %27 to i32
  %29 = call i32 @srand(i32 %28)
  store i32 1, i32* @lock_file_timeout.random_initialized, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i64, i64* %9, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %33, %30
  br label %36

36:                                               ; preds = %35, %89
  %37 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @lock_file(%struct.lock_file* %37, i8* %38, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %5, align 4
  br label %90

45:                                               ; preds = %36
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EEXIST, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %90

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %12, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %90

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @INITIAL_BACKOFF_MS, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %13, align 8
  %64 = call i32 (...) @rand()
  %65 = srem i32 %64, 500
  %66 = add nsw i32 750, %65
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %13, align 8
  %69 = mul nsw i64 %67, %68
  %70 = sdiv i64 %69, 1000
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @sleep_millisec(i64 %71)
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %12, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %12, align 8
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @BACKOFF_MAX_MULTIPLIER, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %59
  %85 = load i32, i32* @BACKOFF_MAX_MULTIPLIER, align 4
  store i32 %85, i32* %11, align 4
  br label %89

86:                                               ; preds = %59
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %86, %84
  br label %36

90:                                               ; preds = %56, %49, %43, %18
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @lock_file(%struct.lock_file*, i8*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @sleep_millisec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
