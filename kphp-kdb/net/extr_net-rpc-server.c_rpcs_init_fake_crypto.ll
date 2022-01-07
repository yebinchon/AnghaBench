; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_init_fake_crypto.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-rpc-server.c_rpcs_init_fake_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_nonce_packet = type { i32, i32, i32, i32, i32 }
%struct.connection = type { i32 }
%struct.TYPE_2__ = type { i32 }

@rpcs_init_fake_crypto.buf = internal global %struct.rpc_nonce_packet zeroinitializer, align 4
@RPC_NONCE = common dso_local global i32 0, align 4
@RPC_CRYPTO_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcs_init_fake_crypto(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = call %struct.TYPE_2__* @RPCS_DATA(%struct.connection* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 0, i32 20)
  store i32 20, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 0, i32 0), align 4
  store i32 -2, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 0, i32 1), align 4
  %13 = load i32, i32* @RPC_NONCE, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 0, i32 4), align 4
  %14 = load i32, i32* @RPC_CRYPTO_NONE, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 0, i32 3), align 4
  %15 = call i32 @compute_crc32(%struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 16)
  store i32 %15, i32* getelementptr inbounds (%struct.rpc_nonce_packet, %struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 0, i32 2), align 4
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = call i32 @write_out(i32* %17, %struct.rpc_nonce_packet* @rpcs_init_fake_crypto.buf, i32 20)
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = call %struct.TYPE_2__* @RPCS_DATA(%struct.connection* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 14
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.connection*, %struct.connection** %3, align 8
  %28 = call %struct.TYPE_2__* @RPCS_DATA(%struct.connection* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 4
  store i32 %31, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %11, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @memset(%struct.rpc_nonce_packet*, i32, i32) #1

declare dso_local i32 @compute_crc32(%struct.rpc_nonce_packet*, i32) #1

declare dso_local i32 @write_out(i32*, %struct.rpc_nonce_packet*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
