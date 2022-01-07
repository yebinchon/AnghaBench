; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_aead_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_aead_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.simd_aead_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.crypto_aead }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @simd_aead_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simd_aead_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.simd_aead_ctx*, align 8
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %7 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %8 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %7)
  store %struct.crypto_aead* %8, %struct.crypto_aead** %3, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = call %struct.simd_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.simd_aead_ctx* %10, %struct.simd_aead_ctx** %4, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %12 = call %struct.aead_request* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.aead_request* %12, %struct.aead_request** %5, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %15 = bitcast %struct.aead_request* %13 to i8*
  %16 = bitcast %struct.aead_request* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = call i32 (...) @crypto_simd_usable()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = call i64 (...) @in_atomic()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.simd_aead_ctx*, %struct.simd_aead_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.simd_aead_ctx, %struct.simd_aead_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i64 @cryptd_aead_queued(%struct.TYPE_3__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22, %1
  %29 = load %struct.simd_aead_ctx*, %struct.simd_aead_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.simd_aead_ctx, %struct.simd_aead_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.crypto_aead* %32, %struct.crypto_aead** %6, align 8
  br label %38

33:                                               ; preds = %22, %19
  %34 = load %struct.simd_aead_ctx*, %struct.simd_aead_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.simd_aead_ctx, %struct.simd_aead_ctx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call %struct.crypto_aead* @cryptd_aead_child(%struct.TYPE_3__* %36)
  store %struct.crypto_aead* %37, %struct.crypto_aead** %6, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %41 = call i32 @aead_request_set_tfm(%struct.aead_request* %39, %struct.crypto_aead* %40)
  %42 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %43 = call i32 @crypto_aead_encrypt(%struct.aead_request* %42)
  ret i32 %43
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.simd_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_request* @aead_request_ctx(%struct.aead_request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i64 @in_atomic(...) #1

declare dso_local i64 @cryptd_aead_queued(%struct.TYPE_3__*) #1

declare dso_local %struct.crypto_aead* @cryptd_aead_child(%struct.TYPE_3__*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, %struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
