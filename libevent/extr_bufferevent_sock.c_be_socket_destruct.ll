; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_be_socket_destruct.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_be_socket_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { i32, i32 }

@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_socket_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_socket_destruct(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_private*, align 8
  %4 = alloca i64, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %5 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %6 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %5)
  store %struct.bufferevent_private* %6, %struct.bufferevent_private** %3, align 8
  %7 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %8 = call i32 @BEV_IS_SOCKET(%struct.bufferevent* %7)
  %9 = call i32 @EVUTIL_ASSERT(i32 %8)
  %10 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %11 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %10, i32 0, i32 0
  %12 = call i64 @event_get_fd(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.bufferevent_private*, %struct.bufferevent_private** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @EVUTIL_CLOSESOCKET(i64 %23)
  br label %25

25:                                               ; preds = %22, %19, %1
  %26 = load %struct.bufferevent_private*, %struct.bufferevent_private** %3, align 8
  %27 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @evutil_getaddrinfo_cancel_async_(i32 %28)
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @BEV_IS_SOCKET(%struct.bufferevent*) #1

declare dso_local i64 @event_get_fd(i32*) #1

declare dso_local i32 @EVUTIL_CLOSESOCKET(i64) #1

declare dso_local i32 @evutil_getaddrinfo_cancel_async_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
