; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_human_readable_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-simulator.c_human_readable_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }

@human_readable_size.buff = internal global [32 x i8] zeroinitializer, align 16
@human_readable_size.a = internal constant [5 x %struct.anon] [%struct.anon { i32 40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i32 30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%.3lf%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @human_readable_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @human_readable_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @human_readable_size.buff, i64 0, i64 0), align 16
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @human_readable_size.a, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 16
  %14 = zext i32 %13 to i64
  %15 = shl i64 1, %14
  %16 = icmp sge i64 %8, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %7
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @human_readable_size.a, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = call i32 @safe_div(i64 %18, i64 %25)
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @human_readable_size.a, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @human_readable_size.buff, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %27, i8* %32)
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 32
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %42

38:                                               ; preds = %7
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %17, %4
  %43 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @human_readable_size.buff, i64 0, i64 0), align 16
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %2, align 8
  %47 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @human_readable_size.buff, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 32
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %45, %42
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @human_readable_size.buff, i64 0, i64 0)
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @safe_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
