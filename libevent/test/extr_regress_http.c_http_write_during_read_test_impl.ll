; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_write_during_read_test_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_write_during_read_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }
%struct.timeval = type { i32 }
%struct.evhttp = type { i32 }

@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@test_ok = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@EVUTIL_INVALID_SOCKET = common dso_local global i64 0, align 8
@EV_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"GET /large HTTP/1.1\0D\0AHost: somehost\0D\0A\0D\0A\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@http_write_during_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_write_during_read_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_write_during_read_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.basic_test_data*
  store %struct.basic_test_data* %13, %struct.basic_test_data** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HTTP_BIND_SSL, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call %struct.evhttp* @http_setup(i32* %6, i32 %16, i32 %23)
  store %struct.evhttp* %24, %struct.evhttp** %11, align 8
  store i64 0, i64* @test_ok, align 8
  %25 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %26 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @exit_base, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @EVUTIL_INVALID_SOCKET, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @tt_assert(i32 %33)
  %35 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %36 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %9, align 8
  %39 = call %struct.bufferevent* @create_bev(i32 %37, i64 %38, i32 0)
  store %struct.bufferevent* %39, %struct.bufferevent** %7, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %41 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %42 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bufferevent_setcb(%struct.bufferevent* %40, i32* null, i32* null, i32* null, i32 %43)
  %45 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %46 = load i32, i32* @EV_READ, align 4
  %47 = call i32 @bufferevent_disable(%struct.bufferevent* %45, i32 %46)
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %48 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @bufferevent_write(%struct.bufferevent* %48, i8* %49, i32 %51)
  %53 = call i32 @evutil_timerclear(%struct.timeval* %8)
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10000, i32* %54, align 4
  %55 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %56 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EV_TIMEOUT, align 4
  %59 = load i32, i32* @http_write_during_read, align 4
  %60 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %61 = call i32 @event_base_once(i32 %57, i32 -1, i32 %58, i32 %59, %struct.bufferevent* %60, %struct.timeval* %8)
  %62 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %63 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @event_base_dispatch(i32 %64)
  br label %66

66:                                               ; preds = %22
  %67 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %68 = icmp ne %struct.bufferevent* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %71 = call i32 @bufferevent_free(%struct.bufferevent* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.evhttp*, %struct.evhttp** %11, align 8
  %74 = icmp ne %struct.evhttp* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.evhttp*, %struct.evhttp** %11, align 8
  %77 = call i32 @evhttp_free(%struct.evhttp* %76)
  br label %78

78:                                               ; preds = %75, %72
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local i64 @http_connect(i8*, i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local %struct.bufferevent* @create_bev(i32, i64, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.bufferevent*, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
