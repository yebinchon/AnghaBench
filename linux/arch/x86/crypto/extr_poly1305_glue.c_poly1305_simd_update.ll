; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_poly1305_glue.c_poly1305_simd_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_poly1305_glue.c_poly1305_simd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.poly1305_desc_ctx = type { i32, i32* }

@POLY1305_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @poly1305_simd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly1305_simd_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.poly1305_desc_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %11 = call %struct.poly1305_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %10)
  store %struct.poly1305_desc_ctx* %11, %struct.poly1305_desc_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ule i32 %12, 288
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = call i32 (...) @crypto_simd_usable()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @crypto_poly1305_update(%struct.shash_desc* %18, i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %110

22:                                               ; preds = %14
  %23 = call i32 (...) @kernel_fpu_begin()
  %24 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %32 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %31, %34
  %36 = call i32 @min(i32 %30, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @memcpy(i32* %44, i32* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %29
  %66 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %67 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %71 = call i32 @poly1305_simd_blocks(%struct.poly1305_desc_ctx* %66, i32* %69, i32 %70)
  %72 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %65, %29
  br label %75

75:                                               ; preds = %74, %22
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %78 = icmp uge i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @poly1305_simd_blocks(%struct.poly1305_desc_ctx* %83, i32* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub i32 %87, %88
  %90 = load i32*, i32** %6, align 8
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %6, align 8
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %82, %75
  %95 = call i32 (...) @kernel_fpu_end()
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %102 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %8, align 8
  %104 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @memcpy(i32* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %99, %94
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %17
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.poly1305_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @crypto_poly1305_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @poly1305_simd_blocks(%struct.poly1305_desc_ctx*, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
