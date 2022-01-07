; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_negative_content_length_test.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_negative_content_length_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_request_bad = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"X-Negative\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"makeitso\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_negative_content_length_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_negative_content_length_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.basic_test_data*
  store %struct.basic_test_data* %9, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %6, align 8
  %10 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.evhttp* @http_setup(i32* %4, i32 %12, i32 0)
  store %struct.evhttp* %13, %struct.evhttp** %7, align 8
  store i64 0, i64* @test_ok, align 8
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %16, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  store %struct.evhttp_connection* %18, %struct.evhttp_connection** %5, align 8
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %20 = call i32 @tt_assert(%struct.evhttp_connection* %19)
  %21 = load i32, i32* @http_request_bad, align 4
  %22 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %23 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.evhttp_request* @evhttp_request_new(i32 %21, i32 %24)
  store %struct.evhttp_request* %25, %struct.evhttp_request** %6, align 8
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %27 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %26)
  %28 = call i32 @evhttp_add_header(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %30 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %31 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %32 = call i32 @evhttp_make_request(%struct.evhttp_connection* %29, %struct.evhttp_request* %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %1
  %37 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %38 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @event_base_dispatch(i32 %39)
  br label %41

41:                                               ; preds = %36
  %42 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %43 = icmp ne %struct.evhttp_connection* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %46 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %49 = icmp ne %struct.evhttp* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %52 = call i32 @evhttp_free(%struct.evhttp* %51)
  br label %53

53:                                               ; preds = %50, %47
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
