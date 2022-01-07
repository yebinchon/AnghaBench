; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_check_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.alg_sock = type { i32, %struct.crypto_skcipher*, %struct.sock* }
%struct.crypto_skcipher = type { i32 }

@ENOKEY = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @skcipher_check_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_check_key(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.alg_sock*, align 8
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.alg_sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.socket*, %struct.socket** %2, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = call %struct.alg_sock* @alg_sk(%struct.sock* %12)
  store %struct.alg_sock* %13, %struct.alg_sock** %8, align 8
  %14 = load %struct.sock*, %struct.sock** %7, align 8
  %15 = call i32 @lock_sock(%struct.sock* %14)
  %16 = load %struct.alg_sock*, %struct.alg_sock** %8, align 8
  %17 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.alg_sock*, %struct.alg_sock** %8, align 8
  %23 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %22, i32 0, i32 2
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %4, align 8
  %25 = load %struct.alg_sock*, %struct.alg_sock** %8, align 8
  %26 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %25, i32 0, i32 2
  %27 = load %struct.sock*, %struct.sock** %26, align 8
  %28 = call %struct.alg_sock* @alg_sk(%struct.sock* %27)
  store %struct.alg_sock* %28, %struct.alg_sock** %5, align 8
  %29 = load %struct.alg_sock*, %struct.alg_sock** %5, align 8
  %30 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %29, i32 0, i32 1
  %31 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %30, align 8
  store %struct.crypto_skcipher* %31, %struct.crypto_skcipher** %6, align 8
  %32 = load i32, i32* @ENOKEY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %36 = call i32 @lock_sock_nested(%struct.sock* %34, i32 %35)
  %37 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %38 = call i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher* %37)
  %39 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %57

43:                                               ; preds = %21
  %44 = load %struct.alg_sock*, %struct.alg_sock** %5, align 8
  %45 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = call i32 @sock_hold(%struct.sock* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.alg_sock*, %struct.alg_sock** %8, align 8
  %54 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = call i32 @sock_put(%struct.sock* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %42
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = call i32 @release_sock(%struct.sock* %58)
  br label %60

60:                                               ; preds = %57, %20
  %61 = load %struct.sock*, %struct.sock** %7, align 8
  %62 = call i32 @release_sock(%struct.sock* %61)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @lock_sock_nested(%struct.sock*, i32) #1

declare dso_local i32 @crypto_skcipher_get_flags(%struct.crypto_skcipher*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
