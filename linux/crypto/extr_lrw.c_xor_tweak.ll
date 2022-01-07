; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lrw.c_xor_tweak.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lrw.c_xor_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.priv = type { i32* }
%struct.rctx = type { %struct.skcipher_request, i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@LRW_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @xor_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xor_tweak(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.rctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.skcipher_walk, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* @LRW_BLOCK_SIZE, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %20 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %19)
  store %struct.crypto_skcipher* %20, %struct.crypto_skcipher** %7, align 8
  %21 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %22 = call %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher* %21)
  store %struct.priv* %22, %struct.priv** %8, align 8
  %23 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %24 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %23)
  store %struct.rctx* %24, %struct.rctx** %9, align 8
  %25 = load %struct.rctx*, %struct.rctx** %9, align 8
  %26 = getelementptr inbounds %struct.rctx, %struct.rctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.rctx*, %struct.rctx** %9, align 8
  %32 = getelementptr inbounds %struct.rctx, %struct.rctx* %31, i32 0, i32 0
  store %struct.skcipher_request* %32, %struct.skcipher_request** %4, align 8
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %34 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %35 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %33, %struct.crypto_skcipher* %34)
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %38 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %11, %struct.skcipher_request* %37, i32 0)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %3, align 4
  br label %136

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be32_to_cpu(i32 %49)
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %50, i32* %51, align 16
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %60, i32* %61, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %131, %43
  %68 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %134

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %15, align 4
  %74 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %16, align 8
  %78 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %17, align 8
  br label %82

82:                                               ; preds = %95, %71
  %83 = load i32*, i32** %17, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %17, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %16, align 8
  %87 = call i32 @be128_xor(i32* %83, i32* %10, i32* %85)
  %88 = load %struct.priv*, %struct.priv** %8, align 8
  %89 = getelementptr inbounds %struct.priv, %struct.priv* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %92 = call i64 @next_index(i32* %91)
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @be128_xor(i32* %10, i32* %10, i32* %93)
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %15, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp uge i32 %98, %99
  br i1 %100, label %82, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %104
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @cpu_to_be32(i32 %112)
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  store i32 %113, i32* %115, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @cpu_to_be32(i32 %117)
  %119 = load i32*, i32** %12, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %118, i32* %120, align 4
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @cpu_to_be32(i32 %122)
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = call i32 @cpu_to_be32(i32 %127)
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %110, %104, %101
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %11, i32 %132)
  store i32 %133, i32* %14, align 4
  br label %67

134:                                              ; preds = %67
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %41
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.priv* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

declare dso_local i64 @next_index(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
