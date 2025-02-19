; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_chunked_content_length_error.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_chunked_content_length_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HTTP_REQUEST = common dso_local global i32 0, align 4
@HTTP_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GET / HTTP/1.1\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"HTTP/1.1 200 OK\0D\0A\00", align 1
@settings_null = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Transfer-Encoding: chunked\0D\0AContent-Length: 1\0D\0A\0D\0A\00", align 1
@HPE_UNEXPECTED_CONTENT_LENGTH = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"\0A*** Error expected but none in chunked content-length test ***\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_chunked_content_length_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @HTTP_REQUEST, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @HTTP_RESPONSE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call i32 @http_parser_init(i32* %3, i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = call i64 @http_parser_execute(i32* %3, i32* @settings_null, i8* %20, i64 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = icmp eq i64 %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @http_parser_execute(i32* %3, i32* @settings_null, i8* %32, i64 %33)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %13
  %39 = call i64 @HTTP_PARSER_ERRNO(i32* %3)
  %40 = load i64, i64* @HPE_UNEXPECTED_CONTENT_LENGTH, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  ret void

44:                                               ; preds = %13
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32 (...) @abort() #3
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
