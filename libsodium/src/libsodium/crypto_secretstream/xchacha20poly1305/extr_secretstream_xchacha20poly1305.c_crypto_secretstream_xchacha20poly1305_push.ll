; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_push.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_secretstream/xchacha20poly1305/extr_secretstream_xchacha20poly1305.c_crypto_secretstream_xchacha20poly1305_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@crypto_aead_chacha20poly1305_ietf_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8
@_pad0 = common dso_local global i8* null, align 8
@crypto_onetimeauth_poly1305_BYTES = common dso_local global i64 0, align 8
@crypto_secretstream_xchacha20poly1305_INONCEBYTES = common dso_local global i64 0, align 8
@crypto_secretstream_xchacha20poly1305_COUNTERBYTES = common dso_local global i32 0, align 4
@crypto_secretstream_xchacha20poly1305_TAG_REKEY = common dso_local global i8 0, align 1
@crypto_secretstream_xchacha20poly1305_ABYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_secretstream_xchacha20poly1305_push(%struct.TYPE_6__* %0, i8* %1, i64* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8 zeroext %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [64 x i8], align 16
  %19 = alloca [8 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8 %7, i8* %16, align 1
  %22 = load i64*, i64** %11, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i64*, i64** %11, align 8
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i64, i64* @crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX, align 8
  %28 = load i64, i64* @crypto_aead_chacha20poly1305_ietf_MESSAGEBYTES_MAX, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @COMPILER_ASSERT(i32 %30)
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (...) @sodium_misuse()
  br label %37

37:                                               ; preds = %35, %26
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @crypto_stream_chacha20_ietf(i8* %38, i32 64, i32 %41, i32 %44)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %47 = call i32 @crypto_onetimeauth_poly1305_init(i8* %17, i8* %46)
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %49 = call i32 @sodium_memzero(i8* %48, i32 64)
  %50 = load i8*, i8** %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %50, i32 %52)
  %54 = load i8*, i8** @_pad0, align 8
  %55 = load i64, i64* %15, align 8
  %56 = sub i64 16, %55
  %57 = and i64 %56, 15
  %58 = trunc i64 %57 to i32
  %59 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %54, i32 %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %61 = call i32 @memset(i8* %60, i32 0, i32 64)
  %62 = load i8, i8* %16, align 1
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  store i8 %62, i8* %63, align 16
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %64, i8* %65, i64 64, i32 %68, i32 1, i32 %71)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %74 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %73, i32 64)
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %76 = load i8, i8* %75, align 16
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %78, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %20, align 8
  %81 = load i8*, i8** %20, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %81, i8* %82, i64 %83, i32 %86, i32 2, i32 %89)
  %91 = load i8*, i8** %20, align 8
  %92 = load i64, i64* %13, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %91, i32 %93)
  %95 = load i8*, i8** @_pad0, align 8
  %96 = load i64, i64* %13, align 8
  %97 = add i64 -48, %96
  %98 = and i64 %97, 15
  %99 = trunc i64 %98 to i32
  %100 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %95, i32 %99)
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %102 = load i64, i64* %15, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @STORE64_LE(i8* %101, i32 %103)
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %106 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %105, i32 8)
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %108 = load i64, i64* %13, align 8
  %109 = add i64 64, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @STORE64_LE(i8* %107, i32 %110)
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %113 = call i32 @crypto_onetimeauth_poly1305_update(i8* %17, i8* %112, i32 8)
  %114 = load i8*, i8** %20, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %21, align 8
  %117 = load i8*, i8** %21, align 8
  %118 = call i32 @crypto_onetimeauth_poly1305_final(i8* %17, i8* %117)
  %119 = call i32 @sodium_memzero(i8* %17, i32 1)
  %120 = load i64, i64* @crypto_onetimeauth_poly1305_BYTES, align 8
  %121 = load i64, i64* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 8
  %122 = icmp sge i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @COMPILER_ASSERT(i32 %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %126 = call i32 @STATE_INONCE(%struct.TYPE_6__* %125)
  %127 = load i8*, i8** %21, align 8
  %128 = load i64, i64* @crypto_secretstream_xchacha20poly1305_INONCEBYTES, align 8
  %129 = call i32 @XOR_BUF(i32 %126, i8* %127, i64 %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %131 = call i32 @STATE_COUNTER(%struct.TYPE_6__* %130)
  %132 = load i32, i32* @crypto_secretstream_xchacha20poly1305_COUNTERBYTES, align 4
  %133 = call i32 @sodium_increment(i32 %131, i32 %132)
  %134 = load i8, i8* %16, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* @crypto_secretstream_xchacha20poly1305_TAG_REKEY, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %37
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %142 = call i32 @STATE_COUNTER(%struct.TYPE_6__* %141)
  %143 = load i32, i32* @crypto_secretstream_xchacha20poly1305_COUNTERBYTES, align 4
  %144 = call i64 @sodium_is_zero(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140, %37
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %148 = call i32 @crypto_secretstream_xchacha20poly1305_rekey(%struct.TYPE_6__* %147)
  br label %149

149:                                              ; preds = %146, %140
  %150 = load i64*, i64** %11, align 8
  %151 = icmp ne i64* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i64, i64* @crypto_secretstream_xchacha20poly1305_ABYTES, align 8
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %153, %154
  %156 = load i64*, i64** %11, align 8
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %152, %149
  ret i32 0
}

declare dso_local i32 @COMPILER_ASSERT(i32) #1

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @crypto_stream_chacha20_ietf(i8*, i32, i32, i32) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_init(i8*, i8*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_update(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @crypto_stream_chacha20_ietf_xor_ic(i8*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @STORE64_LE(i8*, i32) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_final(i8*, i8*) #1

declare dso_local i32 @XOR_BUF(i32, i8*, i64) #1

declare dso_local i32 @STATE_INONCE(%struct.TYPE_6__*) #1

declare dso_local i32 @sodium_increment(i32, i32) #1

declare dso_local i32 @STATE_COUNTER(%struct.TYPE_6__*) #1

declare dso_local i64 @sodium_is_zero(i32, i32) #1

declare dso_local i32 @crypto_secretstream_xchacha20poly1305_rekey(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
