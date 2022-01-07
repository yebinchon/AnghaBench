; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_rst_then_close.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_rst_then_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@client = common dso_local global i32 0, align 4
@server = common dso_local global i32 0, align 4
@QUICLY_DELAYED_ACK_TIMEOUT = common dso_local global i64 0, align 8
@quic_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rst_then_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rst_then_close() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @client, align 4
  %8 = call i32 @quicly_open_stream(i32 %7, %struct.TYPE_10__** %1, i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %20 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 12345)
  %21 = call i32 @quicly_reset_stream(%struct.TYPE_10__* %19, i64 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %23 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 54321)
  %24 = call i32 @quicly_request_stop(%struct.TYPE_10__* %22, i64 %23)
  %25 = load i32, i32* @client, align 4
  %26 = load i32, i32* @server, align 4
  %27 = call i32 @transmit(i32 %25, i32 %26)
  %28 = load i32, i32* @server, align 4
  %29 = call i32 @quicly_num_streams(i32 %28)
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31)
  %33 = load i32, i32* @server, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_10__* @quicly_get_stream(i32 %33, i32 %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %2, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %4, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = call i32 @quicly_sendstate_transfer_complete(i32* %44)
  %46 = call i32 @ok(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = call i32 @quicly_recvstate_transfer_complete(i32* %48)
  %50 = call i32 @ok(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 12345)
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 54321)
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %68 = load i32, i32* @quic_now, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* @quic_now, align 4
  %72 = load i32, i32* @server, align 4
  %73 = load i32, i32* @client, align 4
  %74 = call i32 @transmit(i32 %72, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ok(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, -1
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 54321)
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @ok(i32 %92)
  %94 = load i32, i32* @client, align 4
  %95 = call i32 @quicly_num_streams(i32 %94)
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ok(i32 %97)
  %99 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %100 = load i32, i32* @quic_now, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* @quic_now, align 4
  %104 = load i32, i32* @client, align 4
  %105 = load i32, i32* @server, align 4
  %106 = call i32 @transmit(i32 %104, i32 %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ok(i32 %109)
  %111 = load i32, i32* @server, align 4
  %112 = call i32 @quicly_num_streams(i32 %111)
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @ok(i32 %114)
  ret void
}

declare dso_local i32 @quicly_open_stream(i32, %struct.TYPE_10__**, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32) #1

declare dso_local i32 @quicly_request_stop(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @transmit(i32, i32) #1

declare dso_local i32 @quicly_num_streams(i32) #1

declare dso_local %struct.TYPE_10__* @quicly_get_stream(i32, i32) #1

declare dso_local i32 @quicly_sendstate_transfer_complete(i32*) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
