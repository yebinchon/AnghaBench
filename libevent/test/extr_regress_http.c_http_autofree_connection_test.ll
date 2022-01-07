; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_autofree_connection_test.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_autofree_connection_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_request_empty_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"itis\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_autofree_connection_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_autofree_connection_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca [2 x %struct.evhttp_request*], align 16
  %7 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.basic_test_data*
  store %struct.basic_test_data* %9, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  %10 = bitcast [2 x %struct.evhttp_request*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %12 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.evhttp* @http_setup(i32* %4, i32 %13, i32 0)
  store %struct.evhttp* %14, %struct.evhttp** %7, align 8
  store i64 0, i64* @test_ok, align 8
  %15 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %16 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %17, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.evhttp_connection* %19, %struct.evhttp_connection** %5, align 8
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %21 = call i32 @tt_assert(%struct.evhttp_connection* %20)
  %22 = load i32, i32* @http_request_empty_done, align 4
  %23 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %24 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.evhttp_request* @evhttp_request_new(i32 %22, i32 %25)
  %27 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  store %struct.evhttp_request* %26, %struct.evhttp_request** %27, align 16
  %28 = load i32, i32* @http_request_empty_done, align 4
  %29 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %30 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.evhttp_request* @evhttp_request_new(i32 %28, i32 %31)
  %33 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  store %struct.evhttp_request* %32, %struct.evhttp_request** %33, align 8
  %34 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %34, align 16
  %36 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %35)
  %37 = call i32 @evhttp_add_header(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %39 = load %struct.evhttp_request*, %struct.evhttp_request** %38, align 16
  %40 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %39)
  %41 = call i32 @evhttp_add_header(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %42 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %43 = load %struct.evhttp_request*, %struct.evhttp_request** %42, align 16
  %44 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %43)
  %45 = call i32 @evhttp_add_header(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %46 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %47 = load %struct.evhttp_request*, %struct.evhttp_request** %46, align 8
  %48 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %47)
  %49 = call i32 @evhttp_add_header(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %50 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %51 = load %struct.evhttp_request*, %struct.evhttp_request** %50, align 8
  %52 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %51)
  %53 = call i32 @evhttp_add_header(i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %54 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %55 = load %struct.evhttp_request*, %struct.evhttp_request** %54, align 8
  %56 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %55)
  %57 = call i32 @evhttp_add_header(i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %58 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %59 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %60 = load %struct.evhttp_request*, %struct.evhttp_request** %59, align 16
  %61 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %62 = call i32 @evhttp_make_request(%struct.evhttp_connection* %58, %struct.evhttp_request* %60, i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %1
  %65 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %1
  %67 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %68 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %69 = load %struct.evhttp_request*, %struct.evhttp_request** %68, align 8
  %70 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %71 = call i32 @evhttp_make_request(%struct.evhttp_connection* %67, %struct.evhttp_request* %69, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %66
  %76 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %77 = call i32 @evhttp_connection_free_on_completion(%struct.evhttp_connection* %76)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  %78 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %79 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @event_base_dispatch(i32 %80)
  %82 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %83 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %82, i32 0, i32 0
  %84 = call i32* @TAILQ_FIRST(i32* %83)
  %85 = icmp eq i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to %struct.evhttp_connection*
  %89 = call i32 @tt_assert(%struct.evhttp_connection* %88)
  br label %90

90:                                               ; preds = %75
  %91 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %92 = icmp ne %struct.evhttp_connection* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %95 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %98 = icmp ne %struct.evhttp* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %101 = call i32 @evhttp_free(%struct.evhttp* %100)
  br label %102

102:                                              ; preds = %99, %96
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #2

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #2

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #2

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32) #2

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #2

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #2

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #2

declare dso_local i32 @tt_abort_msg(i8*) #2

declare dso_local i32 @evhttp_connection_free_on_completion(%struct.evhttp_connection*) #2

declare dso_local i32 @event_base_dispatch(i32) #2

declare dso_local i32* @TAILQ_FIRST(i32*) #2

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #2

declare dso_local i32 @evhttp_free(%struct.evhttp*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
