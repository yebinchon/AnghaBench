; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32, %struct.evhttp_connection* }
%struct.evhttp_connection = type { i32 }
%struct.evbuffer = type { i32 }

@evhttp_send_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, %struct.evbuffer*)* @evhttp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_send(%struct.evhttp_request* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evhttp_connection*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  %6 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %7 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %6, i32 0, i32 2
  %8 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  store %struct.evhttp_connection* %8, %struct.evhttp_connection** %5, align 8
  %9 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %10 = icmp eq %struct.evhttp_connection* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %13 = call i32 @evhttp_request_free(%struct.evhttp_request* %12)
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %16 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %15, i32 0, i32 0
  %17 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %16)
  %18 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %19 = icmp eq %struct.evhttp_request* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @EVUTIL_ASSERT(i32 %20)
  %22 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %23 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %25 = icmp ne %struct.evbuffer* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %28 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %31 = call i32 @evbuffer_add_buffer(i32 %29, %struct.evbuffer* %30)
  br label %32

32:                                               ; preds = %26, %14
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %34 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %35 = call i32 @evhttp_make_header(%struct.evhttp_connection* %33, %struct.evhttp_request* %34)
  %36 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %37 = load i32, i32* @evhttp_send_done, align 4
  %38 = call i32 @evhttp_write_buffer(%struct.evhttp_connection* %36, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %32, %11
  ret void
}

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evbuffer_add_buffer(i32, %struct.evbuffer*) #1

declare dso_local i32 @evhttp_make_header(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_write_buffer(%struct.evhttp_connection*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
