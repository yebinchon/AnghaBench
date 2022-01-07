; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_request_extra_body_test.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_request_extra_body_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }
%struct.evhttp = type { i32 }
%struct.evbuffer = type { i32 }

@http_timeout_cb = common dso_local global i32 0, align 4
@exit_base = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"this is the body that HEAD should not have\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"HEAD /timeout HTTP/1.1\0D\0AHost: somehost\0D\0AConnection: close\0D\0AContent-Length: %i\0D\0A\0D\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"HEAD /__gencb__ HTTP/1.1\0D\0AHost: somehost\0D\0AConnection: close\0D\0AContent-Length: %i\0D\0A\0D\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_request_extra_body_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_request_extra_body_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.evhttp*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.basic_test_data*
  store %struct.basic_test_data* %10, %struct.basic_test_data** %3, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %12 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @http_timeout_cb, align 4
  %15 = call %struct.evhttp* @http_setup_gencb(i32* %5, i32 %13, i32 0, i32 %14, i32* null)
  store %struct.evhttp* %15, %struct.evhttp** %7, align 8
  store %struct.evbuffer* null, %struct.evbuffer** %8, align 8
  %16 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %17 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @exit_base, align 4
  store i32 0, i32* @test_ok, align 4
  %19 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %19, %struct.evbuffer** %8, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %26, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 10000
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %25 = call i32 @evbuffer_add_printf(%struct.evbuffer* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %31 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %35 = call i64 @evbuffer_get_length(%struct.evbuffer* %34)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %38 = call i32 @evbuffer_pullup(%struct.evbuffer* %37, i32 -1)
  %39 = call i32 @http_run_bev_request(i32 %32, i32 %33, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  %40 = load i32, i32* @test_ok, align 4
  %41 = icmp eq i32 %40, -2
  %42 = zext i1 %41 to i32
  %43 = call i32 @tt_assert(i32 %42)
  %44 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %45 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %49 = call i64 @evbuffer_get_length(%struct.evbuffer* %48)
  %50 = trunc i64 %49 to i32
  %51 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %52 = call i32 @evbuffer_pullup(%struct.evbuffer* %51, i32 -1)
  %53 = call i32 @http_run_bev_request(i32 %46, i32 %47, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i32, i32* @test_ok, align 4
  %55 = icmp eq i32 %54, -2
  %56 = zext i1 %55 to i32
  %57 = call i32 @tt_assert(i32 %56)
  br label %58

58:                                               ; preds = %29
  %59 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %60 = call i32 @evhttp_free(%struct.evhttp* %59)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %62 = icmp ne %struct.bufferevent* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %65 = call i32 @bufferevent_free(%struct.bufferevent* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %68 = icmp ne %struct.evbuffer* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %71 = call i32 @evbuffer_free(%struct.evbuffer* %70)
  br label %72

72:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.evhttp* @http_setup_gencb(i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*) #1

declare dso_local i32 @http_run_bev_request(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
