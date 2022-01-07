; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_rng.c_rng_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_rng.c_rng_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.alg_sock = type { %struct.rng_ctx* }
%struct.rng_ctx = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @rng_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rng_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.alg_sock*, align 8
  %12 = alloca %struct.rng_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %10, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call %struct.alg_sock* @alg_sk(%struct.sock* %21)
  store %struct.alg_sock* %22, %struct.alg_sock** %11, align 8
  %23 = load %struct.alg_sock*, %struct.alg_sock** %11, align 8
  %24 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %23, i32 0, i32 0
  %25 = load %struct.rng_ctx*, %struct.rng_ctx** %24, align 8
  store %struct.rng_ctx* %25, %struct.rng_ctx** %12, align 8
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* @MAXSIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %71

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @MAXSIZE, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @MAXSIZE, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @memset(i32* %31, i32 0, i64 %44)
  %46 = load %struct.rng_ctx*, %struct.rng_ctx** %12, align 8
  %47 = getelementptr inbounds %struct.rng_ctx, %struct.rng_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @crypto_rng_get_bytes(i32 %48, i32* %31, i64 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %71

55:                                               ; preds = %43
  %56 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @memcpy_to_msg(%struct.msghdr* %56, i32* %31, i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @memzero_explicit(i32* %31, i64 %59)
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  br label %68

66:                                               ; preds = %55
  %67 = load i64, i64* %8, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i64 [ %65, %63 ], [ %67, %66 ]
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %71

71:                                               ; preds = %68, %53, %34
  %72 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @crypto_rng_get_bytes(i32, i32*, i64) #1

declare dso_local i32 @memcpy_to_msg(%struct.msghdr*, i32*, i64) #1

declare dso_local i32 @memzero_explicit(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
