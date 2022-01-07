; ModuleID = '/home/carl/AnghaBench/libevent/extr_evutil_time.c_evutil_date_rfc1123.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evutil_time.c_evutil_date_rfc1123.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i32, i32, i32, i64, i32 }

@evutil_date_rfc1123.DAYS = internal global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"Sun\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Mon\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Tue\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Wed\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Thu\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Fri\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Sat\00", align 1
@evutil_date_rfc1123.MONTHS = internal global [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"%s, %02d %s %4d %02d:%02d:%02d GMT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_date_rfc1123(i8* %0, i64 %1, %struct.tm* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.tm* %2, %struct.tm** %6, align 8
  %9 = call i32 @time(i32* null)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.tm*, %struct.tm** %6, align 8
  %11 = icmp eq %struct.tm* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @gmtime_r(i32* %7, %struct.tm* %8)
  store %struct.tm* %8, %struct.tm** %6, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.tm*, %struct.tm** %6, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* @evutil_date_rfc1123.DAYS, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.tm*, %struct.tm** %6, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tm*, %struct.tm** %6, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [12 x i8*], [12 x i8*]* @evutil_date_rfc1123.MONTHS, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.tm*, %struct.tm** %6, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 1900, %32
  %34 = load %struct.tm*, %struct.tm** %6, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tm*, %struct.tm** %6, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tm*, %struct.tm** %6, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @evutil_snprintf(i8* %15, i64 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %21, i32 %24, i8* %29, i64 %33, i32 %36, i32 %39, i32 %42)
  ret i32 %43
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @evutil_snprintf(i8*, i64, i8*, i8*, i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
