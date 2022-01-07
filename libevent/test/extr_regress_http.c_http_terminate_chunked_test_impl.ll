; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_terminate_chunked_test_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_terminate_chunked_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }
%struct.timeval = type { i32 }
%struct.terminate_state = type { i64, i32, %struct.bufferevent*, i64, i32 }
%struct.evhttp = type { i32 }

@EVUTIL_INVALID_SOCKET = common dso_local global i64 0, align 8
@test_ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@terminate_chunked_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@terminate_readcb = common dso_local global i32 0, align 4
@http_writecb = common dso_local global i32 0, align 4
@http_errorcb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"GET /test HTTP/1.1\0D\0AHost: some\0D\0A\0D\0A\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@terminate_chunked_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_terminate_chunked_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_terminate_chunked_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.terminate_state, align 8
  %12 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.basic_test_data*
  store %struct.basic_test_data* %14, %struct.basic_test_data** %5, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load i64, i64* @EVUTIL_INVALID_SOCKET, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %17 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.evhttp* @http_setup(i32* %9, i32 %18, i32 0)
  store %struct.evhttp* %19, %struct.evhttp** %12, align 8
  store i64 0, i64* @test_ok, align 8
  %20 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %21 = call i32 @evhttp_del_cb(%struct.evhttp* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %23 = load i32, i32* @terminate_chunked_cb, align 4
  %24 = call i64 @evhttp_set_cb(%struct.evhttp* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.terminate_state* %11)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @tt_assert(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @EVUTIL_INVALID_SOCKET, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @tt_assert(i32 %33)
  %35 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %36 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call %struct.bufferevent* @bufferevent_socket_new(i32 %37, i64 %38, i32 0)
  store %struct.bufferevent* %39, %struct.bufferevent** %6, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %41 = load i32, i32* @terminate_readcb, align 4
  %42 = load i32, i32* @http_writecb, align 4
  %43 = load i32, i32* @http_errorcb, align 4
  %44 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %45 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bufferevent_setcb(%struct.bufferevent* %40, i32 %41, i32 %42, i32 %43, i32 %46)
  %48 = call i32 @memset(%struct.terminate_state* %11, i32 0, i32 40)
  %49 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %50 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 4
  store i32 %51, i32* %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 3
  store i64 %53, i64* %54, align 8
  %55 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %56 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 2
  store %struct.bufferevent* %55, %struct.bufferevent** %56, align 8
  %57 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %60 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @bufferevent_write(%struct.bufferevent* %60, i8* %61, i32 %63)
  %65 = call i32 @evutil_timerclear(%struct.timeval* %7)
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 10000, i32* %66, align 4
  %67 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %68 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EV_TIMEOUT, align 4
  %71 = load i32, i32* @terminate_chunked_client, align 4
  %72 = call i32 @event_base_once(i32 %69, i32 -1, i32 %70, i32 %71, %struct.terminate_state* %11, %struct.timeval* %7)
  %73 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %74 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @event_base_dispatch(i32 %75)
  %77 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %11, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %2
  store i64 0, i64* @test_ok, align 8
  br label %81

81:                                               ; preds = %80, %2
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %10, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @evutil_closesocket(i64 %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %90 = icmp ne %struct.evhttp* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %93 = call i32 @evhttp_free(%struct.evhttp* %92)
  br label %94

94:                                               ; preds = %91, %88
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local i32 @evhttp_del_cb(%struct.evhttp*, i8*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @evhttp_set_cb(%struct.evhttp*, i8*, i32, %struct.terminate_state*) #1

declare dso_local i64 @http_connect(i8*, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i64, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.terminate_state*, i32, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.terminate_state*, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
