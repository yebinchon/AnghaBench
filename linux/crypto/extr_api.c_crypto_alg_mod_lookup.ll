; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_api.c_crypto_alg_mod_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_api.c_crypto_alg_mod_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }

@CRYPTO_ALG_INTERNAL = common dso_local global i32 0, align 4
@CRYPTO_MSG_ALG_REQUEST = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_alg* @crypto_alg_mod_lookup(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca %struct.crypto_alg*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.crypto_alg* @crypto_larval_lookup(i8* %22, i32 %23, i32 %24)
  store %struct.crypto_alg* %25, %struct.crypto_alg** %9, align 8
  %26 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %27 = call i64 @IS_ERR(%struct.crypto_alg* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %31 = call i32 @crypto_is_larval(%struct.crypto_alg* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  store %struct.crypto_alg* %34, %struct.crypto_alg** %4, align 8
  br label %55

35:                                               ; preds = %29
  %36 = load i32, i32* @CRYPTO_MSG_ALG_REQUEST, align 4
  %37 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %38 = call i32 @crypto_probing_notify(i32 %36, %struct.crypto_alg* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NOTIFY_STOP, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %44 = call %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg* %43)
  store %struct.crypto_alg* %44, %struct.crypto_alg** %8, align 8
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %47 = call i32 @crypto_mod_put(%struct.crypto_alg* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.crypto_alg* @ERR_PTR(i32 %49)
  store %struct.crypto_alg* %50, %struct.crypto_alg** %8, align 8
  br label %51

51:                                               ; preds = %45, %42
  %52 = load %struct.crypto_alg*, %struct.crypto_alg** %9, align 8
  %53 = call i32 @crypto_larval_kill(%struct.crypto_alg* %52)
  %54 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %54, %struct.crypto_alg** %4, align 8
  br label %55

55:                                               ; preds = %51, %33
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  ret %struct.crypto_alg* %56
}

declare dso_local %struct.crypto_alg* @crypto_larval_lookup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_is_larval(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_probing_notify(i32, %struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @crypto_larval_wait(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

declare dso_local i32 @crypto_larval_kill(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
