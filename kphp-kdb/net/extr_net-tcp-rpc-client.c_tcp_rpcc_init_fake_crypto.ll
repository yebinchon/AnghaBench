; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_init_fake_crypto.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_init_fake_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_nonce_packet = type { i32, i32 }
%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i32 }

@tcp_rpcc_init_fake_crypto.buf = internal global %struct.tcp_rpc_nonce_packet zeroinitializer, align 4
@RPC_NONCE = common dso_local global i32 0, align 4
@RPC_CRYPTO_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rpcc_init_fake_crypto(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_fake_crypto.buf, i32 0, i32 8)
  %13 = load i32, i32* @RPC_NONCE, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_fake_crypto.buf, i32 0, i32 1), align 4
  %14 = load i32, i32* @RPC_CRYPTO_NONE, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_fake_crypto.buf, i32 0, i32 0), align 4
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = call i32 @tcp_rpc_conn_send_data(%struct.connection* %15, i32 8, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_fake_crypto.buf)
  %17 = load %struct.connection*, %struct.connection** %3, align 8
  %18 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 14
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 4
  store i32 %29, i32* %27, align 4
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %11, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @memset(%struct.tcp_rpc_nonce_packet*, i32, i32) #1

declare dso_local i32 @tcp_rpc_conn_send_data(%struct.connection*, i32, %struct.tcp_rpc_nonce_packet*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
