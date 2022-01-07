; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_invalid_header_content.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_invalid_header_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_REQUEST = common dso_local global i32 0, align 4
@HTTP_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GET / HTTP/1.1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"HTTP/1.1 200 OK\0D\0A\00", align 1
@settings_null = common dso_local global i32 0, align 4
@HPE_INVALID_HEADER_TOKEN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"\0A*** Error expected but none in invalid header content test ***\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_invalid_header_content(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @HTTP_REQUEST, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @HTTP_RESPONSE, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = call i32 @http_parser_init(i32* %5, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = call i64 @http_parser_execute(i32* %5, i32* @settings_null, i8* %22, i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp eq i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @http_parser_execute(i32* %5, i32* @settings_null, i8* %35, i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %15
  %42 = call i64 @HTTP_PARSER_ERRNO(i32* %5)
  %43 = load i64, i64* @HPE_INVALID_HEADER_TOKEN, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  ret void

47:                                               ; preds = %15
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @http_parser_init(i32*, i32) #1

declare dso_local i64 @http_parser_execute(i32*, i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @HTTP_PARSER_ERRNO(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

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
