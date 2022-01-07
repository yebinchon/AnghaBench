; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_send_then_close.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_send_then_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, %struct.TYPE_16__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@server = common dso_local global i32 0, align 4
@QUICLY_DELAYED_ACK_TIMEOUT = common dso_local global i64 0, align 8
@quic_now = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_send_then_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_send_then_close() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @client, align 4
  %7 = call i32 @quicly_open_stream(i32 %6, %struct.TYPE_17__** %1, i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10)
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %3, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %16 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_17__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %17 = load i32, i32* @client, align 4
  %18 = load i32, i32* @server, align 4
  %19 = call i32 @transmit(i32 %17, i32 %18)
  %20 = load i32, i32* @server, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_17__* @quicly_get_stream(i32 %20, i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %2, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %4, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = call i32 @buffer_is(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ok(i32 %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = call i32 @quicly_streambuf_ingress_shift(%struct.TYPE_17__* %37, i32 5)
  %39 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %40 = load i32, i32* @quic_now, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @quic_now, align 4
  %44 = load i32, i32* @server, align 4
  %45 = load i32, i32* @client, align 4
  %46 = call i32 @transmit(i32 %44, i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = call i32 @ok(i32 %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 5
  %75 = zext i1 %74 to i32
  %76 = call i32 @ok(i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  %78 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_17__* %77)
  %79 = load i32, i32* @client, align 4
  %80 = load i32, i32* @server, align 4
  %81 = call i32 @transmit(i32 %79, i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = call i32 @quicly_recvstate_transfer_complete(i32* %83)
  %85 = call i32 @ok(i32 %84)
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = call i32 @buffer_is(i32* %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %90 = call i32 @ok(i32 %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %92 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_17__* %91)
  %93 = load i32, i32* @server, align 4
  %94 = load i32, i32* @client, align 4
  %95 = call i32 @transmit(i32 %93, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ok(i32 %98)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %108 = load i32, i32* @quic_now, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* @quic_now, align 4
  %112 = load i32, i32* @client, align 4
  %113 = load i32, i32* @server, align 4
  %114 = call i32 @transmit(i32 %112, i32 %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ok(i32 %117)
  ret void
}

declare dso_local i32 @quicly_open_stream(i32, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_streambuf_egress_write(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @transmit(i32, i32) #1

declare dso_local %struct.TYPE_17__* @quicly_get_stream(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @buffer_is(i32*, i8*) #1

declare dso_local i32 @quicly_streambuf_ingress_shift(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_17__*) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
