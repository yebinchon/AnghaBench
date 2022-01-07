; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.alg_sock = type { %struct.crypto_skcipher*, %struct.sock* }
%struct.crypto_skcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @skcipher_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.alg_sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.alg_sock*, align 8
  %11 = alloca %struct.crypto_skcipher*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %7, align 8
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call %struct.alg_sock* @alg_sk(%struct.sock* %16)
  store %struct.alg_sock* %17, %struct.alg_sock** %8, align 8
  %18 = load %struct.alg_sock*, %struct.alg_sock** %8, align 8
  %19 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %18, i32 0, i32 1
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call %struct.alg_sock* @alg_sk(%struct.sock* %21)
  store %struct.alg_sock* %22, %struct.alg_sock** %10, align 8
  %23 = load %struct.alg_sock*, %struct.alg_sock** %10, align 8
  %24 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %23, i32 0, i32 0
  %25 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %24, align 8
  store %struct.crypto_skcipher* %25, %struct.crypto_skcipher** %11, align 8
  %26 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %27 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.socket*, %struct.socket** %4, align 8
  %29 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @af_alg_sendmsg(%struct.socket* %28, %struct.msghdr* %29, i64 %30, i32 %31)
  ret i32 %32
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @af_alg_sendmsg(%struct.socket*, %struct.msghdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
