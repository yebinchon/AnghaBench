; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_crypto_poly1305_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_crypto_poly1305_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.poly1305_desc_ctx = type { i32, i32*, i32*, i32, i32 }

@ENOKEY = common dso_local global i32 0, align 4
@POLY1305_BLOCK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_poly1305_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.poly1305_desc_ctx*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = call %struct.poly1305_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.poly1305_desc_ctx* %10, %struct.poly1305_desc_ctx** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOKEY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %128

22:                                               ; preds = %2
  %23 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  store i32 1, i32* %37, align 4
  %38 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %47 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %46, %50
  %52 = call i32 @memset(i32* %45, i32 0, i64 %51)
  %53 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %54 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @POLY1305_BLOCK_SIZE, align 8
  %58 = call i32 @poly1305_blocks(%struct.poly1305_desc_ctx* %53, i32* %56, i64 %57, i32 0)
  br label %59

59:                                               ; preds = %28, %22
  %60 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %60, i32 0, i32 3
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %63 = call i32 @poly1305_core_emit(i32* %61, i32* %62)
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 32
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = add nsw i32 %65, %68
  %70 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %69, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @put_unaligned_le32(i32 %76, i32* %78)
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 32
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = add nsw i32 %81, %84
  %86 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %85, %90
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = call i32 @put_unaligned_le32(i32 %92, i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = ashr i32 %96, 32
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le32_to_cpu(i32 %99)
  %101 = add nsw i32 %97, %100
  %102 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %103 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %101, %106
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  %111 = call i32 @put_unaligned_le32(i32 %108, i32* %110)
  %112 = load i32, i32* %8, align 4
  %113 = ashr i32 %112, 32
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = add nsw i32 %113, %116
  %118 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %6, align 8
  %119 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %117, %122
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  %127 = call i32 @put_unaligned_le32(i32 %124, i32* %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %59, %19
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.poly1305_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @poly1305_blocks(%struct.poly1305_desc_ctx*, i32*, i64, i32) #1

declare dso_local i32 @poly1305_core_emit(i32*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
