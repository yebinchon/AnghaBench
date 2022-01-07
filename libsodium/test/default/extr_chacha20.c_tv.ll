; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_chacha20.c_tv.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_chacha20.c_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@tv.tests = internal global [5 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [65 x i8] c"0000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0000000000000000\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"0000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"0000000000000001\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"0100000000000000\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"0001020304050607\00", align 1
@crypto_stream_chacha20_KEYBYTES = common dso_local global i32 0, align 4
@crypto_stream_chacha20_NONCEBYTES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Failed with length %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [160 x i8], align 16
  %6 = alloca [160 x i8], align 16
  %7 = alloca [321 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i32, i32* @crypto_stream_chacha20_KEYBYTES, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @crypto_stream_chacha20_NONCEBYTES, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  store i64 0, i64* %8, align 8
  %17 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 160)
  br label %19

19:                                               ; preds = %76, %0
  %20 = trunc i64 %11 to i32
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @tv.tests, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 16
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @tv.tests, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 16
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @sodium_hex2bin(i8* %13, i32 %20, i8* %24, i32 %29, i32* null, i32* null, i32* null)
  %31 = trunc i64 %15 to i32
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @tv.tests, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* @tv.tests, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @sodium_hex2bin(i8* %16, i32 %31, i8* %35, i32 %40, i32* null, i32* null, i32* null)
  %42 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %43 = call i64 @crypto_stream_chacha20(i8* %42, i32 160, i8* %16, i8* %13)
  %44 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %45 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %46 = call i32 @sodium_bin2hex(i8* %44, i32 321, i8* %45, i32 160)
  %47 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %47)
  store i64 1, i64* %9, align 8
  br label %49

49:                                               ; preds = %72, %19
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %50, 160
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @sodium_malloc(i64 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @crypto_stream_chacha20_xor(i8* %56, i8* %57, i32 %59, i8* %16, i8* %13)
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i64 0, i64 0
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @memcmp(i8* %61, i8* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load i64, i64* %9, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %66, %52
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @sodium_free(i8* %70)
  br label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %49

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %8, align 8
  %79 = icmp ult i64 %78, 5
  br i1 %79, label %19, label %80

80:                                               ; preds = %76
  %81 = call i32 @assert(i32 1)
  store i64 1, i64* %9, align 8
  br label %82

82:                                               ; preds = %100, %80
  %83 = load i64, i64* %9, align 8
  %84 = icmp ult i64 %83, 66
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %87 = load i64, i64* %9, align 8
  %88 = and i64 %87, 255
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memset(i8* %86, i32 %89, i32 160)
  %91 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %92 = load i64, i64* %9, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @crypto_stream_chacha20(i8* %91, i32 %93, i8* %16, i8* %13)
  %95 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %96 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %97 = call i32 @sodium_bin2hex(i8* %95, i32 321, i8* %96, i32 160)
  %98 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %85
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %9, align 8
  br label %82

103:                                              ; preds = %82
  %104 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %105 = call i32 @randombytes_buf(i8* %104, i32 160)
  %106 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %107 = call i64 @crypto_stream_chacha20(i8* %106, i32 160, i8* %16, i8* %13)
  %108 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %109 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %110 = call i32 @sodium_bin2hex(i8* %108, i32 321, i8* %109, i32 160)
  %111 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %111)
  %113 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %114 = call i64 @crypto_stream_chacha20(i8* %113, i32 0, i8* %16, i8* %13)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %119 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %120 = call i64 @crypto_stream_chacha20_xor(i8* %118, i8* %119, i32 0, i8* %16, i8* %13)
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %125 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %126 = call i64 @crypto_stream_chacha20_xor(i8* %124, i8* %125, i32 0, i8* %16, i8* %13)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %131 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %132 = call i64 @crypto_stream_chacha20_xor_ic(i8* %130, i8* %131, i32 0, i8* %16, i32 1, i8* %13)
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %137 = call i32 @memset(i8* %136, i32 66, i32 160)
  %138 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %139 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %140 = call i64 @crypto_stream_chacha20_xor(i8* %138, i8* %139, i32 160, i8* %16, i8* %13)
  %141 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %142 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %143 = call i32 @sodium_bin2hex(i8* %141, i32 321, i8* %142, i32 160)
  %144 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %144)
  %146 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %147 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %148 = call i64 @crypto_stream_chacha20_xor_ic(i8* %146, i8* %147, i32 160, i8* %16, i32 0, i8* %13)
  %149 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %150 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %151 = call i32 @sodium_bin2hex(i8* %149, i32 321, i8* %150, i32 160)
  %152 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  %154 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %155 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %156 = call i64 @crypto_stream_chacha20_xor_ic(i8* %154, i8* %155, i32 160, i8* %16, i32 1, i8* %13)
  %157 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %158 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i64 0, i64 0
  %159 = call i32 @sodium_bin2hex(i8* %157, i32 321, i8* %158, i32 160)
  %160 = getelementptr inbounds [321 x i8], [321 x i8]* %7, i64 0, i64 0
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %160)
  %162 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %162)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @crypto_stream_chacha20(i8*, i32, i8*, i8*) #2

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @sodium_malloc(i64) #2

declare dso_local i64 @crypto_stream_chacha20_xor(i8*, i8*, i32, i8*, i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i64) #2

declare dso_local i32 @sodium_free(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @randombytes_buf(i8*, i32) #2

declare dso_local i64 @crypto_stream_chacha20_xor_ic(i8*, i8*, i32, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
