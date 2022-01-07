; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_putrequest_done.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_putrequest_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"That ain't funny\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"FAILED (timeout)\0A\00", align 1
@HTTP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"FAILED (response code)\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"FAILED (content type)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"FAILED (length %lu vs %lu)\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"FAILED (data)\0A\00", align 1
@test_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_putrequest_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i8*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.event_base*
  store %struct.event_base* %8, %struct.event_base** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %10 = icmp eq %struct.evhttp_request* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %2
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %17 = call i64 @evhttp_request_get_response_code(%struct.evhttp_request* %16)
  %18 = load i64, i64* @HTTP_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %15
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %26 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %25)
  %27 = call i32* @evhttp_find_header(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %24
  %34 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %35 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %34)
  %36 = call i64 @evbuffer_get_length(i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %43 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %42)
  %44 = call i64 @evbuffer_get_length(i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %44, i64 %46)
  %48 = call i32 @exit(i32 1) #3
  unreachable

49:                                               ; preds = %33
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %51 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %50)
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @evbuffer_datacmp(i32 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %49
  store i32 1, i32* @test_ok, align 4
  %60 = load %struct.event_base*, %struct.event_base** %5, align 8
  %61 = call i32 @event_base_loopexit(%struct.event_base* %60, i32* null)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evhttp_request_get_input_headers(%struct.evhttp_request*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @evhttp_request_get_input_buffer(%struct.evhttp_request*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @evbuffer_datacmp(i32, i8*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
