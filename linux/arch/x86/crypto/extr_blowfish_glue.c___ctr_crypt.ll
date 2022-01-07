; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c___ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c___ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@BF_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bf_ctx*, %struct.skcipher_walk*)* @__ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctr_crypt(%struct.bf_ctx* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.bf_ctx*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
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
  %27 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %28 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be64_to_cpu(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 %34, 4
  %36 = icmp uge i32 %33, %35
  br i1 %36, label %37, label %102

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %88, %37
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %42, %38
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = call i32 @cpu_to_be64(i32 %64)
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %66, i32* %67, align 16
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = call i32 @cpu_to_be64(i32 %68)
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = call i32 @cpu_to_be64(i32 %72)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = call i32 @cpu_to_be64(i32 %76)
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %78, i32* %79, align 4
  %80 = load %struct.bf_ctx*, %struct.bf_ctx** %3, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %83 = call i32 @blowfish_enc_blk_xor_4way(%struct.bf_ctx* %80, i32* %81, i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32* %85, i32** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %8, align 8
  br label %88

88:                                               ; preds = %63
  %89 = load i32, i32* %5, align 4
  %90 = mul i32 %89, 4
  %91 = load i32, i32* %6, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = mul i32 %93, 4
  %95 = icmp uge i32 %92, %94
  br i1 %95, label %38, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %131

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %2
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = call i32 @cpu_to_be64(i32 %112)
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %114, i32* %115, align 16
  %116 = load %struct.bf_ctx*, %struct.bf_ctx** %3, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %119 = call i32 @blowfish_enc_blk_xor(%struct.bf_ctx* %116, i32* %117, i32* %118)
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32* %121, i32** %7, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32* %123, i32** %8, align 8
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = sub i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp uge i32 %127, %128
  br i1 %129, label %103, label %130

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %100
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @cpu_to_be64(i32 %132)
  %134 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %135 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @blowfish_enc_blk_xor_4way(%struct.bf_ctx*, i32*, i32*) #1

declare dso_local i32 @blowfish_enc_blk_xor(%struct.bf_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
