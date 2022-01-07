; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aead.c_aead_init_geniv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aead.c_aead_init_geniv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.aead_geniv_ctx = type { %struct.crypto_aead*, %struct.crypto_aead*, i32, i32 }
%struct.aead_instance = type { i32 }

@crypto_default_rng = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aead_init_geniv(%struct.crypto_aead* %0) #0 {
  %2 = alloca %struct.crypto_aead*, align 8
  %3 = alloca %struct.aead_geniv_ctx*, align 8
  %4 = alloca %struct.aead_instance*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %2, align 8
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %8 = call %struct.aead_geniv_ctx* @crypto_aead_ctx(%struct.crypto_aead* %7)
  store %struct.aead_geniv_ctx* %8, %struct.aead_geniv_ctx** %3, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %10 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %9)
  store %struct.aead_instance* %10, %struct.aead_instance** %4, align 8
  %11 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = call i32 (...) @crypto_get_default_rng()
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %63

18:                                               ; preds = %1
  %19 = load i32, i32* @crypto_default_rng, align 4
  %20 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %24 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %23)
  %25 = call i32 @crypto_rng_get_bytes(i32 %19, i32 %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = call i32 (...) @crypto_put_default_rng()
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %63

30:                                               ; preds = %18
  %31 = call %struct.crypto_aead* (...) @crypto_get_default_null_skcipher()
  %32 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %32, i32 0, i32 1
  store %struct.crypto_aead* %31, %struct.crypto_aead** %33, align 8
  %34 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %34, i32 0, i32 1
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %35, align 8
  %37 = call i32 @PTR_ERR(%struct.crypto_aead* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %38, i32 0, i32 1
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %39, align 8
  %41 = call i64 @IS_ERR(%struct.crypto_aead* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %63

44:                                               ; preds = %30
  %45 = load %struct.aead_instance*, %struct.aead_instance** %4, align 8
  %46 = call i32 @aead_instance_ctx(%struct.aead_instance* %45)
  %47 = call %struct.crypto_aead* @crypto_spawn_aead(i32 %46)
  store %struct.crypto_aead* %47, %struct.crypto_aead** %5, align 8
  %48 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.crypto_aead* %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %51 = call i64 @IS_ERR(%struct.crypto_aead* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %65

54:                                               ; preds = %44
  %55 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %56 = load %struct.aead_geniv_ctx*, %struct.aead_geniv_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.aead_geniv_ctx, %struct.aead_geniv_ctx* %56, i32 0, i32 0
  store %struct.crypto_aead* %55, %struct.crypto_aead** %57, align 8
  %58 = load %struct.crypto_aead*, %struct.crypto_aead** %2, align 8
  %59 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %60 = call i64 @crypto_aead_reqsize(%struct.crypto_aead* %59)
  %61 = add i64 %60, 4
  %62 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %58, i64 %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %65, %54, %43, %29, %17
  %64 = load i32, i32* %6, align 4
  ret i32 %64

65:                                               ; preds = %53
  %66 = call i32 (...) @crypto_put_default_null_skcipher()
  br label %63
}

declare dso_local %struct.aead_geniv_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @crypto_get_default_rng(...) #1

declare dso_local i32 @crypto_rng_get_bytes(i32, i32, i32) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_put_default_rng(...) #1

declare dso_local %struct.crypto_aead* @crypto_get_default_null_skcipher(...) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_aead*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_aead* @crypto_spawn_aead(i32) #1

declare dso_local i32 @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i64) #1

declare dso_local i64 @crypto_aead_reqsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_put_default_null_skcipher(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
