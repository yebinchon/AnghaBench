; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_echo-server.c_udp4_echo_start.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_echo-server.c_udp4_echo_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@udpServer = common dso_local global i32 0, align 4
@server = common dso_local global i32* null, align 8
@UDP = common dso_local global i32 0, align 4
@serverType = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"uv_udp_init: %s\0A\00", align 1
@echo_alloc = common dso_local global i32 0, align 4
@on_recv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"uv_udp_recv_start: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @udp4_echo_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp4_echo_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* @udpServer, i32** @server, align 8
  %5 = load i32, i32* @UDP, align 4
  store i32 %5, i32* @serverType, align 4
  %6 = load i32, i32* @loop, align 4
  %7 = call i32 @uv_udp_init(i32 %6, i32* @udpServer)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @uv_strerror(i32 %12)
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @echo_alloc, align 4
  %17 = load i32, i32* @on_recv, align 4
  %18 = call i32 @uv_udp_recv_start(i32* @udpServer, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @uv_strerror(i32 %23)
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %21, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @uv_udp_init(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_strerror(i32) #1

declare dso_local i32 @uv_udp_recv_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
