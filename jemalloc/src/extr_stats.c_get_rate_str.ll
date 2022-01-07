; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_stats.c_get_rate_str.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_stats.c_get_rate_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0.00%u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0.0%u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0.%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @get_rate_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rate_str(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  store i32 1, i32* %4, align 4
  br label %57

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @UINT64_MAX, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %20, %21
  %23 = icmp sge i32 %22, 1000
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %31, 10
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @malloc_snprintf(i8* %34, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %56

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %38, 100
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, i32, i8*, ...) @malloc_snprintf(i8* %41, i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %55

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %45, 1000
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i8*, i32, i8*, ...) @malloc_snprintf(i8* %48, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %54

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @malloc_snprintf(i8* %52, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %33
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
