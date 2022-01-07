; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c___ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c___ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des3_ede_x86_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@DES3_EDE_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.des3_ede_x86_ctx*, %struct.skcipher_walk*)* @__ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ctr_crypt(%struct.des3_ede_x86_ctx* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.des3_ede_x86_ctx*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
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
  %27 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %28 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be64_to_cpu(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 %34, 3
  %36 = icmp uge i32 %33, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %83, %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = call i32 @cpu_to_be64(i32 %39)
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = call i32 @cpu_to_be64(i32 %43)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = call i32 @cpu_to_be64(i32 %47)
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %3, align 8
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %54 = call i32 @des3_ede_enc_blk_3way(%struct.des3_ede_x86_ctx* %51, i32* %52, i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %57, %59
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %65, %67
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %73, %75
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32* %80, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32* %82, i32** %8, align 8
  br label %83

83:                                               ; preds = %38
  %84 = load i32, i32* %5, align 4
  %85 = mul i32 %84, 3
  %86 = load i32, i32* %6, align 4
  %87 = sub i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = mul i32 %88, 3
  %90 = icmp uge i32 %87, %89
  br i1 %90, label %38, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %126

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %2
  br label %98

98:                                               ; preds = %119, %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = call i32 @cpu_to_be64(i32 %99)
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %3, align 8
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %106 = call i32 @des3_ede_enc_blk(%struct.des3_ede_x86_ctx* %103, i32* %104, i32* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %109, %111
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32* %116, i32** %7, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32* %118, i32** %8, align 8
  br label %119

119:                                              ; preds = %98
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp uge i32 %122, %123
  br i1 %124, label %98, label %125

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %95
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @cpu_to_be64(i32 %127)
  %129 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %130 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @des3_ede_enc_blk_3way(%struct.des3_ede_x86_ctx*, i32*, i32*) #1

declare dso_local i32 @des3_ede_enc_blk(%struct.des3_ede_x86_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
