; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_aead.c_aead_accept_parent_nokey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_aead.c_aead_accept_parent_nokey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.af_alg_ctx = type { i32, i32, i64, i64, i64, i64, i32, i64, i32, %struct.af_alg_ctx* }
%struct.alg_sock = type { %struct.af_alg_ctx* }
%struct.aead_tfm = type { %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aead_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sock*)* @aead_accept_parent_nokey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_accept_parent_nokey(i8* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.af_alg_ctx*, align 8
  %7 = alloca %struct.alg_sock*, align 8
  %8 = alloca %struct.aead_tfm*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.alg_sock* @alg_sk(%struct.sock* %12)
  store %struct.alg_sock* %13, %struct.alg_sock** %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.aead_tfm*
  store %struct.aead_tfm* %15, %struct.aead_tfm** %8, align 8
  %16 = load %struct.aead_tfm*, %struct.aead_tfm** %8, align 8
  %17 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %16, i32 0, i32 0
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %17, align 8
  store %struct.crypto_aead* %18, %struct.crypto_aead** %9, align 8
  store i32 72, i32* %10, align 4
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %20 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @sock_kmalloc(%struct.sock* %21, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.af_alg_ctx*
  store %struct.af_alg_ctx* %25, %struct.af_alg_ctx** %6, align 8
  %26 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %27 = icmp ne %struct.af_alg_ctx* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %87

31:                                               ; preds = %2
  %32 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @memset(%struct.af_alg_ctx* %32, i32 0, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @sock_kmalloc(%struct.sock* %35, i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.af_alg_ctx*
  %40 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %40, i32 0, i32 9
  store %struct.af_alg_ctx* %39, %struct.af_alg_ctx** %41, align 8
  %42 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %42, i32 0, i32 9
  %44 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %43, align 8
  %45 = icmp ne %struct.af_alg_ctx* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %31
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @sock_kfree_s(%struct.sock* %47, %struct.af_alg_ctx* %48, i32 %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %87

53:                                               ; preds = %31
  %54 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %54, i32 0, i32 9
  %56 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @memset(%struct.af_alg_ctx* %56, i32 0, i32 %57)
  %59 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %60 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %59, i32 0, i32 8
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  %67 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %67, i32 0, i32 6
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  %70 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %77 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %78, i32 0, i32 1
  %80 = call i32 @crypto_init_wait(i32* %79)
  %81 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %82 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %83 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %82, i32 0, i32 0
  store %struct.af_alg_ctx* %81, %struct.af_alg_ctx** %83, align 8
  %84 = load i32, i32* @aead_sock_destruct, align 4
  %85 = load %struct.sock*, %struct.sock** %5, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %53, %46, %28
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i8* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @memset(%struct.af_alg_ctx*, i32, i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.af_alg_ctx*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @crypto_init_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
