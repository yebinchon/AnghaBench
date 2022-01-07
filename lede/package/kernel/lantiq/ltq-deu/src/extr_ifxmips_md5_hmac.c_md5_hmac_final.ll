; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5_hmac.c_md5_hmac_final.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_md5_hmac.c_md5_hmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.md5_hmac_ctx = type { i32, i32*, i32, i8* }
%struct.deu_hash_t = type { i32, i8, i8, i8, i8, i8, i8, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@HASH_START = common dso_local global i64 0, align 8
@temp = common dso_local global i8* null, align 8
@CRTCL_SECT_START = common dso_local global i32 0, align 4
@IFX_HASH_CON = common dso_local global i32* null, align 8
@MD5_HMAC_DBN_TEMP_SIZE = common dso_local global i32 0, align 4
@CRTCL_SECT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @md5_hmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md5_hmac_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.md5_hmac_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.deu_hash_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %15 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.md5_hmac_ctx* @crypto_shash_ctx(i32 %16)
  store %struct.md5_hmac_ctx* %17, %struct.md5_hmac_ctx** %5, align 8
  %18 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 63
  store i32 %21, i32* %6, align 4
  %22 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  %31 = sub i32 56, %30
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* @HASH_START, align 8
  %33 = inttoptr i64 %32 to %struct.deu_hash_t*
  store %struct.deu_hash_t* %33, %struct.deu_hash_t** %9, align 8
  store i32 0, i32* %11, align 4
  %34 = load i8*, i8** @temp, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  store i8 -128, i8* %36, align 1
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %2
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i8* %41, i32 0, i32 %45)
  %47 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %48 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @md5_hmac_transform(%struct.shash_desc* %47, i32* %50)
  %52 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = bitcast i32* %54 to i8*
  store i8* %55, i8** %7, align 8
  store i32 56, i32* %8, align 4
  br label %56

56:                                               ; preds = %40, %2
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @memset(i8* %57, i32 0, i32 %58)
  %60 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 64
  %64 = shl i32 %63, 3
  %65 = call i32 @endian_swap(i32 %64)
  %66 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 14
  store i32 %65, i32* %69, align 4
  %70 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 15
  store i32 0, i32* %73, align 4
  %74 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %75 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %76 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @md5_hmac_transform(%struct.shash_desc* %74, i32* %77)
  %79 = load i32, i32* @CRTCL_SECT_START, align 4
  %80 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %84 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %83, i32 0, i32 0
  store volatile i32 %82, i32* %84, align 8
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %85 = load i32*, i32** @IFX_HASH_CON, align 8
  store i32 117637165, i32* %85, align 4
  br label %86

86:                                               ; preds = %92, %56
  %87 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %88 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load volatile i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %86

93:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %129, %93
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %132

100:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %112, %100
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %111 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %110, i32 0, i32 1
  store volatile i8 %109, i8* %111, align 4
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %101

115:                                              ; preds = %101
  %116 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %117 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store volatile i32 1, i32* %118, align 8
  call void asm sideeffect "sync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %119

119:                                              ; preds = %125, %115
  %120 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %121 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load volatile i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %119

126:                                              ; preds = %119
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 16
  store i8* %128, i8** %13, align 8
  br label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %94

132:                                              ; preds = %94
  br label %133

133:                                              ; preds = %140, %132
  %134 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %135 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load volatile i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %133

141:                                              ; preds = %133
  %142 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %143 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %142, i32 0, i32 2
  %144 = load volatile i8, i8* %143, align 1
  %145 = load i32*, i32** %4, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  store i8 %144, i8* %147, align 1
  %148 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %149 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %148, i32 0, i32 3
  %150 = load volatile i8, i8* %149, align 2
  %151 = load i32*, i32** %4, align 8
  %152 = bitcast i32* %151 to i8*
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  store i8 %150, i8* %153, align 1
  %154 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %155 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %154, i32 0, i32 4
  %156 = load volatile i8, i8* %155, align 1
  %157 = load i32*, i32** %4, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8 %156, i8* %159, align 1
  %160 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %161 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %160, i32 0, i32 5
  %162 = load volatile i8, i8* %161, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = getelementptr inbounds i8, i8* %164, i64 3
  store i8 %162, i8* %165, align 1
  %166 = load %struct.deu_hash_t*, %struct.deu_hash_t** %9, align 8
  %167 = getelementptr inbounds %struct.deu_hash_t, %struct.deu_hash_t* %166, i32 0, i32 6
  %168 = load volatile i8, i8* %167, align 1
  %169 = load i32*, i32** %4, align 8
  %170 = bitcast i32* %169 to i8*
  %171 = getelementptr inbounds i8, i8* %170, i64 4
  store i8 %168, i8* %171, align 1
  %172 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %173 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %175 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = call i32 @memset(i8* %177, i32 0, i32 4)
  %179 = load %struct.md5_hmac_ctx*, %struct.md5_hmac_ctx** %5, align 8
  %180 = getelementptr inbounds %struct.md5_hmac_ctx, %struct.md5_hmac_ctx* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = bitcast i32* %182 to i8*
  %184 = call i32 @memset(i8* %183, i32 0, i32 4)
  %185 = load i8*, i8** @temp, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i32, i32* @MD5_HMAC_DBN_TEMP_SIZE, align 4
  %188 = call i32 @memset(i8* %186, i32 0, i32 %187)
  %189 = load i32, i32* @CRTCL_SECT_END, align 4
  ret i32 0
}

declare dso_local %struct.md5_hmac_ctx* @crypto_shash_ctx(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @md5_hmac_transform(%struct.shash_desc*, i32*) #1

declare dso_local i32 @endian_swap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1716}
!3 = !{i32 1972}
