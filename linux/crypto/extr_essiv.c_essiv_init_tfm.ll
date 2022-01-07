; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.essiv_instance_ctx = type { i32, i32 }
%struct.essiv_tfm_ctx = type { %struct.crypto_shash*, %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.crypto_cipher = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.essiv_instance_ctx*, %struct.essiv_tfm_ctx*)* @essiv_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @essiv_init_tfm(%struct.essiv_instance_ctx* %0, %struct.essiv_tfm_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.essiv_instance_ctx*, align 8
  %5 = alloca %struct.essiv_tfm_ctx*, align 8
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca %struct.crypto_shash*, align 8
  %8 = alloca i32, align 4
  store %struct.essiv_instance_ctx* %0, %struct.essiv_instance_ctx** %4, align 8
  store %struct.essiv_tfm_ctx* %1, %struct.essiv_tfm_ctx** %5, align 8
  %9 = load %struct.essiv_instance_ctx*, %struct.essiv_instance_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.essiv_instance_ctx, %struct.essiv_instance_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.crypto_shash* @crypto_alloc_cipher(i32 %11, i32 0, i32 0)
  %13 = bitcast %struct.crypto_shash* %12 to %struct.crypto_cipher*
  store %struct.crypto_cipher* %13, %struct.crypto_cipher** %6, align 8
  %14 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %15 = bitcast %struct.crypto_cipher* %14 to %struct.crypto_shash*
  %16 = call i64 @IS_ERR(%struct.crypto_shash* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %20 = bitcast %struct.crypto_cipher* %19 to %struct.crypto_shash*
  %21 = call i32 @PTR_ERR(%struct.crypto_shash* %20)
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.essiv_instance_ctx*, %struct.essiv_instance_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.essiv_instance_ctx, %struct.essiv_instance_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.crypto_shash* @crypto_alloc_shash(i32 %25, i32 0, i32 0)
  store %struct.crypto_shash* %26, %struct.crypto_shash** %7, align 8
  %27 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %28 = call i64 @IS_ERR(%struct.crypto_shash* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %32 = call i32 @PTR_ERR(%struct.crypto_shash* %31)
  store i32 %32, i32* %8, align 4
  br label %41

33:                                               ; preds = %22
  %34 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %35 = bitcast %struct.crypto_cipher* %34 to %struct.crypto_shash*
  %36 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %36, i32 0, i32 1
  store %struct.crypto_shash* %35, %struct.crypto_shash** %37, align 8
  %38 = load %struct.crypto_shash*, %struct.crypto_shash** %7, align 8
  %39 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %39, i32 0, i32 0
  store %struct.crypto_shash* %38, %struct.crypto_shash** %40, align 8
  store i32 0, i32* %3, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %43 = bitcast %struct.crypto_cipher* %42 to %struct.crypto_shash*
  %44 = call i32 @crypto_free_cipher(%struct.crypto_shash* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %33, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.crypto_shash* @crypto_alloc_cipher(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i32, i32, i32) #1

declare dso_local i32 @crypto_free_cipher(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
