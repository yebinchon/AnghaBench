; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-udp-multicast-join6.c_cl_recv_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-udp-multicast-join6.c_cl_recv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@cl_recv_cb_called = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@MULTICAST_ADDR = common dso_local global i32 0, align 4
@INTERFACE_ADDR = common dso_local global i32 0, align 4
@UV_LEAVE_GROUP = common dso_local global i32 0, align 4
@UV_JOIN_GROUP = common dso_local global i32 0, align 4
@req_ss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, %struct.sockaddr*, i32)* @cl_recv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cl_recv_cb(i32* %0, i32 %1, %struct.TYPE_3__* %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @CHECK_HANDLE(i32* %13)
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = call i32 @ASSERT(i32 0)
  br label %23

23:                                               ; preds = %21, %5
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %28 = icmp eq %struct.sockaddr* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  br label %87

31:                                               ; preds = %23
  %32 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %33 = icmp ne %struct.sockaddr* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 4
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i32, i32* @cl_recv_cb_called, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @cl_recv_cb_called, align 4
  %51 = load i32, i32* @cl_recv_cb_called, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %31
  %54 = load i32, i32* @close_cb, align 4
  %55 = call i32 @uv_close(i32* @server, i32 %54)
  br label %87

56:                                               ; preds = %31
  %57 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %58 = bitcast %struct.sockaddr* %57 to %struct.sockaddr_in6*
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %60 = call i32 @uv_ip6_name(%struct.sockaddr_in6* %58, i8* %59, i32 64)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load i32, i32* @MULTICAST_ADDR, align 4
  %66 = load i32, i32* @INTERFACE_ADDR, align 4
  %67 = load i32, i32* @UV_LEAVE_GROUP, align 4
  %68 = call i32 @uv_udp_set_membership(i32* @server, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i32, i32* @MULTICAST_ADDR, align 4
  %74 = load i32, i32* @INTERFACE_ADDR, align 4
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %76 = load i32, i32* @UV_JOIN_GROUP, align 4
  %77 = call i32 @uv_udp_set_source_membership(i32* @server, i32 %73, i32 %74, i8* %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = call i32 @do_send(i32* @req_ss)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  br label %87

87:                                               ; preds = %26, %56, %53
  ret void
}

declare dso_local i32 @CHECK_HANDLE(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @uv_ip6_name(%struct.sockaddr_in6*, i8*, i32) #1

declare dso_local i32 @uv_udp_set_membership(i32*, i32, i32, i32) #1

declare dso_local i32 @uv_udp_set_source_membership(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @do_send(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
