; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_set_conn_address_fd_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_socket_set_conn_address_fd_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { i32 }
%struct.sockaddr = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bufferevent_socket_set_conn_address_fd_(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %8)
  store %struct.bufferevent_private* %9, %struct.bufferevent_private** %5, align 8
  store i32 4, i32* %6, align 4
  %10 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %11 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %7, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_UNSPEC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = call i32 @getpeername(i32 %19, %struct.sockaddr* %20, i32* %6)
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
