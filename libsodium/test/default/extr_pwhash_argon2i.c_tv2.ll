; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_argon2i.c_tv2.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_argon2i.c_tv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64, i8*, i64, i64, i64, i32 }

@tv2.tests = internal global [2 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), i64 155, i64 4, i64 397645, i32 1 }, %struct.anon { i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str, i32 0, i32 0), i64 127, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), i64 155, i64 3, i64 397645, i32 1 }], align 16
@.str = private unnamed_addr constant [255 x i8] c"a347ae92bce9f80f6f595a4480fc9c2fe7e7d7148d371e9487d75f5c23008ffae065577a928febd9b1973a5a95073acdbeb6a030cfc0d79caa2dc5cd011cef02c08da232d76d52dfbca38ca8dcbd665b17d1665f7cf5fe59772ec909733b24de97d6f58d220b20c60d7c07ec1fd93c52c31020300c6c1facd77937a597c7a6\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"5541fbc995d5c197ba290346d2c559dedf405cf97e5f95482143202f9e74f5c2\00", align 1
@crypto_pwhash_SALTBYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"[tv2] pwhash failure: [%u]\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"[tv2] pwhash should have failed (0)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"[tv2] pwhash should have failed (0')\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"[tv2] pwhash should have failed (1)\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"[tv2] pwhash should have failed (2)\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"[tv2] pwhash should have failed (3)\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"[tv2] pwhash with a short output length should have failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"[tv2] pwhash with a long password length should have failed\0A\00", align 1
@OPSLIMIT = common dso_local global i32 0, align 4
@MEMLIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv2() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [513 x i8], align 16
  %6 = alloca i64, align 8
  %7 = load i32, i32* @crypto_pwhash_SALTBYTES, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %72, %0
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @sodium_hex2bin(i8* %12, i32 256, i8* %16, i32 %21, i32* null, i32* null, i32* null)
  %23 = trunc i64 %8 to i32
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i32 @sodium_hex2bin(i8* %10, i32 %23, i8* %27, i32 %32, i32* null, i32* null, i32* null)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (...) @crypto_pwhash_alg_argon2i13()
  %56 = call i32 @crypto_pwhash(i8* %34, i32 %39, i8* %40, i32 %45, i8* %10, i32 %50, i64 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %11
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %72

62:                                               ; preds = %11
  %63 = getelementptr inbounds [513 x i8], [513 x i8]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* @tv2.tests, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @sodium_bin2hex(i8* %63, i32 513, i8* %64, i64 %68)
  %70 = getelementptr inbounds [513 x i8], [513 x i8]* %5, i64 0, i64 0
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %62, %58
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  %75 = icmp ult i64 %74, 2
  br i1 %75, label %11, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %78 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @crypto_pwhash(i8* %77, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %78, i8* %10, i32 3, i64 4096, i32 0)
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %85 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %86 = call i32 @crypto_pwhash_argon2i(i8* %84, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %85, i8* %10, i32 3, i64 4096, i32 0)
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %92 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %93 = call i32 (...) @crypto_pwhash_alg_argon2i13()
  %94 = call i32 @crypto_pwhash(i8* %91, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %92, i8* %10, i32 3, i64 1, i32 %93)
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %90
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %100 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %101 = call i32 (...) @crypto_pwhash_alg_argon2i13()
  %102 = call i32 @crypto_pwhash(i8* %99, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %100, i8* %10, i32 3, i64 4096, i32 %101)
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %108 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %109 = call i32 (...) @crypto_pwhash_alg_argon2i13()
  %110 = call i32 @crypto_pwhash(i8* %107, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %108, i8* %10, i32 2, i64 4096, i32 %109)
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %106
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %116 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %117 = call i32 (...) @crypto_pwhash_alg_argon2i13()
  %118 = call i32 @crypto_pwhash(i8* %115, i32 15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %116, i8* %10, i32 3, i64 4096, i32 %117)
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %114
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %124 = call i32 (...) @crypto_pwhash_alg_argon2i13()
  %125 = call i32 @crypto_pwhash(i8* %123, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0, i8* %10, i32 3, i64 4096, i32 %124)
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %122
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %131 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @OPSLIMIT, align 4
  %133 = load i64, i64* @MEMLIMIT, align 8
  %134 = call i32 (...) @crypto_pwhash_alg_argon2id13()
  %135 = call i32 @crypto_pwhash_argon2i(i8* %130, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %131, i8* %10, i32 %132, i64 %133, i32 %134)
  %136 = icmp eq i32 %135, -1
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %139)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @crypto_pwhash(i8*, i32, i8*, i32, i8*, i32, i64, i32) #2

declare dso_local i32 @crypto_pwhash_alg_argon2i13(...) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sodium_bin2hex(i8*, i32, i8*, i64) #2

declare dso_local i32 @crypto_pwhash_argon2i(i8*, i32, i8*, i32, i8*, i32, i64, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @crypto_pwhash_alg_argon2id13(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
