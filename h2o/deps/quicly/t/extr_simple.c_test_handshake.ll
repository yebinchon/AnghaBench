; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_handshake.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_test_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@client = common dso_local global i32 0, align 4
@quic_ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@fake_address = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@server = common dso_local global i32 0, align 4
@QUICLY_STATE_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_handshake() #0 {
  %1 = alloca [32 x %struct.TYPE_8__*], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @new_master_id()
  %8 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %9 = call i32 @quicly_connect(i32* @client, i32* @quic_ctx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fake_address, i32 0, i32 0), i32* null, i32 %7, i32 %8, i32* null, i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12)
  store i64 32, i64* %2, align 8
  %14 = load i32, i32* @client, align 4
  %15 = getelementptr inbounds [32 x %struct.TYPE_8__*], [32 x %struct.TYPE_8__*]* %1, i64 0, i64 0
  %16 = call i32 @quicly_send(i32 %14, %struct.TYPE_8__** %15, i64* %2)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19)
  %21 = load i64, i64* %2, align 8
  %22 = icmp eq i64 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23)
  %25 = getelementptr inbounds [32 x %struct.TYPE_8__*], [32 x %struct.TYPE_8__*]* %1, i64 0, i64 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 16
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1280
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31)
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %34 = getelementptr inbounds [32 x %struct.TYPE_8__*], [32 x %struct.TYPE_8__*]* %1, i64 0, i64 0
  %35 = load i64, i64* %2, align 8
  %36 = call i64 @decode_packets(i32* %33, %struct.TYPE_8__** %34, i64 %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39)
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %42 = call i32 (...) @new_master_id()
  %43 = call i32 @quicly_accept(i32* @server, i32* @quic_ctx, i32* null, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fake_address, i32 0, i32 0), i32* %41, i32* null, i32 %42, i32* null)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46)
  %48 = getelementptr inbounds [32 x %struct.TYPE_8__*], [32 x %struct.TYPE_8__*]* %1, i64 0, i64 0
  %49 = load i64, i64* %2, align 8
  %50 = call i32 @free_packets(%struct.TYPE_8__** %48, i64 %49)
  %51 = load i32, i32* @server, align 4
  %52 = call i64 @quicly_get_state(i32 %51)
  %53 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load i32, i32* @server, align 4
  %58 = call i32 @quicly_connection_is_ready(i32 %57)
  %59 = call i32 @ok(i32 %58)
  store i64 32, i64* %2, align 8
  %60 = load i32, i32* @server, align 4
  %61 = getelementptr inbounds [32 x %struct.TYPE_8__*], [32 x %struct.TYPE_8__*]* %1, i64 0, i64 0
  %62 = call i32 @quicly_send(i32 %60, %struct.TYPE_8__** %61, i64* %2)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = load i64, i64* %2, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69)
  %71 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %72 = getelementptr inbounds [32 x %struct.TYPE_8__*], [32 x %struct.TYPE_8__*]* %1, i64 0, i64 0
  %73 = load i64, i64* %2, align 8
  %74 = call i64 @decode_packets(i32* %71, %struct.TYPE_8__** %72, i64 %73)
  store i64 %74, i64* %3, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %91, %0
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %3, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i32, i32* @client, align 4
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @quicly_receive(i32 %81, i32* null, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @fake_address, i32 0, i32 0), i32* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89)
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %75

94:                                               ; preds = %75
  %95 = getelementptr inbounds [32 x %struct.TYPE_8__*], [32 x %struct.TYPE_8__*]* %1, i64 0, i64 0
  %96 = load i64, i64* %2, align 8
  %97 = call i32 @free_packets(%struct.TYPE_8__** %95, i64 %96)
  %98 = load i32, i32* @client, align 4
  %99 = call i64 @quicly_get_state(i32 %98)
  %100 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102)
  %104 = load i32, i32* @client, align 4
  %105 = call i32 @quicly_connection_is_ready(i32 %104)
  %106 = call i32 @ok(i32 %105)
  ret void
}

declare dso_local i32 @quicly_connect(i32*, i32*, i8*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @new_master_id(...) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_send(i32, %struct.TYPE_8__**, i64*) #1

declare dso_local i64 @decode_packets(i32*, %struct.TYPE_8__**, i64) #1

declare dso_local i32 @quicly_accept(i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @free_packets(%struct.TYPE_8__**, i64) #1

declare dso_local i64 @quicly_get_state(i32) #1

declare dso_local i32 @quicly_connection_is_ready(i32) #1

declare dso_local i32 @quicly_receive(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
