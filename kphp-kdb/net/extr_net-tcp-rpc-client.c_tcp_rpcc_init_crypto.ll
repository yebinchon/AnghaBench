; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_init_crypto.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-client.c_tcp_rpcc_init_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_rpc_nonce_packet = type { i32, i32, i32, i32, i32 }
%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@tcp_rpcc_init_crypto.buf = internal global %struct.tcp_rpc_nonce_packet zeroinitializer, align 4
@RPC_NONCE = common dso_local global i32 0, align 4
@RPC_CRYPTO_AES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rpcc_init_crypto(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.connection*, %struct.connection** %3, align 8
  %12 = call i32 @tcp_rpcc_init_fake_crypto(%struct.connection* %11)
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = call i32 @time(i32 0)
  %15 = load %struct.connection*, %struct.connection** %3, align 8
  %16 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.connection*, %struct.connection** %3, align 8
  %19 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @aes_generate_nonce(i32 %21)
  %23 = call i32 @memset(%struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_crypto.buf, i32 0, i32 20)
  %24 = load i32, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_crypto.buf, i32 0, i32 4), align 4
  %25 = load %struct.connection*, %struct.connection** %3, align 8
  %26 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i32 %24, i32 %28, i32 16)
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_crypto.buf, i32 0, i32 3), align 4
  %34 = load i32, i32* @RPC_NONCE, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_crypto.buf, i32 0, i32 2), align 4
  %35 = call i32 (...) @get_crypto_key_id()
  store i32 %35, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_crypto.buf, i32 0, i32 1), align 4
  %36 = load i32, i32* @RPC_CRYPTO_AES, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.tcp_rpc_nonce_packet, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_crypto.buf, i32 0, i32 0), align 4
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = call i32 @tcp_rpc_conn_send_data(%struct.connection* %37, i32 20, %struct.tcp_rpc_nonce_packet* @tcp_rpcc_init_crypto.buf)
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 14
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.connection*, %struct.connection** %3, align 8
  %48 = call %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* %49, align 4
  %52 = load %struct.connection*, %struct.connection** %3, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %13, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_2__* @TCP_RPC_DATA(%struct.connection*) #1

declare dso_local i32 @tcp_rpcc_init_fake_crypto(%struct.connection*) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @aes_generate_nonce(i32) #1

declare dso_local i32 @memset(%struct.tcp_rpc_nonce_packet*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_crypto_key_id(...) #1

declare dso_local i32 @tcp_rpc_conn_send_data(%struct.connection*, i32, %struct.tcp_rpc_nonce_packet*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
