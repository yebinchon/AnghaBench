; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_unregister_aeads.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_unregister_aeads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_alg = type { i32 }
%struct.simd_aead_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simd_unregister_aeads(%struct.aead_alg* %0, i32 %1, %struct.simd_aead_alg** %2) #0 {
  %4 = alloca %struct.aead_alg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.simd_aead_alg**, align 8
  %7 = alloca i32, align 4
  store %struct.aead_alg* %0, %struct.aead_alg** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.simd_aead_alg** %2, %struct.simd_aead_alg*** %6, align 8
  %8 = load %struct.aead_alg*, %struct.aead_alg** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @crypto_unregister_aeads(%struct.aead_alg* %8, i32 %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.simd_aead_alg**, %struct.simd_aead_alg*** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.simd_aead_alg*, %struct.simd_aead_alg** %16, i64 %18
  %20 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %19, align 8
  %21 = icmp ne %struct.simd_aead_alg* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.simd_aead_alg**, %struct.simd_aead_alg*** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.simd_aead_alg*, %struct.simd_aead_alg** %23, i64 %25
  %27 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %26, align 8
  %28 = call i32 @simd_aead_free(%struct.simd_aead_alg* %27)
  %29 = load %struct.simd_aead_alg**, %struct.simd_aead_alg*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.simd_aead_alg*, %struct.simd_aead_alg** %29, i64 %31
  store %struct.simd_aead_alg* null, %struct.simd_aead_alg** %32, align 8
  br label %33

33:                                               ; preds = %22, %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %11
  ret void
}

declare dso_local i32 @crypto_unregister_aeads(%struct.aead_alg*, i32) #1

declare dso_local i32 @simd_aead_free(%struct.simd_aead_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
