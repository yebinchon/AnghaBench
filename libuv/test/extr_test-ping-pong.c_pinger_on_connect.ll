; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ping-pong.c_pinger_on_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ping-pong.c_pinger_on_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@pinger_on_connect_count = common dso_local global i32 0, align 4
@alloc_cb = common dso_local global i32 0, align 4
@pinger_read_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @pinger_on_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pinger_on_connect(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @pinger_on_connect_count, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @pinger_on_connect_count, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @uv_is_readable(%struct.TYPE_6__* %20)
  %22 = icmp eq i32 1, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @uv_is_writable(%struct.TYPE_6__* %27)
  %29 = icmp eq i32 1, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = bitcast %struct.TYPE_6__* %34 to i32*
  %36 = call i64 @uv_is_closing(i32* %35)
  %37 = icmp eq i64 0, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @pinger_write_ping(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = bitcast %struct.TYPE_6__* %44 to i32*
  %46 = load i32, i32* @alloc_cb, align 4
  %47 = load i32, i32* @pinger_read_cb, align 4
  %48 = call i32 @uv_read_start(i32* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_is_readable(%struct.TYPE_6__*) #1

declare dso_local i32 @uv_is_writable(%struct.TYPE_6__*) #1

declare dso_local i64 @uv_is_closing(i32*) #1

declare dso_local i32 @pinger_write_ping(i32*) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
