; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_accept_socket_with_handle.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_accept_socket_with_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_bound_socket = type { i32 }
%struct.evhttp = type { i32 }
%struct.evconnlistener = type { i32 }

@LEV_OPT_REUSEABLE = common dso_local global i32 0, align 4
@LEV_OPT_CLOSE_ON_EXEC = common dso_local global i32 0, align 4
@LEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evhttp_bound_socket* @evhttp_accept_socket_with_handle(%struct.evhttp* %0, i32 %1) #0 {
  %3 = alloca %struct.evhttp_bound_socket*, align 8
  %4 = alloca %struct.evhttp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evhttp_bound_socket*, align 8
  %7 = alloca %struct.evconnlistener*, align 8
  %8 = alloca i32, align 4
  store %struct.evhttp* %0, %struct.evhttp** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @LEV_OPT_REUSEABLE, align 4
  %10 = load i32, i32* @LEV_OPT_CLOSE_ON_EXEC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @LEV_OPT_CLOSE_ON_FREE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %15 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.evconnlistener* @evconnlistener_new(i32 %16, i32* null, i32* null, i32 %17, i32 0, i32 %18)
  store %struct.evconnlistener* %19, %struct.evconnlistener** %7, align 8
  %20 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %21 = icmp ne %struct.evconnlistener* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.evhttp_bound_socket* null, %struct.evhttp_bound_socket** %3, align 8
  br label %34

23:                                               ; preds = %2
  %24 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %25 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %26 = call %struct.evhttp_bound_socket* @evhttp_bind_listener(%struct.evhttp* %24, %struct.evconnlistener* %25)
  store %struct.evhttp_bound_socket* %26, %struct.evhttp_bound_socket** %6, align 8
  %27 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %6, align 8
  %28 = icmp ne %struct.evhttp_bound_socket* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.evconnlistener*, %struct.evconnlistener** %7, align 8
  %31 = call i32 @evconnlistener_free(%struct.evconnlistener* %30)
  store %struct.evhttp_bound_socket* null, %struct.evhttp_bound_socket** %3, align 8
  br label %34

32:                                               ; preds = %23
  %33 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %6, align 8
  store %struct.evhttp_bound_socket* %33, %struct.evhttp_bound_socket** %3, align 8
  br label %34

34:                                               ; preds = %32, %29, %22
  %35 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %3, align 8
  ret %struct.evhttp_bound_socket* %35
}

declare dso_local %struct.evconnlistener* @evconnlistener_new(i32, i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.evhttp_bound_socket* @evhttp_bind_listener(%struct.evhttp*, %struct.evconnlistener*) #1

declare dso_local i32 @evconnlistener_free(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
