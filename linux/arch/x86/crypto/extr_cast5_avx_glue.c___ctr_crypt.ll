; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c___ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c___ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.cast5_ctx = type { i32 }

@CAST5_BLOCK_SIZE = common dso_local global i32 0, align 4
@CAST5_PARALLEL_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, %struct.cast5_ctx*)* @__ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctr_crypt(%struct.skcipher_walk* %0, %struct.cast5_ctx* %1) #0 {
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca %struct.cast5_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  store %struct.cast5_ctx* %1, %struct.cast5_ctx** %4, align 8
  %10 = load i32, i32* @CAST5_BLOCK_SIZE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %12 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %21 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %29 = mul i32 %27, %28
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %54, %31
  %33 = load %struct.cast5_ctx*, %struct.cast5_ctx** %4, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %37 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @cast5_ctr_16way(%struct.cast5_ctx* %33, i32* %34, i32* %35, i32* %39)
  %41 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %8, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %51 = mul i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @CAST5_PARALLEL_BLOCKS, align 4
  %58 = mul i32 %56, %57
  %59 = icmp uge i32 %55, %58
  br i1 %59, label %32, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %104

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %2
  br label %67

67:                                               ; preds = %99, %66
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = icmp ne i32* %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %77 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %82 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @be64_add_cpu(i32* %84, i32 1)
  %86 = load %struct.cast5_ctx*, %struct.cast5_ctx** %4, align 8
  %87 = call i32 @__cast5_encrypt(%struct.cast5_ctx* %86, i32* %9, i32* %9)
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32* %93, i32** %7, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32* %95, i32** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %75
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp uge i32 %100, %101
  br i1 %102, label %67, label %103

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %64
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @cast5_ctr_16way(%struct.cast5_ctx*, i32*, i32*, i32*) #1

declare dso_local i32 @be64_add_cpu(i32*, i32) #1

declare dso_local i32 @__cast5_encrypt(%struct.cast5_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
