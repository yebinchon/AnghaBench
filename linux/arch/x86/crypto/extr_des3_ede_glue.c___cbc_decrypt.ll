; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c___cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c___cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des3_ede_x86_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@DES3_EDE_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.des3_ede_x86_ctx*, %struct.skcipher_walk*)* @__cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cbc_decrypt(%struct.des3_ede_x86_ctx* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.des3_ede_x86_ctx*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.des3_ede_x86_ctx* %0, %struct.des3_ede_x86_ctx** %3, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %4, align 8
  %11 = load i32, i32* @DES3_EDE_BLOCK_SIZE, align 4
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
  %45 = mul i32 %44, 3
  %46 = icmp uge i32 %43, %45
  br i1 %46, label %47, label %107

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %101, %47
  %49 = load i32, i32* %5, align 4
  %50 = mul i32 %49, 3
  %51 = load i32, i32* %5, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -2
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 -2
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  %67 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %3, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @des3_ede_dec_blk_3way(%struct.des3_ede_x86_ctx* %67, i32* %68, i32* %69)
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %48
  br label %132

90:                                               ; preds = %48
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 -1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = xor i32 %95, %93
  store i32 %96, i32* %94, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 -1
  store i32* %98, i32** %7, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 -1
  store i32* %100, i32** %8, align 8
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = mul i32 %103, 3
  %105 = icmp uge i32 %102, %104
  br i1 %105, label %48, label %106

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %2
  br label %108

108:                                              ; preds = %120, %107
  %109 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %3, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @des3_ede_dec_blk(%struct.des3_ede_x86_ctx* %109, i32* %110, i32* %111)
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %131

120:                                              ; preds = %108
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 -1
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %124, align 4
  %126 = xor i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 -1
  store i32* %128, i32** %7, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 -1
  store i32* %130, i32** %8, align 8
  br label %108

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %89
  %133 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %134 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, %137
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %143 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i32*
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @des3_ede_dec_blk_3way(%struct.des3_ede_x86_ctx*, i32*, i32*) #1

declare dso_local i32 @des3_ede_dec_blk(%struct.des3_ede_x86_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
