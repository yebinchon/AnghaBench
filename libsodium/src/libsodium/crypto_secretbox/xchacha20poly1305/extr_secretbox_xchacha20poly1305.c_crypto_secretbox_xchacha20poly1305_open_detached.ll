; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretbox/xchacha20poly1305/extr_secretbox_xchacha20poly1305.c_crypto_secretbox_xchacha20poly1305_open_detached.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretbox/xchacha20poly1305/extr_secretbox_xchacha20poly1305.c_crypto_secretbox_xchacha20poly1305_open_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_stream_chacha20_KEYBYTES = common dso_local global i32 0, align 4
@crypto_secretbox_xchacha20poly1305_ZEROBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_secretbox_xchacha20poly1305_open_detached(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i32, i32* @crypto_stream_chacha20_KEYBYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 @crypto_core_hchacha20(i8* %23, i8* %24, i8* %25, i32* null)
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %28 = load i32, i32* @crypto_stream_chacha20_KEYBYTES, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 16
  %31 = call i32 @crypto_stream_chacha20(i8* %27, i32 %28, i8* %30, i8* %23)
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %36 = call i64 @crypto_onetimeauth_poly1305_verify(i8* %32, i8* %33, i64 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %6
  %39 = trunc i64 %21 to i32
  %40 = call i32 @sodium_memzero(i8* %23, i32 %39)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %156

41:                                               ; preds = %6
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %156

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = icmp uge i64 %47, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i8*, i8** %8, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = sub i64 %53, %55
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %73, label %59

59:                                               ; preds = %51, %45
  %60 = load i8*, i8** %8, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load i8*, i8** %9, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = icmp uge i64 %61, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load i8*, i8** %9, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = sub i64 %67, %69
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65, %51
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @memmove(i8* %74, i8* %75, i64 %76)
  %78 = load i8*, i8** %8, align 8
  store i8* %78, i8** %9, align 8
  br label %79

79:                                               ; preds = %73, %65, %59
  %80 = load i64, i64* %11, align 8
  store i64 %80, i64* %18, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i32, i32* @crypto_secretbox_xchacha20poly1305_ZEROBYTES, align 4
  %83 = sub i32 64, %82
  %84 = zext i32 %83 to i64
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @crypto_secretbox_xchacha20poly1305_ZEROBYTES, align 4
  %88 = sub i32 64, %87
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %18, align 8
  br label %90

90:                                               ; preds = %86, %79
  store i64 0, i64* %17, align 8
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %18, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i32, i32* @crypto_secretbox_xchacha20poly1305_ZEROBYTES, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %17, align 8
  %103 = add i64 %101, %102
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %103
  store i8 %99, i8* %104, align 1
  br label %105

105:                                              ; preds = %95
  %106 = load i64, i64* %17, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %17, align 8
  br label %91

108:                                              ; preds = %91
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %111 = load i32, i32* @crypto_secretbox_xchacha20poly1305_ZEROBYTES, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* %18, align 8
  %114 = add i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 16
  %118 = call i32 @crypto_stream_chacha20_xor(i8* %109, i8* %110, i32 %115, i8* %117, i8* %23)
  store i64 0, i64* %17, align 8
  br label %119

119:                                              ; preds = %133, %108
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* %18, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i64, i64* %17, align 8
  %125 = load i32, i32* @crypto_secretbox_xchacha20poly1305_ZEROBYTES, align 4
  %126 = zext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %8, align 8
  %131 = load i64, i64* %17, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8 %129, i8* %132, align 1
  br label %133

133:                                              ; preds = %123
  %134 = load i64, i64* %17, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %17, align 8
  br label %119

136:                                              ; preds = %119
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %18, align 8
  %139 = icmp ugt i64 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i8*, i8** %8, align 8
  %142 = load i64, i64* %18, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i8*, i8** %9, align 8
  %145 = load i64, i64* %18, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %18, align 8
  %149 = sub i64 %147, %148
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 16
  %152 = call i32 @crypto_stream_chacha20_xor_ic(i8* %143, i8* %146, i64 %149, i8* %151, i32 1, i8* %23)
  br label %153

153:                                              ; preds = %140, %136
  %154 = trunc i64 %21 to i32
  %155 = call i32 @sodium_memzero(i8* %23, i32 %154)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %156

156:                                              ; preds = %153, %44, %38
  %157 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_core_hchacha20(i8*, i8*, i8*, i32*) #2

declare dso_local i32 @crypto_stream_chacha20(i8*, i32, i8*, i8*) #2

declare dso_local i64 @crypto_onetimeauth_poly1305_verify(i8*, i8*, i64, i8*) #2

declare dso_local i32 @sodium_memzero(i8*, i32) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @crypto_stream_chacha20_xor(i8*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @crypto_stream_chacha20_xor_ic(i8*, i8*, i64, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
