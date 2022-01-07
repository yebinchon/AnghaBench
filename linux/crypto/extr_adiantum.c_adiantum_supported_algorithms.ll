; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_adiantum.c_adiantum_supported_algorithms.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_adiantum.c_adiantum_supported_algorithms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_alg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.crypto_alg = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.shash_alg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"xchacha12\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"xchacha20\00", align 1
@BLOCKCIPHER_KEY_SIZE = common dso_local global i64 0, align 8
@BLOCKCIPHER_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"nhpoly1305\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_alg*, %struct.crypto_alg*, %struct.shash_alg*)* @adiantum_supported_algorithms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adiantum_supported_algorithms(%struct.skcipher_alg* %0, %struct.crypto_alg* %1, %struct.shash_alg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skcipher_alg*, align 8
  %6 = alloca %struct.crypto_alg*, align 8
  %7 = alloca %struct.shash_alg*, align 8
  store %struct.skcipher_alg* %0, %struct.skcipher_alg** %5, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %6, align 8
  store %struct.shash_alg* %2, %struct.shash_alg** %7, align 8
  %8 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %9 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %16 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

22:                                               ; preds = %14, %3
  %23 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %24 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BLOCKCIPHER_KEY_SIZE, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %31 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BLOCKCIPHER_KEY_SIZE, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %22
  store i32 0, i32* %4, align 4
  br label %53

37:                                               ; preds = %29
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %39 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BLOCKCIPHER_BLOCK_SIZE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %53

44:                                               ; preds = %37
  %45 = load %struct.shash_alg*, %struct.shash_alg** %7, align 8
  %46 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %53

52:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %51, %43, %36, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
