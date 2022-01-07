; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_spawn_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_spawn_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_spawn = type { i32 }
%struct.crypto_alg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_tfm* @crypto_spawn_tfm(%struct.crypto_spawn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca %struct.crypto_spawn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca %struct.crypto_tfm*, align 8
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %11 = call %struct.crypto_tfm* @crypto_spawn_alg(%struct.crypto_spawn* %10)
  %12 = bitcast %struct.crypto_tfm* %11 to %struct.crypto_alg*
  store %struct.crypto_alg* %12, %struct.crypto_alg** %8, align 8
  %13 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %14 = bitcast %struct.crypto_alg* %13 to %struct.crypto_tfm*
  %15 = call i64 @IS_ERR(%struct.crypto_tfm* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %19 = bitcast %struct.crypto_alg* %18 to %struct.crypto_tfm*
  %20 = call %struct.crypto_tfm* @ERR_CAST(%struct.crypto_tfm* %19)
  store %struct.crypto_tfm* %20, %struct.crypto_tfm** %4, align 8
  br label %52

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.crypto_tfm* @ERR_PTR(i32 %23)
  store %struct.crypto_tfm* %24, %struct.crypto_tfm** %9, align 8
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %47

35:                                               ; preds = %21
  %36 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %37 = bitcast %struct.crypto_alg* %36 to %struct.crypto_tfm*
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_tfm* %37, i32 %38, i32 %39)
  store %struct.crypto_tfm* %40, %struct.crypto_tfm** %9, align 8
  %41 = load %struct.crypto_tfm*, %struct.crypto_tfm** %9, align 8
  %42 = call i64 @IS_ERR(%struct.crypto_tfm* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %47

45:                                               ; preds = %35
  %46 = load %struct.crypto_tfm*, %struct.crypto_tfm** %9, align 8
  store %struct.crypto_tfm* %46, %struct.crypto_tfm** %4, align 8
  br label %52

47:                                               ; preds = %44, %34
  %48 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %49 = bitcast %struct.crypto_alg* %48 to %struct.crypto_tfm*
  %50 = call i32 @crypto_mod_put(%struct.crypto_tfm* %49)
  %51 = load %struct.crypto_tfm*, %struct.crypto_tfm** %9, align 8
  store %struct.crypto_tfm* %51, %struct.crypto_tfm** %4, align 8
  br label %52

52:                                               ; preds = %47, %45, %17
  %53 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  ret %struct.crypto_tfm* %53
}

declare dso_local %struct.crypto_tfm* @crypto_spawn_alg(%struct.crypto_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_tfm* @ERR_CAST(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_tfm* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_tfm*, i32, i32) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
