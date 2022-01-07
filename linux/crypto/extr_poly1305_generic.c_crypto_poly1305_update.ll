; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_crypto_poly1305_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_crypto_poly1305_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.poly1305_desc_ctx = type { i32, i32* }

@POLY1305_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_poly1305_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.poly1305_desc_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = call %struct.poly1305_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %9)
  store %struct.poly1305_desc_ctx* %10, %struct.poly1305_desc_ctx** %7, align 8
  %11 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %12 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %19 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub i32 %18, %21
  %23 = call i32 @min(i32 %17, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %25 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @memcpy(i32* %31, i32* %32, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %16
  %53 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %54 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %58 = call i32 @poly1305_blocks(%struct.poly1305_desc_ctx* %53, i32* %56, i32 %57, i32 16777216)
  %59 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %60 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %16
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %65 = icmp uge i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @likely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @poly1305_blocks(%struct.poly1305_desc_ctx* %70, i32* %71, i32 %72, i32 16777216)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %77 = urem i32 %75, %76
  %78 = sub i32 %74, %77
  %79 = load i32*, i32** %5, align 8
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %5, align 8
  %82 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = urem i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %69, %62
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %92 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.poly1305_desc_ctx*, %struct.poly1305_desc_ctx** %7, align 8
  %94 = getelementptr inbounds %struct.poly1305_desc_ctx, %struct.poly1305_desc_ctx* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @memcpy(i32* %95, i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %85
  ret i32 0
}

declare dso_local %struct.poly1305_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @poly1305_blocks(%struct.poly1305_desc_ctx*, i32*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
