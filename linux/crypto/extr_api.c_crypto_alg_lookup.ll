; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_api.c_crypto_alg_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_api.c_crypto_alg_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }

@CRYPTO_ALG_TESTED = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4
@ELIBBAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_alg* (i8*, i32, i32)* @crypto_alg_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_alg* @crypto_alg_lookup(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @CRYPTO_ALG_TESTED, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %15, %3
  %20 = call i32 @down_read(i32* @crypto_alg_sem)
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.crypto_alg* @__crypto_alg_lookup(i8* %21, i32 %24, i32 %27)
  store %struct.crypto_alg* %28, %struct.crypto_alg** %7, align 8
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %30 = icmp ne %struct.crypto_alg* %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.crypto_alg* @__crypto_alg_lookup(i8* %35, i32 %36, i32 %37)
  store %struct.crypto_alg* %38, %struct.crypto_alg** %7, align 8
  %39 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %40 = icmp ne %struct.crypto_alg* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %43 = call i32 @crypto_is_larval(%struct.crypto_alg* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %47 = call i32 @crypto_mod_put(%struct.crypto_alg* %46)
  %48 = load i32, i32* @ELIBBAD, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.crypto_alg* @ERR_PTR(i32 %49)
  store %struct.crypto_alg* %50, %struct.crypto_alg** %7, align 8
  br label %51

51:                                               ; preds = %45, %41, %34
  br label %52

52:                                               ; preds = %51, %31, %19
  %53 = call i32 @up_read(i32* @crypto_alg_sem)
  %54 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  ret %struct.crypto_alg* %54
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.crypto_alg* @__crypto_alg_lookup(i8*, i32, i32) #1

declare dso_local i32 @crypto_is_larval(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
