; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_accept.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.alg_sock = type { %struct.hash_ctx*, i32 }
%struct.hash_ctx = type { i32, %struct.ahash_request }
%struct.ahash_request = type { i32 }

@HASH_MAX_STATESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32, i32)* @hash_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_accept(%struct.socket* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.alg_sock*, align 8
  %12 = alloca %struct.hash_ctx*, align 8
  %13 = alloca %struct.ahash_request*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sock*, align 8
  %17 = alloca %struct.alg_sock*, align 8
  %18 = alloca %struct.hash_ctx*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %10, align 8
  %25 = load %struct.sock*, %struct.sock** %10, align 8
  %26 = call %struct.alg_sock* @alg_sk(%struct.sock* %25)
  store %struct.alg_sock* %26, %struct.alg_sock** %11, align 8
  %27 = load %struct.alg_sock*, %struct.alg_sock** %11, align 8
  %28 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %27, i32 0, i32 0
  %29 = load %struct.hash_ctx*, %struct.hash_ctx** %28, align 8
  store %struct.hash_ctx* %29, %struct.hash_ctx** %12, align 8
  %30 = load %struct.hash_ctx*, %struct.hash_ctx** %12, align 8
  %31 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %30, i32 0, i32 1
  store %struct.ahash_request* %31, %struct.ahash_request** %13, align 8
  %32 = load i32, i32* @HASH_MAX_STATESIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %14, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %36 = load %struct.sock*, %struct.sock** %10, align 8
  %37 = call i32 @lock_sock(%struct.sock* %36)
  %38 = load %struct.hash_ctx*, %struct.hash_ctx** %12, align 8
  %39 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %4
  %44 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %45 = call i32 @crypto_ahash_export(%struct.ahash_request* %44, i8* %35)
  br label %47

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 0, %46 ]
  store i32 %48, i32* %20, align 4
  %49 = load %struct.sock*, %struct.sock** %10, align 8
  %50 = call i32 @release_sock(%struct.sock* %49)
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %20, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %95

55:                                               ; preds = %47
  %56 = load %struct.alg_sock*, %struct.alg_sock** %11, align 8
  %57 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.socket*, %struct.socket** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @af_alg_accept(i32 %58, %struct.socket* %59, i32 %60)
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %20, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %20, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %95

66:                                               ; preds = %55
  %67 = load %struct.socket*, %struct.socket** %7, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = load %struct.sock*, %struct.sock** %68, align 8
  store %struct.sock* %69, %struct.sock** %16, align 8
  %70 = load %struct.sock*, %struct.sock** %16, align 8
  %71 = call %struct.alg_sock* @alg_sk(%struct.sock* %70)
  store %struct.alg_sock* %71, %struct.alg_sock** %17, align 8
  %72 = load %struct.alg_sock*, %struct.alg_sock** %17, align 8
  %73 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %72, i32 0, i32 0
  %74 = load %struct.hash_ctx*, %struct.hash_ctx** %73, align 8
  store %struct.hash_ctx* %74, %struct.hash_ctx** %18, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.hash_ctx*, %struct.hash_ctx** %18, align 8
  %77 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %20, align 4
  store i32 %81, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %95

82:                                               ; preds = %66
  %83 = load %struct.hash_ctx*, %struct.hash_ctx** %18, align 8
  %84 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %83, i32 0, i32 1
  %85 = call i32 @crypto_ahash_import(%struct.ahash_request* %84, i8* %35)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.sock*, %struct.sock** %16, align 8
  %90 = call i32 @sock_orphan(%struct.sock* %89)
  %91 = load %struct.sock*, %struct.sock** %16, align 8
  %92 = call i32 @sock_put(%struct.sock* %91)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load i32, i32* %20, align 4
  store i32 %94, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %95

95:                                               ; preds = %93, %80, %64, %53
  %96 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @crypto_ahash_export(%struct.ahash_request*, i8*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @af_alg_accept(i32, %struct.socket*, i32) #1

declare dso_local i32 @crypto_ahash_import(%struct.ahash_request*, i8*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
