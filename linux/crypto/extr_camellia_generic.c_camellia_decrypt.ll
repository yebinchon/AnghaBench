; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_camellia_generic.c_camellia_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_camellia_generic.c_camellia_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.camellia_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @camellia_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.camellia_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %13 = call %struct.camellia_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.camellia_ctx* %13, %struct.camellia_ctx** %7, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %34, i32* %35, align 4
  %36 = load %struct.camellia_ctx*, %struct.camellia_ctx** %7, align 8
  %37 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 24, i32* %10, align 4
  br label %42

41:                                               ; preds = %3
  store i32 32, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.camellia_ctx*, %struct.camellia_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @camellia_do_decrypt(i32 %45, i32* %46, i32 %47)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @cpu_to_be32(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_be32(i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = call i32 @cpu_to_be32(i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cpu_to_be32(i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local %struct.camellia_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @camellia_do_decrypt(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
