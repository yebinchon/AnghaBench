; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_hmac.c_hmac_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_hmac.c_hmac_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.hmac_ctx = type { %struct.crypto_shash* }

@shash = common dso_local global %struct.TYPE_7__* null, align 8
@HMAC_IPAD_VALUE = common dso_local global i8 0, align 1
@HMAC_OPAD_VALUE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i8*, i32)* @hmac_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_setkey(%struct.crypto_shash* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.hmac_ctx*, align 8
  %14 = alloca %struct.crypto_shash*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %18 = call i32 @crypto_shash_blocksize(%struct.crypto_shash* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %20 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %22 = call i32 @crypto_shash_statesize(%struct.crypto_shash* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %24 = call i8* @crypto_shash_ctx_aligned(%struct.crypto_shash* %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = call i32 (...) @crypto_tfm_ctx_alignment()
  %34 = call %struct.hmac_ctx* @align_ptr(i8* %32, i32 %33)
  store %struct.hmac_ctx* %34, %struct.hmac_ctx** %13, align 8
  %35 = load %struct.hmac_ctx*, %struct.hmac_ctx** %13, align 8
  %36 = getelementptr inbounds %struct.hmac_ctx, %struct.hmac_ctx* %35, i32 0, i32 0
  %37 = load %struct.crypto_shash*, %struct.crypto_shash** %36, align 8
  store %struct.crypto_shash* %37, %struct.crypto_shash** %14, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %39 = load %struct.crypto_shash*, %struct.crypto_shash** %14, align 8
  %40 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_7__* %38, %struct.crypto_shash* %39)
  %41 = load %struct.crypto_shash*, %struct.crypto_shash** %14, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.crypto_shash* %41, %struct.crypto_shash** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @crypto_shash_digest(%struct.TYPE_7__* %48, i8* %49, i32 %50, i8* %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %4, align 4
  br label %152

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %7, align 4
  br label %64

59:                                               ; preds = %3
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %57
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub i32 %69, %70
  %72 = call i32 @memset(i8* %68, i32 0, i32 %71)
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %102, %64
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load i8, i8* @HMAC_IPAD_VALUE, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %15, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = xor i32 %89, %83
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  %92 = load i8, i8* @HMAC_OPAD_VALUE, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8*, i8** %12, align 8
  %95 = load i32, i32* %15, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = xor i32 %99, %93
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %97, align 1
  br label %102

102:                                              ; preds = %81
  %103 = load i32, i32* %15, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %77

105:                                              ; preds = %77
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %107 = call i64 @crypto_shash_init(%struct.TYPE_7__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %149

110:                                              ; preds = %105
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @crypto_shash_update(%struct.TYPE_7__* %111, i8* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %147

117:                                              ; preds = %110
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @crypto_shash_export(%struct.TYPE_7__* %118, i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = sext i32 %120 to i64
  br label %145

124:                                              ; preds = %117
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %126 = call i64 @crypto_shash_init(%struct.TYPE_7__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %143

129:                                              ; preds = %124
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @crypto_shash_update(%struct.TYPE_7__* %130, i8* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %141

136:                                              ; preds = %129
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @shash, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @crypto_shash_export(%struct.TYPE_7__* %137, i8* %138)
  %140 = sext i32 %139 to i64
  br label %141

141:                                              ; preds = %136, %135
  %142 = phi i64 [ %133, %135 ], [ %140, %136 ]
  br label %143

143:                                              ; preds = %141, %128
  %144 = phi i64 [ %126, %128 ], [ %142, %141 ]
  br label %145

145:                                              ; preds = %143, %122
  %146 = phi i64 [ %123, %122 ], [ %144, %143 ]
  br label %147

147:                                              ; preds = %145, %116
  %148 = phi i64 [ %114, %116 ], [ %146, %145 ]
  br label %149

149:                                              ; preds = %147, %109
  %150 = phi i64 [ %107, %109 ], [ %148, %147 ]
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %149, %55
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @crypto_shash_blocksize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_statesize(%struct.crypto_shash*) #1

declare dso_local i8* @crypto_shash_ctx_aligned(%struct.crypto_shash*) #1

declare dso_local %struct.hmac_ctx* @align_ptr(i8*, i32) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_7__*, %struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_7__*, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @crypto_shash_init(%struct.TYPE_7__*) #1

declare dso_local i64 @crypto_shash_update(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @crypto_shash_export(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
