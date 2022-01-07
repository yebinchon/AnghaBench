; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-accept.c_connection_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-close-accept.c_connection_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@tcp_server = common dso_local global i32 0, align 4
@got_connections = common dso_local global i32 0, align 4
@tcp_incoming = common dso_local global i32* null, align 8
@alloc_cb = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @connection_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_cb(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, bitcast (i32* @tcp_server to %struct.TYPE_6__*)
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @got_connections, align 4
  %12 = load i32*, i32** @tcp_incoming, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %2
  %17 = load i32*, i32** @tcp_incoming, align 8
  %18 = load i32, i32* @got_connections, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* @got_connections, align 4
  %20 = zext i32 %18 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @uv_tcp_init(i32 %24, i32* %25)
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_6__*
  %33 = call i64 @uv_accept(%struct.TYPE_6__* %30, %struct.TYPE_6__* %32)
  %34 = icmp eq i64 0, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* @got_connections, align 4
  %38 = load i32*, i32** @tcp_incoming, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %16
  br label %64

42:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** @tcp_incoming, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i32*, i32** @tcp_incoming, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = bitcast i32* %53 to %struct.TYPE_6__*
  %55 = load i32, i32* @alloc_cb, align 4
  %56 = load i32, i32* @read_cb, align 4
  %57 = call i64 @uv_read_start(%struct.TYPE_6__* %54, i32 %55, i32 %56)
  %58 = icmp eq i64 0, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %43

64:                                               ; preds = %15, %41, %43
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @uv_tcp_init(i32, i32*) #1

declare dso_local i64 @uv_accept(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @uv_read_start(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
