; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-unexpected-read.c_connection_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-unexpected-read.c_connection_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@peer_handle = common dso_local global i32 0, align 4
@alloc_cb = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@write_req = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connection_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @uv_buf_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @uv_accept(i32* %11, i32* @peer_handle)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @alloc_cb, align 4
  %17 = load i32, i32* @read_cb, align 4
  %18 = call i64 @uv_read_start(i32* @peer_handle, i32 %16, i32 %17)
  %19 = icmp eq i64 0, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* @write_cb, align 4
  %23 = call i64 @uv_write(i32* @write_req, i32* @peer_handle, i32* %5, i32 1, i32 %22)
  %24 = icmp eq i64 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  ret void
}

declare dso_local i32 @uv_buf_init(i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_accept(i32*, i32*) #1

declare dso_local i64 @uv_read_start(i32*, i32, i32) #1

declare dso_local i64 @uv_write(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
