; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_listener.c_regress_listener_close_accepted_fd.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_listener.c_regress_listener_close_accepted_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { %struct.event_base* }
%struct.event_base = type { i32 }
%struct.evconnlistener = type { i32 }
%struct.sockaddr_in = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@LEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@LEV_OPT_REUSEABLE = common dso_local global i32 0, align 4
@EVUTIL_INVALID_SOCKET = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@acceptcb_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @regress_listener_close_accepted_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regress_listener_close_accepted_fd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.evconnlistener*, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.basic_test_data*
  store %struct.basic_test_data* %13, %struct.basic_test_data** %3, align 8
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load %struct.event_base*, %struct.event_base** %15, align 8
  store %struct.event_base* %16, %struct.event_base** %4, align 8
  store %struct.evconnlistener* null, %struct.evconnlistener** %5, align 8
  store i32 4, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %17 = load i32, i32* @LEV_OPT_CLOSE_ON_FREE, align 4
  %18 = load i32, i32* @LEV_OPT_REUSEABLE, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @EVUTIL_INVALID_SOCKET, align 4
  store i32 %20, i32* %11, align 4
  %21 = call i32 @memset(%struct.sockaddr_in* %6, i32 0, i32 16)
  %22 = load i32, i32* @AF_INET, align 4
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = call i32 @htonl(i32 2130706433)
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.event_base*, %struct.event_base** %4, align 8
  %29 = load i32, i32* @acceptcb_free, align 4
  %30 = load i32, i32* %10, align 4
  %31 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %32 = call %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base* %28, i32 %29, i32* %9, i32 %30, i32 -1, %struct.sockaddr* %31, i32 16)
  store %struct.evconnlistener* %32, %struct.evconnlistener** %5, align 8
  %33 = load %struct.evconnlistener*, %struct.evconnlistener** %5, align 8
  %34 = ptrtoint %struct.evconnlistener* %33 to i32
  %35 = call i32 @tt_assert(i32 %34)
  %36 = load %struct.evconnlistener*, %struct.evconnlistener** %5, align 8
  %37 = call i32 @evconnlistener_get_fd(%struct.evconnlistener* %36)
  %38 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %39 = call i64 @getsockname(i32 %37, %struct.sockaddr* %38, i32* %8)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @tt_assert(i32 %41)
  %43 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @evutil_socket_connect_(i32* %11, %struct.sockaddr* %43, i32 %44)
  %46 = load %struct.event_base*, %struct.event_base** %4, align 8
  %47 = call i32 @event_base_dispatch(%struct.event_base* %46)
  br label %48

48:                                               ; preds = %1
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.evconnlistener* @evconnlistener_new_bind(%struct.event_base*, i32, i32*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evconnlistener_get_fd(%struct.evconnlistener*) #1

declare dso_local i32 @evutil_socket_connect_(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
