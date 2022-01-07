; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_copy_iv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_copy_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_walk = type { i32, i32, i64 }
%struct.crypto_tfm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_walk*, %struct.crypto_tfm*, i32)* @ablkcipher_copy_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_copy_iv(%struct.ablkcipher_walk* %0, %struct.crypto_tfm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ablkcipher_walk*, align 8
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ablkcipher_walk* %0, %struct.ablkcipher_walk** %5, align 8
  store %struct.crypto_tfm* %1, %struct.crypto_tfm** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %14 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %17 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %22, 1
  %24 = call i32 @ALIGN(i64 %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = mul i32 %25, 2
  %27 = load i32, i32* %9, align 4
  %28 = add i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @max(i32 %29, i32 %30)
  %32 = add i32 %28, %31
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  %35 = sub i32 %32, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (...) @crypto_tfm_ctx_alignment()
  %38 = sub nsw i32 %37, 1
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i64 @kmalloc(i32 %43, i32 %44)
  %46 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %47 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %49 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %3
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %87

55:                                               ; preds = %3
  %56 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %57 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  %61 = call i32 @ALIGN(i64 %58, i32 %60)
  %62 = zext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32* @ablkcipher_get_spot(i32* %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32* @ablkcipher_get_spot(i32* %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %12, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32* @ablkcipher_get_spot(i32* %76, i32 %77)
  store i32* %78, i32** %12, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %81 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @memcpy(i32* %79, i32 %82, i32 %83)
  %85 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %86 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %55, %52
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32* @ablkcipher_get_spot(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
