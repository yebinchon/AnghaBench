; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_hmac.c_hmac_finup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_hmac.c_hmac_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32, i32*)* @hmac_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_finup(%struct.shash_desc* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.crypto_shash*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.shash_desc*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %15 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %14, i32 0, i32 0
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %15, align 8
  store %struct.crypto_shash* %16, %struct.crypto_shash** %9, align 8
  %17 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %18 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %20 = call i32 @crypto_shash_statesize(%struct.crypto_shash* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %9, align 8
  %22 = call i8* @crypto_shash_ctx_aligned(%struct.crypto_shash* %21)
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %12, align 8
  %26 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %27 = call %struct.shash_desc* @shash_desc_ctx(%struct.shash_desc* %26)
  store %struct.shash_desc* %27, %struct.shash_desc** %13, align 8
  %28 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @crypto_shash_finup(%struct.shash_desc* %28, i32* %29, i32 %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = sext i32 %32 to i64
  br label %51

36:                                               ; preds = %4
  %37 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @crypto_shash_import(%struct.shash_desc* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %49

42:                                               ; preds = %36
  %43 = load %struct.shash_desc*, %struct.shash_desc** %13, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @crypto_shash_finup(%struct.shash_desc* %43, i32* %44, i32 %45, i32* %46)
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %42, %41
  %50 = phi i64 [ %39, %41 ], [ %48, %42 ]
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i64 [ %35, %34 ], [ %50, %49 ]
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_statesize(%struct.crypto_shash*) #1

declare dso_local i8* @crypto_shash_ctx_aligned(%struct.crypto_shash*) #1

declare dso_local %struct.shash_desc* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_finup(%struct.shash_desc*, i32*, i32, i32*) #1

declare dso_local i64 @crypto_shash_import(%struct.shash_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
