; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_do_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_ghash-ce-glue.c_ghash_do_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ghash_key = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*, %struct.ghash_key*, i8*)* @ghash_do_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghash_do_update(i32 %0, i32* %1, i8* %2, %struct.ghash_key* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ghash_key*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.ghash_key* %3, %struct.ghash_key** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = call i32 (...) @crypto_simd_usable()
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = call i32 (...) @kernel_neon_begin()
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.ghash_key*, %struct.ghash_key** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @pmull_ghash_update(i32 %18, i32* %19, i8* %20, %struct.ghash_key* %21, i8* %22)
  %24 = call i32 (...) @kernel_neon_end()
  br label %74

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cpu_to_be64(i32 %29)
  store i32 %30, i32* %26, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_be64(i32 %34)
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %59, %25
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 8
  store i8* %43, i8** %12, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  store i8* null, i8** %10, align 8
  br label %51

46:                                               ; preds = %38
  %47 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %46, %42
  %52 = bitcast %struct.TYPE_3__* %11 to i8*
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %55 = call i32 @crypto_xor(i8* %52, i8* %53, i32 %54)
  %56 = load %struct.ghash_key*, %struct.ghash_key** %9, align 8
  %57 = getelementptr inbounds %struct.ghash_key, %struct.ghash_key* %56, i32 0, i32 0
  %58 = call i32 @gf128mul_lle(%struct.TYPE_3__* %11, i32* %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %38, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be64_to_cpu(i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be64_to_cpu(i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %63, %16
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @pmull_ghash_update(i32, i32*, i8*, %struct.ghash_key*, i8*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @crypto_xor(i8*, i8*, i32) #1

declare dso_local i32 @gf128mul_lle(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
