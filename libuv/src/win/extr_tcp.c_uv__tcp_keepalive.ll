; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv__tcp_keepalive.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv__tcp_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_KEEPALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @uv__tcp_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__tcp_keepalive(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @SOL_SOCKET, align 4
  %12 = load i32, i32* @SO_KEEPALIVE, align 4
  %13 = bitcast i32* %8 to i8*
  %14 = call i32 @setsockopt(i32 %10, i32 %11, i32 %12, i8* %13, i32 4)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 (...) @WSAGetLastError()
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IPPROTO_TCP, align 4
  %24 = load i32, i32* @TCP_KEEPALIVE, align 4
  %25 = bitcast i32* %9 to i8*
  %26 = call i32 @setsockopt(i32 %22, i32 %23, i32 %24, i8* %25, i32 4)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (...) @WSAGetLastError()
  store i32 %29, i32* %5, align 4
  br label %31

30:                                               ; preds = %21, %18
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %28, %16
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
