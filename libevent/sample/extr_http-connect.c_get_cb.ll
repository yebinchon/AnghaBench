; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_http-connect.c_get_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_http-connect.c_get_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }
%struct.evhttp_connection = type opaque

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @get_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca %struct.evhttp_connection*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %9 = call i32 @VERIFY(%struct.evhttp_request* %8)
  %10 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %11 = call %struct.evhttp_request* @evhttp_request_get_connection(%struct.evhttp_request* %10)
  %12 = bitcast %struct.evhttp_request* %11 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %12, %struct.evhttp_connection** %7, align 8
  %13 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %14 = bitcast %struct.evhttp_connection* %13 to %struct.evhttp_request*
  %15 = call i32 @VERIFY(%struct.evhttp_request* %14)
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %17 = call %struct.evbuffer* @evhttp_request_get_input_buffer(%struct.evhttp_request* %16)
  store %struct.evbuffer* %17, %struct.evbuffer** %6, align 8
  %18 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %19 = call i32 @evbuffer_get_length(%struct.evbuffer* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @evbuffer_pullup(%struct.evbuffer* %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fwrite(i32 %22, i32 %23, i32 1, i32 %24)
  %26 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @evbuffer_drain(%struct.evbuffer* %26, i32 %27)
  ret void
}

declare dso_local i32 @VERIFY(%struct.evhttp_request*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_get_connection(%struct.evhttp_request*) #1

declare dso_local %struct.evbuffer* @evhttp_request_get_input_buffer(%struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
