; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ghash-generic.c_ghash_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ghash-generic.c_ghash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.ghash_desc_ctx = type { i32, i32* }
%struct.ghash_ctx = type { i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @ghash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ghash_desc_ctx*, align 8
  %8 = alloca %struct.ghash_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %13 = call %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.ghash_desc_ctx* %13, %struct.ghash_desc_ctx** %7, align 8
  %14 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %15 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ghash_ctx* @crypto_shash_ctx(i32 %16)
  store %struct.ghash_ctx* %17, %struct.ghash_ctx** %8, align 8
  %18 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @min(i32 %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %33 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %51, %25
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  %54 = load i32, i32* %52, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  %57 = load i32, i32* %55, align 4
  %58 = xor i32 %57, %54
  store i32 %58, i32* %55, align 4
  br label %47

59:                                               ; preds = %47
  %60 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @gf128mul_4k_lle(i32* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70, %3
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %80 = call i32 @crypto_xor(i32* %77, i32* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gf128mul_4k_lle(i32* %81, i32 %84)
  %86 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %87 = load i32*, i32** %5, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %5, align 8
  %90 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %72

93:                                               ; preds = %72
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub i32 %97, %98
  %100 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %101 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %106, %96
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, -1
  store i32 %104, i32* %6, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %5, align 8
  %109 = load i32, i32* %107, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %9, align 8
  %112 = load i32, i32* %110, align 4
  %113 = xor i32 %112, %109
  store i32 %113, i32* %110, align 4
  br label %102

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %93
  ret i32 0
}

declare dso_local %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.ghash_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gf128mul_4k_lle(i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
