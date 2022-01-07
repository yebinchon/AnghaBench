; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_no_overflow_long_body.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_no_overflow_long_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_REQUEST = common dso_local global i32 0, align 4
@HTTP_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s\0D\0AConnection: Keep-Alive\0D\0AContent-Length: %lu\0D\0A\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"POST / HTTP/1.0\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"HTTP/1.0 200 OK\00", align 1
@settings_null = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"\0A*** error in test_no_overflow_long_body %s of length %lu ***\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"REQUEST\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"RESPONSE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_no_overflow_long_body(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [3000 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @HTTP_REQUEST, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @HTTP_RESPONSE, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = call i32 @http_parser_init(i32* %5, i32 %18)
  %20 = getelementptr inbounds [3000 x i8], [3000 x i8]* %8, i64 0, i64 0
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @sprintf(i8* %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = getelementptr inbounds [3000 x i8], [3000 x i8]* %8, i64 0, i64 0
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @http_parser_execute(i32* %5, i32* @settings_null, i8* %27, i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %57

34:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  store i8 97, i8* %10, align 1
  %40 = call i64 @http_parser_execute(i32* %5, i32* @settings_null, i8* %10, i64 1)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %57

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %35

48:                                               ; preds = %35
  %49 = getelementptr inbounds [3000 x i8], [3000 x i8]* %8, i64 0, i64 0
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @http_parser_execute(i32* %5, i32* @settings_null, i8* %49, i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %57

56:                                               ; preds = %48
  ret void

57:                                               ; preds = %55, %43, %33
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %62, i64 %63)
  %65 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @http_parser_init(i32*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i64) #1

declare dso_local i64 @http_parser_execute(i32*, i32*, i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
