; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1_hmac.c_sha1_hmac_final.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_sha1_hmac.c_sha1_hmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.sha1_hmac_ctx = type { i32, i32, i32* }
%struct.deu_hash_t = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@sha1_hmac_final.padding = internal constant <{ i32, [63 x i32] }> <{ i32 128, [63 x i32] zeroinitializer }>, align 16
@HASH_START = common dso_local global i64 0, align 8
@temp = common dso_local global i32* null, align 8
@CRTCL_SECT_START = common dso_local global i32 0, align 4
@HASH_CON_VALUE = common dso_local global i32 0, align 4
@IFX_HASH_CON = common dso_local global i32* null, align 8
@SHA1_HMAC_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRTCL_SECT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @sha1_hmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha1_hmac_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sha1_hmac_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca %struct.deu_hash_t*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %16 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sha1_hmac_ctx* @crypto_shash_ctx(i32 %17)
  store %struct.sha1_hmac_ctx* %18, %struct.sha1_hmac_ctx** %5, align 8
  %19 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 32, i1 false)
  %20 = load i64, i64* @HASH_START, align 8
  %21 = inttoptr i64 %20 to %struct.deu_hash_t*
  store %struct.deu_hash_t* %21, %struct.deu_hash_t** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32*, i32** @temp, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32* %23, i32** %14, align 8
  %24 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 512
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 255, %28
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 255, %33
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 255, %38
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 8
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 255, %43
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %44, i32* %45, align 16
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 255, %48
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 8
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 255, %53
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 8
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = and i32 255, %58
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 255, %63
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 3
  %70 = and i32 %69, 63
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 56
  br i1 %72, label %73, label %76

73:                                               ; preds = %2
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 56, %74
  br label %79

76:                                               ; preds = %2
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 120, %77
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i32 [ %75, %73 ], [ %78, %76 ]
  store i32 %80, i32* %7, align 4
  %81 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @sha1_hmac_update(%struct.shash_desc* %81, i32* getelementptr inbounds ([64 x i32], [64 x i32]* bitcast (<{ i32, [63 x i32] }>* @sha1_hmac_final.padding to [64 x i32]*), i64 0, i64 0), i32 %82)
  %84 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %86 = call i32 @sha1_hmac_update(%struct.shash_desc* %84, i32* %85, i32 32)
  %87 = load i32, i32* @CRTCL_SECT_START, align 4
  %88 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %92 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %91, i32 0, i32 0
  store volatile i32 %90, i32* %92, align 8
  %93 = load i32, i32* @HASH_CON_VALUE, align 4
  %94 = load i32*, i32** @IFX_HASH_CON, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %101, %79
  %96 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %97 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load volatile i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %95

102:                                              ; preds = %95
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %138, %102
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %141

109:                                              ; preds = %103
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %121, %109
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 16
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %120 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %119, i32 0, i32 1
  store volatile i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %110

124:                                              ; preds = %110
  %125 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %126 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store volatile i32 1, i32* %127, align 8
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  br label %128

128:                                              ; preds = %134, %124
  %129 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %130 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load volatile i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %128

135:                                              ; preds = %128
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 16
  store i32* %137, i32** %14, align 8
  br label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %103

141:                                              ; preds = %103
  br label %142

142:                                              ; preds = %149, %141
  %143 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %144 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load volatile i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %142

150:                                              ; preds = %142
  %151 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %152 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %151, i32 0, i32 2
  %153 = load volatile i32, i32* %152, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %157 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %156, i32 0, i32 3
  %158 = load volatile i32, i32* %157, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %162 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %161, i32 0, i32 4
  %163 = load volatile i32, i32* %162, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %167 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %166, i32 0, i32 5
  %168 = load volatile i32, i32* %167, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  store i32 %168, i32* %170, align 4
  %171 = load %struct.deu_hash_t*, %struct.deu_hash_t** %10, align 8
  %172 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %171, i32 0, i32 6
  %173 = load volatile i32, i32* %172, align 8
  %174 = load i32*, i32** %4, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  store i32 %173, i32* %175, align 4
  %176 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %177 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* @SHA1_HMAC_BLOCK_SIZE, align 4
  %181 = call i32 @memset(i32* %179, i32 0, i32 %180)
  %182 = load %struct.sha1_hmac_ctx*, %struct.sha1_hmac_ctx** %5, align 8
  %183 = getelementptr inbounds %struct.sha1_hmac_ctx, %struct.sha1_hmac_ctx* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  %184 = load i32, i32* @CRTCL_SECT_END, align 4
  ret i32 0
}

declare dso_local %struct.sha1_hmac_ctx* @crypto_shash_ctx(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sha1_hmac_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1976}
