; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_escrypt_r.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_escrypt_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @escrypt_r(i32* %0, i64* %1, i64 %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64 (i32*, i64*, i64, i64*, i64, i32, i32, i32, i64*, i32)*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %28 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = call i64* @escrypt_parse_setting(i64* %32, i32* %24, i32* %25, i32* %26)
  store i64* %33, i64** %17, align 8
  %34 = load i64*, i64** %17, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %6
  store i64* null, i64** %7, align 8
  store i32 1, i32* %27, align 4
  br label %137

37:                                               ; preds = %6
  %38 = load i32, i32* %24, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %23, align 4
  %40 = load i64*, i64** %17, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = ptrtoint i64* %40 to i64
  %43 = ptrtoint i64* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 8
  store i64 %45, i64* %20, align 8
  %46 = load i64*, i64** %17, align 8
  store i64* %46, i64** %18, align 8
  %47 = load i64*, i64** %18, align 8
  %48 = bitcast i64* %47 to i8*
  %49 = call i64 @strrchr(i8* %48, i8 signext 36)
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %17, align 8
  %51 = load i64*, i64** %17, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load i64*, i64** %17, align 8
  %55 = load i64*, i64** %18, align 8
  %56 = ptrtoint i64* %54 to i64
  %57 = ptrtoint i64* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 8
  store i64 %59, i64* %21, align 8
  br label %64

60:                                               ; preds = %37
  %61 = load i64*, i64** %18, align 8
  %62 = bitcast i64* %61 to i8*
  %63 = call i64 @strlen(i8* %62)
  store i64 %63, i64* %21, align 8
  br label %64

64:                                               ; preds = %60, %53
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %21, align 8
  %67 = add i64 %65, %66
  %68 = add i64 %67, 1
  %69 = load i64, i64* @crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED, align 8
  %70 = add i64 %68, %69
  %71 = add i64 %70, 1
  store i64 %71, i64* %22, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = load i64, i64* %22, align 8
  %77 = load i64, i64* %21, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %64
  store i64* null, i64** %7, align 8
  store i32 1, i32* %27, align 4
  br label %137

80:                                               ; preds = %75
  store i64 (i32*, i64*, i64, i64*, i64, i32, i32, i32, i64*, i32)* @escrypt_kdf_nosse, i64 (i32*, i64*, i64, i64*, i64, i32, i32, i32, i64*, i32)** %16, align 8
  %81 = load i64 (i32*, i64*, i64, i64*, i64, i32, i32, i32, i64*, i32)*, i64 (i32*, i64*, i64, i64*, i64, i32, i32, i32, i64*, i32)** %16, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64*, i64** %18, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %26, align 4
  %90 = mul nuw i64 8, %29
  %91 = trunc i64 %90 to i32
  %92 = call i64 %81(i32* %82, i64* %83, i64 %84, i64* %85, i64 %86, i32 %87, i32 %88, i32 %89, i64* %31, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  store i64* null, i64** %7, align 8
  store i32 1, i32* %27, align 4
  br label %137

95:                                               ; preds = %80
  %96 = load i64*, i64** %12, align 8
  store i64* %96, i64** %19, align 8
  %97 = load i64*, i64** %19, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %21, align 8
  %101 = add i64 %99, %100
  %102 = call i32 @memcpy(i64* %97, i64* %98, i64 %101)
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %21, align 8
  %105 = add i64 %103, %104
  %106 = load i64*, i64** %19, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 %105
  store i64* %107, i64** %19, align 8
  %108 = load i64*, i64** %19, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %19, align 8
  store i64 36, i64* %108, align 8
  %110 = load i64*, i64** %19, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64*, i64** %19, align 8
  %113 = load i64*, i64** %12, align 8
  %114 = ptrtoint i64* %112 to i64
  %115 = ptrtoint i64* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 8
  %118 = sub i64 %111, %117
  %119 = mul nuw i64 8, %29
  %120 = trunc i64 %119 to i32
  %121 = call i64* @encode64(i64* %110, i64 %118, i64* %31, i32 %120)
  store i64* %121, i64** %19, align 8
  %122 = mul nuw i64 8, %29
  %123 = trunc i64 %122 to i32
  %124 = call i32 @sodium_memzero(i64* %31, i32 %123)
  %125 = load i64*, i64** %19, align 8
  %126 = icmp ne i64* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %95
  %128 = load i64*, i64** %19, align 8
  %129 = load i64*, i64** %12, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = icmp uge i64* %128, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127, %95
  store i64* null, i64** %7, align 8
  store i32 1, i32* %27, align 4
  br label %137

134:                                              ; preds = %127
  %135 = load i64*, i64** %19, align 8
  store i64 0, i64* %135, align 8
  %136 = load i64*, i64** %12, align 8
  store i64* %136, i64** %7, align 8
  store i32 1, i32* %27, align 4
  br label %137

137:                                              ; preds = %134, %133, %94, %79, %36
  %138 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i64*, i64** %7, align 8
  ret i64* %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64* @escrypt_parse_setting(i64*, i32*, i32*, i32*) #2

declare dso_local i64 @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @escrypt_kdf_nosse(i32*, i64*, i64, i64*, i64, i32, i32, i32, i64*, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i64) #2

declare dso_local i64* @encode64(i64*, i64, i64*, i32) #2

declare dso_local i32 @sodium_memzero(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
