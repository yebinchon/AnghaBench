; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.aead_instance = type { i32 }
%struct.pcrypt_instance_ctx = type { i32, i32 }
%struct.pcrypt_aead_ctx = type { %struct.crypto_aead*, i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @pcrypt_aead_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcrypt_aead_init_tfm(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aead_instance*, align 8
  %7 = alloca %struct.pcrypt_instance_ctx*, align 8
  %8 = alloca %struct.pcrypt_aead_ctx*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %11 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %10)
  store %struct.aead_instance* %11, %struct.aead_instance** %6, align 8
  %12 = load %struct.aead_instance*, %struct.aead_instance** %6, align 8
  %13 = call %struct.pcrypt_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %12)
  store %struct.pcrypt_instance_ctx* %13, %struct.pcrypt_instance_ctx** %7, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %15 = call %struct.pcrypt_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  store %struct.pcrypt_aead_ctx* %15, %struct.pcrypt_aead_ctx** %8, align 8
  %16 = load %struct.pcrypt_instance_ctx*, %struct.pcrypt_instance_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.pcrypt_instance_ctx, %struct.pcrypt_instance_ctx* %16, i32 0, i32 1
  %18 = call i64 @atomic_inc_return(i32* %17)
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @cpu_online_mask, align 4
  %21 = call i32 @cpumask_weight(i32 %20)
  %22 = urem i32 %19, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @cpu_online_mask, align 4
  %24 = call i32 @cpumask_first(i32 %23)
  %25 = load %struct.pcrypt_aead_ctx*, %struct.pcrypt_aead_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.pcrypt_aead_ctx, %struct.pcrypt_aead_ctx* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %39, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.pcrypt_aead_ctx*, %struct.pcrypt_aead_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.pcrypt_aead_ctx, %struct.pcrypt_aead_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @cpu_online_mask, align 4
  %36 = call i32 @cpumask_next(i32 %34, i32 %35)
  %37 = load %struct.pcrypt_aead_ctx*, %struct.pcrypt_aead_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.pcrypt_aead_ctx, %struct.pcrypt_aead_ctx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.pcrypt_instance_ctx*, %struct.pcrypt_instance_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.pcrypt_instance_ctx, %struct.pcrypt_instance_ctx* %43, i32 0, i32 0
  %45 = call %struct.crypto_aead* @crypto_spawn_aead(i32* %44)
  store %struct.crypto_aead* %45, %struct.crypto_aead** %9, align 8
  %46 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %47 = call i64 @IS_ERR(%struct.crypto_aead* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %51 = call i32 @PTR_ERR(%struct.crypto_aead* %50)
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %42
  %53 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %54 = load %struct.pcrypt_aead_ctx*, %struct.pcrypt_aead_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.pcrypt_aead_ctx, %struct.pcrypt_aead_ctx* %54, i32 0, i32 0
  store %struct.crypto_aead* %53, %struct.crypto_aead** %55, align 8
  %56 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %57 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %58 = call i64 @crypto_aead_reqsize(%struct.crypto_aead* %57)
  %59 = add i64 8, %58
  %60 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %56, i64 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %49
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.pcrypt_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.pcrypt_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local %struct.crypto_aead* @crypto_spawn_aead(i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i64) #1

declare dso_local i64 @crypto_aead_reqsize(%struct.crypto_aead*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
