; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_curl_trace.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_curl_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trace_curl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"== Info: %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"=> Send header\00", align 1
@trace_curl_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"=> Send data\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"=> Send SSL data\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"<= Recv header\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"<= Recv data\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"<= Recv SSL data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64, i8*)* @curl_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curl_trace(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %63 [
    i32 128, label %14
    i32 131, label %17
    i32 133, label %22
    i32 129, label %31
    i32 132, label %40
    i32 134, label %45
    i32 130, label %54
  ]

14:                                               ; preds = %5
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @trace_printf_key(i32* @trace_curl, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %64

17:                                               ; preds = %5
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @curl_dump_header(i8* %18, i8* %19, i64 %20, i32 1)
  br label %64

22:                                               ; preds = %5
  %23 = load i32, i32* @trace_curl_data, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @curl_dump_data(i8* %26, i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %25, %22
  br label %64

31:                                               ; preds = %5
  %32 = load i32, i32* @trace_curl_data, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @curl_dump_data(i8* %35, i8* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %31
  br label %64

40:                                               ; preds = %5
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @curl_dump_header(i8* %41, i8* %42, i64 %43, i32 0)
  br label %64

45:                                               ; preds = %5
  %46 = load i32, i32* @trace_curl_data, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @curl_dump_data(i8* %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %64

54:                                               ; preds = %5
  %55 = load i32, i32* @trace_curl_data, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @curl_dump_data(i8* %58, i8* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %64

63:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %65

64:                                               ; preds = %62, %53, %40, %39, %30, %17, %14
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @trace_printf_key(i32*, i8*, i8*) #1

declare dso_local i32 @curl_dump_header(i8*, i8*, i64, i32) #1

declare dso_local i32 @curl_dump_data(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
