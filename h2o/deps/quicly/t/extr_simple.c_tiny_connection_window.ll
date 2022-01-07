; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_tiny_connection_window.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_simple.c_tiny_connection_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_21__, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_24__*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@quic_ctx = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@client = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@fake_address = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@server = common dso_local global i32 0, align 4
@QUICLY_STATE_CONNECTED = common dso_local global i64 0, align 8
@QUICLY_DELAYED_ACK_TIMEOUT = common dso_local global i64 0, align 8
@quic_now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tiny_connection_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiny_connection_window() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @quic_ctx, i32 0, i32 0, i32 0), align 8
  store i32 %12, i32* %1, align 4
  store i32 1024, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @quic_ctx, i32 0, i32 0, i32 0), align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %22, %0
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 64
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %18, 16
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %13

25:                                               ; preds = %13
  %26 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 1024
  store i8 0, i8* %26, align 16
  %27 = call i32 (...) @new_master_id()
  %28 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %29 = call i32 @quicly_connect(i32* @client, %struct.TYPE_16__* @quic_ctx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fake_address, i32 0, i32 0), i32* null, i32 %27, i32 %28, i32* null, i32* null)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32)
  store i64 1, i64* %10, align 8
  %34 = load i32, i32* @client, align 4
  %35 = call i32 @quicly_send(i32 %34, i32** %9, i64* %10)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38)
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42)
  %44 = load i32, i32* @client, align 4
  %45 = call i64 @quicly_get_first_timeout(i32 %44)
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @quic_ctx, i32 0, i32 1), align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_24__*)*, i64 (%struct.TYPE_24__*)** %47, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @quic_ctx, i32 0, i32 1), align 8
  %50 = call i64 %48(%struct.TYPE_24__* %49)
  %51 = icmp sgt i64 %45, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52)
  %54 = call i32 @decode_packets(i32* %11, i32** %9, i32 1)
  %55 = load i64, i64* %10, align 8
  %56 = icmp eq i64 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @ok(i32 %57)
  %59 = call i32 (...) @new_master_id()
  %60 = call i32 @quicly_accept(i32* @server, %struct.TYPE_16__* @quic_ctx, i32* null, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fake_address, i32 0, i32 0), i32* %11, i32* null, i32 %59, i32* null)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63)
  %65 = call i32 @free_packets(i32** %9, i32 1)
  %66 = load i32, i32* @server, align 4
  %67 = load i32, i32* @client, align 4
  %68 = call i32 @transmit(i32 %66, i32 %67)
  %69 = load i32, i32* @client, align 4
  %70 = call i64 @quicly_get_state(i32 %69)
  %71 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73)
  %75 = load i32, i32* @client, align 4
  %76 = call i32 @quicly_connection_is_ready(i32 %75)
  %77 = call i32 @ok(i32 %76)
  %78 = load i32, i32* @client, align 4
  %79 = call i32 @quicly_open_stream(i32 %78, %struct.TYPE_23__** %2, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  store %struct.TYPE_22__* %86, %struct.TYPE_22__** %4, align 8
  store i64 0, i64* %6, align 8
  br label %87

87:                                               ; preds = %96, %25
  %88 = load i64, i64* %6, align 8
  %89 = icmp ult i64 %88, 16
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %92 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  %93 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  %94 = call i32 @strlen(i8* %93)
  %95 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_23__* %91, i8* %92, i32 %94)
  br label %96

96:                                               ; preds = %90
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %87

99:                                               ; preds = %87
  %100 = load i32, i32* @client, align 4
  %101 = load i32, i32* @server, align 4
  %102 = call i32 @transmit(i32 %100, i32 %101)
  %103 = load i32, i32* @server, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.TYPE_23__* @quicly_get_stream(i32 %103, i32 %106)
  store %struct.TYPE_23__* %107, %struct.TYPE_23__** %3, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %109 = icmp ne %struct.TYPE_23__* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i32 @ok(i32 %110)
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  store %struct.TYPE_22__* %114, %struct.TYPE_22__** %5, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  %119 = call i32 @buffer_is(i32* %117, i8* %118)
  %120 = call i32 @ok(i32 %119)
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %122 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  %123 = call i32 @strlen(i8* %122)
  %124 = call i32 @quicly_streambuf_ingress_shift(%struct.TYPE_23__* %121, i32 %123)
  store i64 1, i64* %6, align 8
  br label %125

125:                                              ; preds = %145, %99
  %126 = load i64, i64* %6, align 8
  %127 = icmp ult i64 %126, 16
  br i1 %127, label %128, label %148

128:                                              ; preds = %125
  %129 = load i32, i32* @server, align 4
  %130 = load i32, i32* @client, align 4
  %131 = call i32 @transmit(i32 %129, i32 %130)
  %132 = load i32, i32* @client, align 4
  %133 = load i32, i32* @server, align 4
  %134 = call i32 @transmit(i32 %132, i32 %133)
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  %139 = call i32 @buffer_is(i32* %137, i8* %138)
  %140 = call i32 @ok(i32 %139)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %142 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i64 0, i64 0
  %143 = call i32 @strlen(i8* %142)
  %144 = call i32 @quicly_streambuf_ingress_shift(%struct.TYPE_23__* %141, i32 %143)
  br label %145

145:                                              ; preds = %128
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %6, align 8
  br label %125

148:                                              ; preds = %125
  %149 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %150 = load i32, i32* @quic_now, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* @quic_now, align 4
  %154 = load i32, i32* @server, align 4
  %155 = load i32, i32* @client, align 4
  %156 = call i32 @transmit(i32 %154, i32 %155)
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @ok(i32 %164)
  %166 = load i32, i32* %1, align 4
  store i32 %166, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @quic_ctx, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @quicly_connect(i32*, %struct.TYPE_16__*, i8*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @new_master_id(...) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_send(i32, i32**, i64*) #1

declare dso_local i64 @quicly_get_first_timeout(i32) #1

declare dso_local i32 @decode_packets(i32*, i32**, i32) #1

declare dso_local i32 @quicly_accept(i32*, %struct.TYPE_16__*, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @free_packets(i32**, i32) #1

declare dso_local i32 @transmit(i32, i32) #1

declare dso_local i64 @quicly_get_state(i32) #1

declare dso_local i32 @quicly_connection_is_ready(i32) #1

declare dso_local i32 @quicly_open_stream(i32, %struct.TYPE_23__**, i32) #1

declare dso_local i32 @quicly_streambuf_egress_write(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_23__* @quicly_get_stream(i32, i32) #1

declare dso_local i32 @buffer_is(i32*, i8*) #1

declare dso_local i32 @quicly_streambuf_ingress_shift(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
