; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_read_on_write_error.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_read_on_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32 }
%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@EVHTTP_CON_READING_ERROR = common dso_local global i32 0, align 4
@EVREQ_HTTP_EOF = common dso_local global i32 0, align 4
@EVHTTP_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_connection_read_on_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_connection_read_on_write_error(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %7 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EVHTTP_CON_READING_ERROR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @EVHTTP_CON_READING_ERROR, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %16 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %20 = load i32, i32* @EVREQ_HTTP_EOF, align 4
  %21 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %19, i32 %20)
  br label %45

22:                                               ; preds = %2
  %23 = load i32, i32* @EVHTTP_RESPONSE, align 4
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %25 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %27 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.evbuffer* @bufferevent_get_output(i32 %28)
  store %struct.evbuffer* %29, %struct.evbuffer** %5, align 8
  %30 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %31 = call i32 @evbuffer_unfreeze(%struct.evbuffer* %30, i32 1)
  %32 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %33 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %34 = call i32 @evbuffer_get_length(%struct.evbuffer* %33)
  %35 = call i32 @evbuffer_drain(%struct.evbuffer* %32, i32 %34)
  %36 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %37 = call i32 @evbuffer_freeze(%struct.evbuffer* %36, i32 1)
  %38 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %39 = call i32 @evhttp_start_read_(%struct.evhttp_connection* %38)
  %40 = load i32, i32* @EVHTTP_CON_READING_ERROR, align 4
  %41 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %42 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %22, %12
  ret void
}

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(i32) #1

declare dso_local i32 @evbuffer_unfreeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_freeze(%struct.evbuffer*, i32) #1

declare dso_local i32 @evhttp_start_read_(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
