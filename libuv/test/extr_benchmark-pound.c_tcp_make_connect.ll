; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_tcp_make_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pound.c_tcp_make_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.sockaddr_in = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sockaddr = type { i32 }

@loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@TEST_PORT = common dso_local global i32 0, align 4
@connect_cb = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"uv_tcp_connect error %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @tcp_make_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_make_connect(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = bitcast %struct.TYPE_11__* %6 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %4, align 8
  %8 = load i32, i32* @loop, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = bitcast %struct.TYPE_9__* %10 to i32*
  %12 = call i32 @uv_tcp_init(i32 %8, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32, i32* @TEST_PORT, align 4
  %18 = call i64 @uv_ip4_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.sockaddr_in* %3)
  %19 = icmp eq i64 0, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = bitcast %struct.TYPE_9__* %25 to i32*
  %27 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %28 = load i32, i32* @connect_cb, align 4
  %29 = call i32 @uv_tcp_connect(i32* %23, i32* %26, %struct.sockaddr* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @uv_err_name(i32 %34)
  %36 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = call i32 @ASSERT(i32 0)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %50, align 8
  ret void
}

declare dso_local i32 @uv_tcp_init(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_tcp_connect(i32*, i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_err_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
