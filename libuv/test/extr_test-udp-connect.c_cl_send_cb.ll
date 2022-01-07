; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-udp-connect.c_cl_send_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-udp-connect.c_cl_send_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }

@cl_send_cb_called = common dso_local global i32 0, align 4
@client = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@UV_EDESTADDRREQ = common dso_local global i32 0, align 4
@lo_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @cl_send_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cl_send_cb(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CHECK_HANDLE(i32 %16)
  %18 = load i32, i32* @cl_send_cb_called, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @cl_send_cb_called, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = call i32 @uv_udp_connect(i32* @client, i32* null)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @uv_udp_send(%struct.TYPE_5__* %23, i32* @client, i32* @buf, i32 1, %struct.sockaddr* null, void (%struct.TYPE_5__*, i32)* @cl_send_cb)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @UV_EDESTADDRREQ, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = call i32 @uv_udp_send(%struct.TYPE_5__* %30, i32* @client, i32* @buf, i32 1, %struct.sockaddr* bitcast (i32* @lo_addr to %struct.sockaddr*), void (%struct.TYPE_5__*, i32)* @cl_send_cb)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  br label %36

36:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @CHECK_HANDLE(i32) #1

declare dso_local i32 @uv_udp_connect(i32*, i32*) #1

declare dso_local i32 @uv_udp_send(%struct.TYPE_5__*, i32*, i32*, i32, %struct.sockaddr*, void (%struct.TYPE_5__*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
