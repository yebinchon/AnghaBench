; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_loss.c_test_even.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_loss.c_test_even.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.loss_cond_t = type { i32 (%struct.loss_cond_t*)* }

@QUICLY_LOSS_SPEC_CONF = common dso_local global i8* null, align 8
@quic_ctx = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@quic_now = common dso_local global i64 0, align 8
@client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@fake_address = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@server = common dso_local global i32 0, align 4
@QUICLY_STATE_CONNECTED = common dso_local global i64 0, align 8
@QUICLY_DELAYED_ACK_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_even to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_even() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.loss_cond_t, align 8
  %3 = alloca %struct.loss_cond_t, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i8*, i8** @QUICLY_LOSS_SPEC_CONF, align 8
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @quic_ctx, i32 0, i32 0), align 8
  %12 = call i32 @init_cond_even(%struct.loss_cond_t* %2)
  %13 = call i32 @init_cond_even(%struct.loss_cond_t* %3)
  store i64 0, i64* @quic_now, align 8
  %14 = call i32 (...) @new_master_id()
  %15 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %16 = call i32 @quicly_connect(i32* @client, %struct.TYPE_5__* @quic_ctx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fake_address, i32 0, i32 0), i32* null, i32 %14, i32 %15, i32* null, i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19)
  store i64 1, i64* %8, align 8
  %21 = load i32, i32* @client, align 4
  %22 = call i32 @quicly_send(i32 %21, i32** %7, i64* %8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @ok(i32 %29)
  %31 = call i32 @decode_packets(i32* %9, i32** %7, i32 1)
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  %36 = call i32 (...) @new_master_id()
  %37 = call i32 @quicly_accept(i32* @server, %struct.TYPE_5__* @quic_ctx, i32* null, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fake_address, i32 0, i32 0), i32* %9, i32* null, i32 %36, i32* null)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  %42 = call i32 @free_packets(i32** %7, i32 1)
  %43 = getelementptr inbounds %struct.loss_cond_t, %struct.loss_cond_t* %3, i32 0, i32 0
  %44 = load i32 (%struct.loss_cond_t*)*, i32 (%struct.loss_cond_t*)** %43, align 8
  %45 = call i32 %44(%struct.loss_cond_t* %3)
  %46 = load i32, i32* @server, align 4
  %47 = load i32, i32* @client, align 4
  %48 = call i32 @transmit_cond(i32 %46, i32 %47, i64* %4, i64* %5, %struct.loss_cond_t* %2, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = icmp eq i64 %53, 2
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = icmp eq i64 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59)
  %61 = load i32, i32* @client, align 4
  %62 = call i64 @quicly_get_state(i32 %61)
  %63 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65)
  %67 = load i32, i32* @client, align 4
  %68 = call i32 @quicly_connection_is_ready(i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ok(i32 %71)
  %73 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %74 = load i64, i64* @quic_now, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* @quic_now, align 8
  %76 = load i32, i32* @client, align 4
  %77 = load i32, i32* @server, align 4
  %78 = call i32 @transmit_cond(i32 %76, i32 %77, i64* %4, i64* %5, %struct.loss_cond_t* %3, i32 0)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = icmp eq i64 %83, 1
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = load i64, i64* %5, align 8
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89)
  %91 = load i32, i32* @client, align 4
  %92 = call i64 @quicly_get_state(i32 %91)
  %93 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @ok(i32 %95)
  %97 = load i32, i32* @client, align 4
  %98 = call i32 @quicly_connection_is_ready(i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101)
  %103 = load i64, i64* @quic_now, align 8
  %104 = add nsw i64 %103, 1000
  store i64 %104, i64* @quic_now, align 8
  %105 = load i32, i32* @server, align 4
  %106 = load i32, i32* @client, align 4
  %107 = call i32 @transmit_cond(i32 %105, i32 %106, i64* %4, i64* %5, %struct.loss_cond_t* %2, i32 0)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @ok(i32 %110)
  %112 = load i64, i64* %4, align 8
  %113 = icmp eq i64 %112, 1
  %114 = zext i1 %113 to i32
  %115 = call i32 @ok(i32 %114)
  %116 = load i64, i64* %5, align 8
  %117 = icmp eq i64 %116, 1
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118)
  %120 = load i32, i32* @client, align 4
  %121 = call i64 @quicly_get_state(i32 %120)
  %122 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @ok(i32 %124)
  %126 = load i32, i32* @client, align 4
  %127 = call i32 @quicly_connection_is_ready(i32 %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @ok(i32 %130)
  %132 = load i64, i64* @QUICLY_DELAYED_ACK_TIMEOUT, align 8
  %133 = load i64, i64* @quic_now, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* @quic_now, align 8
  %135 = load i32, i32* @client, align 4
  %136 = load i32, i32* @server, align 4
  %137 = call i32 @transmit_cond(i32 %135, i32 %136, i64* %4, i64* %5, %struct.loss_cond_t* %3, i32 0)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @ok(i32 %140)
  %142 = load i64, i64* %4, align 8
  %143 = icmp eq i64 %142, 1
  %144 = zext i1 %143 to i32
  %145 = call i32 @ok(i32 %144)
  %146 = load i64, i64* %5, align 8
  %147 = icmp eq i64 %146, 1
  %148 = zext i1 %147 to i32
  %149 = call i32 @ok(i32 %148)
  %150 = load i64, i64* @quic_now, align 8
  %151 = add nsw i64 %150, 1000
  store i64 %151, i64* @quic_now, align 8
  %152 = load i32, i32* @server, align 4
  %153 = load i32, i32* @client, align 4
  %154 = call i32 @transmit_cond(i32 %152, i32 %153, i64* %4, i64* %5, %struct.loss_cond_t* %2, i32 0)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @ok(i32 %157)
  %159 = load i64, i64* %4, align 8
  %160 = icmp eq i64 %159, 1
  %161 = zext i1 %160 to i32
  %162 = call i32 @ok(i32 %161)
  %163 = load i64, i64* %5, align 8
  %164 = icmp eq i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i32 @ok(i32 %165)
  %167 = load i32, i32* @client, align 4
  %168 = call i64 @quicly_get_state(i32 %167)
  %169 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @ok(i32 %171)
  %173 = load i32, i32* @client, align 4
  %174 = call i32 @quicly_connection_is_ready(i32 %173)
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @ok(i32 %177)
  %179 = load i32, i32* @client, align 4
  %180 = load i32, i32* @server, align 4
  %181 = call i32 @transmit_cond(i32 %179, i32 %180, i64* %4, i64* %5, %struct.loss_cond_t* %3, i32 0)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @ok(i32 %184)
  %186 = load i64, i64* %4, align 8
  %187 = icmp eq i64 %186, 1
  %188 = zext i1 %187 to i32
  %189 = call i32 @ok(i32 %188)
  %190 = load i64, i64* %5, align 8
  %191 = icmp eq i64 %190, 0
  %192 = zext i1 %191 to i32
  %193 = call i32 @ok(i32 %192)
  %194 = load i64, i64* @quic_now, align 8
  %195 = add nsw i64 %194, 1000
  store i64 %195, i64* @quic_now, align 8
  %196 = load i32, i32* @server, align 4
  %197 = load i32, i32* @client, align 4
  %198 = call i32 @transmit_cond(i32 %196, i32 %197, i64* %4, i64* %5, %struct.loss_cond_t* %2, i32 0)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @ok(i32 %201)
  %203 = load i64, i64* %4, align 8
  %204 = icmp eq i64 %203, 1
  %205 = zext i1 %204 to i32
  %206 = call i32 @ok(i32 %205)
  %207 = load i64, i64* %5, align 8
  %208 = icmp eq i64 %207, 1
  %209 = zext i1 %208 to i32
  %210 = call i32 @ok(i32 %209)
  %211 = load i32, i32* @client, align 4
  %212 = call i64 @quicly_get_state(i32 %211)
  %213 = load i64, i64* @QUICLY_STATE_CONNECTED, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @ok(i32 %215)
  %217 = load i32, i32* @client, align 4
  %218 = call i32 @quicly_connection_is_ready(i32 %217)
  %219 = call i32 @ok(i32 %218)
  %220 = load i8*, i8** @QUICLY_LOSS_SPEC_CONF, align 8
  store i8* %220, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @quic_ctx, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @init_cond_even(%struct.loss_cond_t*) #1

declare dso_local i32 @quicly_connect(i32*, %struct.TYPE_5__*, i8*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @new_master_id(...) #1

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @quicly_send(i32, i32**, i64*) #1

declare dso_local i32 @decode_packets(i32*, i32**, i32) #1

declare dso_local i32 @quicly_accept(i32*, %struct.TYPE_5__*, i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @free_packets(i32**, i32) #1

declare dso_local i32 @transmit_cond(i32, i32, i64*, i64*, %struct.loss_cond_t*, i32) #1

declare dso_local i64 @quicly_get_state(i32) #1

declare dso_local i32 @quicly_connection_is_ready(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
