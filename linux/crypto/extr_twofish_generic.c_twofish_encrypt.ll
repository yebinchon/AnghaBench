; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_twofish_generic.c_twofish_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_twofish_generic.c_twofish_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.twofish_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @twofish_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twofish_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.twofish_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %17 = call %struct.twofish_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.twofish_ctx* %17, %struct.twofish_ctx** %7, align 8
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %5, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @INPACK(i32 0, i32 %20, i32 0)
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @INPACK(i32 1, i32 %22, i32 1)
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @INPACK(i32 2, i32 %24, i32 2)
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @INPACK(i32 3, i32 %26, i32 3)
  %28 = call i32 @ENCCYCLE(i32 0)
  %29 = call i32 @ENCCYCLE(i32 1)
  %30 = call i32 @ENCCYCLE(i32 2)
  %31 = call i32 @ENCCYCLE(i32 3)
  %32 = call i32 @ENCCYCLE(i32 4)
  %33 = call i32 @ENCCYCLE(i32 5)
  %34 = call i32 @ENCCYCLE(i32 6)
  %35 = call i32 @ENCCYCLE(i32 7)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @OUTUNPACK(i32 0, i32 %36, i32 4)
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @OUTUNPACK(i32 1, i32 %38, i32 5)
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @OUTUNPACK(i32 2, i32 %40, i32 6)
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @OUTUNPACK(i32 3, i32 %42, i32 7)
  ret void
}

declare dso_local %struct.twofish_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @INPACK(i32, i32, i32) #1

declare dso_local i32 @ENCCYCLE(i32) #1

declare dso_local i32 @OUTUNPACK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
