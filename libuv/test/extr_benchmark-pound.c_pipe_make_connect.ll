; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_pipe_make_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_pipe_make_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }

@loop = common dso_local global i32 0, align 4
@TEST_PIPENAME = common dso_local global i32 0, align 4
@connect_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @pipe_make_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_make_connect(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load i32, i32* @loop, align 4
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = bitcast %struct.TYPE_9__* %6 to i32*
  %8 = call i32 @uv_pipe_init(i32 %4, i32* %7, i32 0)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = bitcast %struct.TYPE_11__* %13 to %struct.TYPE_10__*
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = bitcast %struct.TYPE_9__* %17 to i32*
  %19 = load i32, i32* @TEST_PIPENAME, align 4
  %20 = load i32, i32* @connect_cb, align 4
  %21 = call i32 @uv_pipe_connect(i32* %15, i32* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %33, align 8
  ret void
}

declare dso_local i32 @uv_pipe_init(i32, i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_pipe_connect(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
