; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_write_connectioncb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_write_connectioncb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i64, i32, i32 }
%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@EVCON_WRITING = common dso_local global i64 0, align 8
@EVHTTP_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, i8*)* @evhttp_write_connectioncb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_write_connectioncb(%struct.evhttp_connection* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp_request*, align 8
  %6 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %8 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %7, i32 0, i32 2
  %9 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %8)
  store %struct.evhttp_request* %9, %struct.evhttp_request** %5, align 8
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.evbuffer* @bufferevent_get_output(i32 %12)
  store %struct.evbuffer* %13, %struct.evbuffer** %6, align 8
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %15 = icmp ne %struct.evhttp_request* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @EVUTIL_ASSERT(i32 %16)
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %19 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EVCON_WRITING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @EVUTIL_ASSERT(i32 %23)
  %25 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %26 = call i64 @evbuffer_get_length(%struct.evbuffer* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @EVHTTP_RESPONSE, align 4
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %34 = call i32 @evhttp_start_read_(%struct.evhttp_connection* %33)
  br label %35

35:                                               ; preds = %29, %28
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evhttp_start_read_(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
