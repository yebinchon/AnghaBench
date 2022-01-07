; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretbox/extr_crypto_secretbox_easy.c_crypto_secretbox_detached.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretbox/extr_crypto_secretbox_easy.c_crypto_secretbox_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_stream_salsa20_KEYBYTES = common dso_local global i32 0, align 4
@crypto_secretbox_ZEROBYTES = common dso_local global i32 0, align 4
@crypto_onetimeauth_poly1305_KEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_secretbox_detached(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca [64 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load i32, i32* @crypto_stream_salsa20_KEYBYTES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @crypto_core_hsalsa20(i8* %22, i8* %23, i8* %24, i32* null)
  %26 = load i8*, i8** %7, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = icmp ugt i64 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %6
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i8*, i8** %9, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = sub i64 %33, %35
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %31, %6
  %40 = load i8*, i8** %9, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i8*, i8** %7, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = sub i64 %47, %49
  %51 = load i64, i64* %10, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45, %31
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @memmove(i8* %54, i8* %55, i64 %56)
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %53, %45, %39
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %61 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %62 = call i32 @memset(i8* %60, i32 0, i32 %61)
  %63 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %64 = icmp uge i32 64, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @COMPILER_ASSERT(i32 %65)
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %18, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %70 = sub i32 64, %69
  %71 = zext i32 %70 to i64
  %72 = icmp ugt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %75 = sub i32 64, %74
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %18, align 8
  br label %77

77:                                               ; preds = %73, %59
  store i64 0, i64* %17, align 8
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %18, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i64, i64* %17, align 8
  %88 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %89 = zext i32 %88 to i64
  %90 = add i64 %87, %89
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %90
  store i8 %86, i8* %91, align 1
  br label %92

92:                                               ; preds = %82
  %93 = load i64, i64* %17, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %17, align 8
  br label %78

95:                                               ; preds = %78
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %97 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %98 = load i64, i64* %18, align 8
  %99 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %100 = zext i32 %99 to i64
  %101 = add i64 %98, %100
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 16
  %104 = call i32 @crypto_stream_salsa20_xor(i8* %96, i8* %97, i64 %101, i8* %103, i8* %22)
  %105 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %106 = load i32, i32* @crypto_onetimeauth_poly1305_KEYBYTES, align 4
  %107 = icmp uge i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @COMPILER_ASSERT(i32 %108)
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %111 = call i32 @crypto_onetimeauth_poly1305_init(i8* %13, i8* %110)
  store i64 0, i64* %17, align 8
  br label %112

112:                                              ; preds = %126, %95
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %18, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32, i32* @crypto_secretbox_ZEROBYTES, align 4
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %17, align 8
  %120 = add i64 %118, %119
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load i8*, i8** %7, align 8
  %124 = load i64, i64* %17, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 %122, i8* %125, align 1
  br label %126

126:                                              ; preds = %116
  %127 = load i64, i64* %17, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %17, align 8
  br label %112

129:                                              ; preds = %112
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %131 = call i32 @sodium_memzero(i8* %130, i32 64)
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %18, align 8
  %134 = icmp ugt i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = load i8*, i8** %7, align 8
  %137 = load i64, i64* %18, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8*, i8** %9, align 8
  %140 = load i64, i64* %18, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %18, align 8
  %144 = sub i64 %142, %143
  %145 = load i8*, i8** %11, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 16
  %147 = call i32 @crypto_stream_salsa20_xor_ic(i8* %138, i8* %141, i64 %144, i8* %146, i32 1, i8* %22)
  br label %148

148:                                              ; preds = %135, %129
  %149 = trunc i64 %20 to i32
  %150 = call i32 @sodium_memzero(i8* %22, i32 %149)
  %151 = load i8*, i8** %7, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @crypto_onetimeauth_poly1305_update(i8* %13, i8* %151, i64 %152)
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @crypto_onetimeauth_poly1305_final(i8* %13, i8* %154)
  %156 = call i32 @sodium_memzero(i8* %13, i32 1)
  %157 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %157)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_core_hsalsa20(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @COMPILER_ASSERT(i32) #2

declare dso_local i32 @crypto_stream_salsa20_xor(i8*, i8*, i64, i8*, i8*) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_init(i8*, i8*) #2

declare dso_local i32 @sodium_memzero(i8*, i32) #2

declare dso_local i32 @crypto_stream_salsa20_xor_ic(i8*, i8*, i64, i8*, i32, i8*) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_update(i8*, i8*, i64) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_final(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
