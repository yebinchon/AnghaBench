; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_update.c"
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
  %21 = call i32 (...) @kernel_fpu_begin()
  %22 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @min(i32 %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %34 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %35 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  store i32* %39, i32** %11, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %52, %26
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* %53, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %11, align 8
  %58 = load i32, i32* %56, align 4
  %59 = xor i32 %58, %55
  store i32 %59, i32* %56, align 4
  br label %48

60:                                               ; preds = %48
  %61 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %62 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %9, align 8
  %67 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %67, i32 0, i32 0
  %69 = call i32 @clmul_ghash_mul(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %75, i32 0, i32 0
  %77 = call i32 @clmul_ghash_update(i32* %72, i32* %73, i32 %74, i32* %76)
  %78 = call i32 (...) @kernel_fpu_end()
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, 15
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 15
  %86 = sub i32 %83, %85
  %87 = load i32*, i32** %5, align 8
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 15
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub i32 %92, %93
  %95 = load %struct.ghash_desc_ctx*, %struct.ghash_desc_ctx** %7, align 8
  %96 = getelementptr inbounds %struct.ghash_desc_ctx, %struct.ghash_desc_ctx* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %101, %82
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %6, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %5, align 8
  %104 = load i32, i32* %102, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %9, align 8
  %107 = load i32, i32* %105, align 4
  %108 = xor i32 %107, %104
  store i32 %108, i32* %105, align 4
  br label %97

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109, %71
  ret i32 0
}

declare dso_local %struct.ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local %struct.ghash_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @clmul_ghash_mul(i32*, i32*) #1

declare dso_local i32 @clmul_ghash_update(i32*, i32*, i32, i32*) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
