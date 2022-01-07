; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_no_overflow_parse_url.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_no_overflow_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"http://example.com:8001\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"\0A*** test_no_overflow_parse_url invalid return value=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\0A*** test_no_overflow_parse_url invalid port number=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_no_overflow_parse_url() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.http_parser_url, align 4
  %3 = call i32 @http_parser_url_init(%struct.http_parser_url* %2)
  %4 = call i32 @http_parser_parse_url(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 22, i32 0, %struct.http_parser_url* %2)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = call i32 (...) @abort() #3
  unreachable

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 800
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = call i32 (...) @abort() #3
  unreachable

22:                                               ; preds = %12
  ret void
}

declare dso_local i32 @http_parser_url_init(%struct.http_parser_url*) #1

declare dso_local i32 @http_parser_parse_url(i8*, i32, i32, %struct.http_parser_url*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

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
