; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_recv_pktinfo.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_socket.c_nl_socket_recv_pktinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }

@NLE_BAD_SOCK = common dso_local global i32 0, align 4
@SOL_NETLINK = common dso_local global i32 0, align 4
@NETLINK_PKTINFO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_socket_recv_pktinfo(%struct.nl_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nl_sock* %0, %struct.nl_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %8 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @NLE_BAD_SOCK, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %16 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SOL_NETLINK, align 4
  %19 = load i32, i32* @NETLINK_PKTINFO, align 4
  %20 = call i32 @setsockopt(i32 %17, i32 %18, i32 %19, i32* %5, i32 4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @nl_syserr2nlerr(i32 %24)
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %23, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nl_syserr2nlerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
