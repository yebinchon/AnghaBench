; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_reset_after_close.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_reset_after_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@server = common dso_local global i32 0, align 4
@QUICLY_DELAYED_ACK_TIMEOUT = common dso_local global i64 0, align 8
@quic_now = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reset_after_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reset_after_close() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @client, align 4
  %7 = call i32 @quicly_open_stream(i32 %6, %struct.TYPE_12__** %1, i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %16 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_12__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %17 = load i32, i32* @client, align 4
  %18 = load i32, i32* @server, align 4
  %19 = call i32 @transmit(i32 %17, i32 %18)
  %20 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %21 = load i32, i32* @quic_now, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* @quic_now, align 4
  %25 = load i32, i32* @server, align 4
  %26 = load i32, i32* @client, align 4
  %27 = call i32 @transmit(i32 %25, i32 %26)
  %28 = load i32, i32* @server, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_12__* @quicly_get_stream(i32 %28, i32 %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %2, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %4, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @buffer_is(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @ok(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = call i32 @quicly_streambuf_ingress_shift(%struct.TYPE_12__* %45, i32 5)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %48 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_12__* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %50 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %52 = call i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32 12345)
  %53 = call i32 @quicly_reset_stream(%struct.TYPE_12__* %51, i32 %52)
  %54 = load i32, i32* @client, align 4
  %55 = load i32, i32* @server, align 4
  %56 = call i32 @transmit(i32 %54, i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i32 @buffer_is(i32* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @ok(i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = call i32 @quicly_recvstate_transfer_complete(i32* %63)
  %65 = call i32 @ok(i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__* %66)
  %68 = load i32, i32* @server, align 4
  %69 = load i32, i32* @client, align 4
  %70 = call i32 @transmit(i32 %68, i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ok(i32 %73)
  %75 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %76 = load i32, i32* @quic_now, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @quic_now, align 4
  %80 = load i32, i32* @client, align 4
  %81 = load i32, i32* @server, align 4
  %82 = call i32 @transmit(i32 %80, i32 %81)
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ok(i32 %85)
  ret void
}

declare dso_local i32 @quicly_open_stream(i32, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_streambuf_egress_write(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @transmit(i32, i32) #1

declare dso_local %struct.TYPE_12__* @quicly_get_stream(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @buffer_is(i32*, i8*) #1

declare dso_local i32 @quicly_streambuf_ingress_shift(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_12__*) #1

declare dso_local i32 @quicly_reset_stream(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(i32) #1

declare dso_local i32 @quicly_recvstate_transfer_complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
