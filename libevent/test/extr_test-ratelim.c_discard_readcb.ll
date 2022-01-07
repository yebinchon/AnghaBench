; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_discard_readcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-ratelim.c_discard_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.client_state = type { i64 }
%struct.evbuffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @discard_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @discard_readcb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.client_state*, align 8
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca i64, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.client_state*
  store %struct.client_state* %9, %struct.client_state** %5, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %11 = call %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent* %10)
  store %struct.evbuffer* %11, %struct.evbuffer** %6, align 8
  %12 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %13 = call i64 @evbuffer_get_length(%struct.evbuffer* %12)
  store i64 %13, i64* %7, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @evbuffer_drain(%struct.evbuffer* %14, i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.client_state*, %struct.client_state** %5, align 8
  %19 = getelementptr inbounds %struct.client_state, %struct.client_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, %17
  store i64 %21, i64* %19, align 8
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
