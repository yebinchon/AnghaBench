; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c___cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c___cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@BF_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bf_ctx*, %struct.skcipher_walk*)* @__cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cbc_decrypt(%struct.bf_ctx* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.bf_ctx*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.bf_ctx* %0, %struct.bf_ctx** %3, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %4, align 8
  %11 = load i32, i32* @BF_BLOCK_SIZE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %13 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %16 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %22 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = udiv i32 %27, %28
  %30 = sub i32 %29, 1
  %31 = load i32*, i32** %7, align 8
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = udiv i32 %34, %35
  %37 = sub i32 %36, 1
  %38 = load i32*, i32** %8, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul i32 %44, 4
  %46 = icmp uge i32 %43, %45
  br i1 %46, label %47, label %117

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %111, %47
  %49 = load i32, i32* %5, align 4
  %50 = mul i32 %49, 4
  %51 = load i32, i32* %5, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -3
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 -3
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.bf_ctx*, %struct.bf_ctx** %3, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @blowfish_dec_blk_4way(%struct.bf_ctx* %71, i32* %72, i32* %73)
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %48
  br label %142

100:                                              ; preds = %48
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 -1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 -1
  store i32* %108, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 -1
  store i32* %110, i32** %8, align 8
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = mul i32 %113, 4
  %115 = icmp uge i32 %112, %114
  br i1 %115, label %48, label %116

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %2
  br label %118

118:                                              ; preds = %130, %117
  %119 = load %struct.bf_ctx*, %struct.bf_ctx** %3, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @blowfish_dec_blk(%struct.bf_ctx* %119, i32* %120, i32* %121)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %141

130:                                              ; preds = %118
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 -1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, %133
  store i32 %136, i32* %134, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 -1
  store i32* %138, i32** %7, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 -1
  store i32* %140, i32** %8, align 8
  br label %118

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %99
  %143 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %144 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = xor i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %153 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @blowfish_dec_blk_4way(%struct.bf_ctx*, i32*, i32*) #1

declare dso_local i32 @blowfish_dec_blk(%struct.bf_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
