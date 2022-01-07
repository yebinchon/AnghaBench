; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-rsa.c_rsa_encrypt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-rsa.c_rsa_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"rsa_encrypt (private_key_name = %s, ilen = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Couldn't open private key file: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"PEM_read_RSAPrivateKey returns NULL.\0A\00", align 1
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"RSA_private_encrypt fail.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"c_len = %d, f_len = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_encrypt(i8* %0, i8* %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %26 = load i8**, i8*** %10, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32*, i32** %11, align 8
  store i32 -1, i32* %27, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %6, align 4
  br label %138

35:                                               ; preds = %5
  %36 = load i32*, i32** %14, align 8
  %37 = call i32* @PEM_read_RSAPrivateKey(i32* %36, i32* null, i32* null, i32* null)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %12, align 4
  br label %124

42:                                               ; preds = %35
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @fclose(i32* %43)
  store i32* null, i32** %14, align 8
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %47 = call i32 @generate_aes_key(i8* %45, i8* %46)
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @RSA_size(i32* %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 4, %50
  %52 = add nsw i32 %51, 32
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @malloc(i32 %59)
  %61 = load i8**, i8*** %10, align 8
  store i8* %60, i8** %61, align 8
  store i8* %60, i8** %18, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = call i32 (i8*, ...) @memcpy(i8* %62, i32* %17, i32 4)
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %65 = load i8*, i8** %18, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %69 = call i32 @RSA_private_encrypt(i32 32, i8* %64, i8* %66, i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %42
  %72 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -3, i32* %12, align 4
  br label %124

73:                                               ; preds = %42
  %74 = load i8*, i8** %18, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %80 = call i32 (i8*, ...) @memcpy(i8* %78, i8* %79, i32 32)
  %81 = call i32 @EVP_CIPHER_CTX_init(i32* %19)
  %82 = call i32 (...) @EVP_aes_256_cbc()
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %85 = call i32 @EVP_EncryptInit_ex(i32* %19, i32 %82, i32* null, i8* %83, i8* %84)
  %86 = load i8*, i8** %18, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 32
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @EVP_EncryptUpdate(i32* %19, i8* %91, i32* %20, i8* %92, i32 %93)
  %95 = load i8*, i8** %18, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = getelementptr inbounds i8, i8* %99, i64 32
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = call i32 @EVP_EncryptFinal_ex(i32* %19, i8* %103, i32* %21)
  %105 = call i32 @EVP_CIPHER_CTX_cleanup(i32* %19)
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 4, %106
  %108 = add nsw i32 %107, 32
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %21, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %22, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* %21, align 4
  %115 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %22, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %116, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32, i32* %22, align 4
  %123 = load i32*, i32** %11, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %73, %71, %40
  %125 = load i32*, i32** %14, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @fclose(i32* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32*, i32** %13, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @RSA_free(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %32
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32* @PEM_read_RSAPrivateKey(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @generate_aes_key(i8*, i8*) #1

declare dso_local i32 @RSA_size(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32 @RSA_private_encrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_init(i32*) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @EVP_EncryptUpdate(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_EncryptFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_cleanup(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
