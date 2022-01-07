; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_terminate_chunked_trickle_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_terminate_chunked_trickle_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminate_state = type { %struct.terminate_state*, i32, i32 }
%struct.evbuffer = type { i32 }
%struct.timeval = type { i32, i64 }

@test_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @terminate_chunked_trickle_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_chunked_trickle_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.terminate_state*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca %struct.timeval, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.terminate_state*
  store %struct.terminate_state* %11, %struct.terminate_state** %7, align 8
  %12 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %13 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %19 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @evhttp_request_get_connection(i32 %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  store i32 1, i32* @test_ok, align 4
  %24 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %25 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @evhttp_request_free(i32 %26)
  %28 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %29 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %28, i32 0, i32 0
  %30 = load %struct.terminate_state*, %struct.terminate_state** %29, align 8
  %31 = call i32 @event_base_loopexit(%struct.terminate_state* %30, i32* null)
  br label %63

32:                                               ; preds = %17
  %33 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %33, %struct.evbuffer** %8, align 8
  %34 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %35 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %36 = call i32 @evbuffer_add_printf(%struct.evbuffer* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.evbuffer* %35)
  %37 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %38 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %41 = call i32 @evhttp_send_reply_chunk(i32 %39, %struct.evbuffer* %40)
  %42 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %43 = call i32 @evbuffer_free(%struct.evbuffer* %42)
  %44 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %45 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 3000, i32* %50, align 8
  %51 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %52 = call i32 @EVUTIL_ASSERT(%struct.terminate_state* %51)
  %53 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %54 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %53, i32 0, i32 0
  %55 = load %struct.terminate_state*, %struct.terminate_state** %54, align 8
  %56 = call i32 @EVUTIL_ASSERT(%struct.terminate_state* %55)
  %57 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %58 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %57, i32 0, i32 0
  %59 = load %struct.terminate_state*, %struct.terminate_state** %58, align 8
  %60 = load i32, i32* @EV_TIMEOUT, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @event_base_once(%struct.terminate_state* %59, i32 -1, i32 %60, void (i32, i16, i8*)* @terminate_chunked_trickle_cb, i8* %61, %struct.timeval* %9)
  br label %63

63:                                               ; preds = %16, %23, %48, %32
  ret void
}

declare dso_local i32* @evhttp_request_get_connection(i32) #1

declare dso_local i32 @evhttp_request_free(i32) #1

declare dso_local i32 @event_base_loopexit(%struct.terminate_state*, i32*) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, %struct.evbuffer*) #1

declare dso_local i32 @evhttp_send_reply_chunk(i32, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(%struct.terminate_state*) #1

declare dso_local i32 @event_base_once(%struct.terminate_state*, i32, i32, void (i32, i16, i8*)*, i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
