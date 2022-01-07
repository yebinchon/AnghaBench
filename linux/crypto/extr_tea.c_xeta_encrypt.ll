; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tea.c_xeta_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tea.c_xeta_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.xtea_ctx = type { i64* }

@XTEA_DELTA = common dso_local global i32 0, align 4
@XTEA_ROUNDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @xeta_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xeta_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xtea_ctx*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @XTEA_DELTA, align 4
  %15 = load i32, i32* @XTEA_ROUNDS, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %18 = call %struct.xtea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %17)
  store %struct.xtea_ctx* %18, %struct.xtea_ctx** %11, align 8
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %33, %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 4
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 5
  %38 = xor i32 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = xor i32 %39, %40
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = load %struct.xtea_ctx*, %struct.xtea_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.xtea_ctx, %struct.xtea_ctx* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %43, %51
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @XTEA_DELTA, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = shl i32 %60, 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 5
  %64 = xor i32 %61, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = xor i32 %65, %66
  %68 = add nsw i32 %64, %67
  %69 = sext i32 %68 to i64
  %70 = load %struct.xtea_ctx*, %struct.xtea_ctx** %11, align 8
  %71 = getelementptr inbounds %struct.xtea_ctx, %struct.xtea_ctx* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 11
  %75 = and i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %69, %78
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  br label %29

84:                                               ; preds = %29
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @cpu_to_le32(i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local %struct.xtea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
