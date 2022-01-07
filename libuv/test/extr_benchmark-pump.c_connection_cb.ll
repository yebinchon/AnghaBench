; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_connection_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_connection_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server = common dso_local global i32* null, align 8
@type = common dso_local global i64 0, align 8
@TCP = common dso_local global i64 0, align 8
@loop = common dso_local global i32 0, align 4
@buf_alloc = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@read_sockets = common dso_local global i32 0, align 4
@max_read_sockets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @connection_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_cb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** @server, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i64, i64* @type, align 8
  %17 = load i64, i64* @TCP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = call i64 @malloc(i32 4)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* @loop, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @uv_tcp_init(i32 %22, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  br label %39

29:                                               ; preds = %2
  %30 = call i64 @malloc(i32 4)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %5, align 8
  %32 = load i32, i32* @loop, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @uv_pipe_init(i32 %32, i32* %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  br label %39

39:                                               ; preds = %29, %19
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @uv_accept(i32* %40, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @buf_alloc, align 4
  %49 = load i32, i32* @read_cb, align 4
  %50 = call i32 @uv_read_start(i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load i32, i32* @read_sockets, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @read_sockets, align 4
  %57 = load i32, i32* @max_read_sockets, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @max_read_sockets, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @uv_accept(i32*, i32*) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
