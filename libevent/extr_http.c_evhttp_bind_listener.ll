; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_bind_listener.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_bind_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_bound_socket = type { %struct.evconnlistener* }
%struct.evhttp = type { i32 }
%struct.evconnlistener = type { i32 }

@next = common dso_local global i32 0, align 4
@accept_socket_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evhttp_bound_socket* @evhttp_bind_listener(%struct.evhttp* %0, %struct.evconnlistener* %1) #0 {
  %3 = alloca %struct.evhttp_bound_socket*, align 8
  %4 = alloca %struct.evhttp*, align 8
  %5 = alloca %struct.evconnlistener*, align 8
  %6 = alloca %struct.evhttp_bound_socket*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %4, align 8
  store %struct.evconnlistener* %1, %struct.evconnlistener** %5, align 8
  %7 = call %struct.evhttp_bound_socket* @mm_malloc(i32 8)
  store %struct.evhttp_bound_socket* %7, %struct.evhttp_bound_socket** %6, align 8
  %8 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %6, align 8
  %9 = icmp eq %struct.evhttp_bound_socket* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.evhttp_bound_socket* null, %struct.evhttp_bound_socket** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.evconnlistener*, %struct.evconnlistener** %5, align 8
  %13 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %6, align 8
  %14 = getelementptr inbounds %struct.evhttp_bound_socket, %struct.evhttp_bound_socket* %13, i32 0, i32 0
  store %struct.evconnlistener* %12, %struct.evconnlistener** %14, align 8
  %15 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %16 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %15, i32 0, i32 0
  %17 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %6, align 8
  %18 = load i32, i32* @next, align 4
  %19 = call i32 @TAILQ_INSERT_TAIL(i32* %16, %struct.evhttp_bound_socket* %17, i32 %18)
  %20 = load %struct.evconnlistener*, %struct.evconnlistener** %5, align 8
  %21 = load i32, i32* @accept_socket_cb, align 4
  %22 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %23 = call i32 @evconnlistener_set_cb(%struct.evconnlistener* %20, i32 %21, %struct.evhttp* %22)
  %24 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %6, align 8
  store %struct.evhttp_bound_socket* %24, %struct.evhttp_bound_socket** %3, align 8
  br label %25

25:                                               ; preds = %11, %10
  %26 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %3, align 8
  ret %struct.evhttp_bound_socket* %26
}

declare dso_local %struct.evhttp_bound_socket* @mm_malloc(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evhttp_bound_socket*, i32) #1

declare dso_local i32 @evconnlistener_set_cb(%struct.evconnlistener*, i32, %struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
