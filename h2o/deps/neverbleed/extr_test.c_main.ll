; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEVERBLEED_ERRBUF_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"openssl_privsep_init: %s\0A\00", align 1
@SSL_OP_ALL = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@SSL_OP_NO_COMPRESSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Usage: %s <internal|privsep> <port> <certificate-chain-file> <private-key-file>\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"privsep\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unknown mode:%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to parse port:%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"failed to load certificate chain file:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"failed to load private key from file:%s:%s\0A\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"failed to load private key from file:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @NEVERBLEED_ERRBUF_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = call i32 (...) @SSL_load_error_strings()
  %18 = call i32 (...) @SSL_library_init()
  %19 = call i32 (...) @OpenSSL_add_all_algorithms()
  %20 = call i64 @neverbleed_init(i32* %8, i8* %16)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

25:                                               ; preds = %2
  %26 = call i32 (...) @SSLv23_server_method()
  %27 = call i32* @SSL_CTX_new(i32 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @SSL_OP_ALL, align 4
  %30 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SSL_OP_NO_COMPRESSION, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @SSL_CTX_set_options(i32* %28, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @setup_ecc_key(i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 5
  br i1 %40, label %41, label %47

41:                                               ; preds = %25
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

47:                                               ; preds = %25
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %68

54:                                               ; preds = %47
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %67

61:                                               ; preds = %54
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  store i32 111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %53
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i16* %6)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  store i32 111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

80:                                               ; preds = %68
  %81 = load i32*, i32** %7, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @SSL_CTX_use_certificate_chain_file(i32* %81, i8* %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  store i32 111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

93:                                               ; preds = %80
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32*, i32** %7, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @neverbleed_load_private_key_file(i32* %8, i32* %97, i8* %100, i8* %16)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 4
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %107, i8* %16)
  store i32 111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

109:                                              ; preds = %96
  br label %125

110:                                              ; preds = %93
  %111 = load i32*, i32** %7, align 8
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 4
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %116 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %111, i8* %114, i32 %115)
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 4
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* %122)
  store i32 111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %109
  %126 = load i16, i16* %6, align 2
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @dumb_https_server(i16 zeroext %126, i32* %127)
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %129

129:                                              ; preds = %125, %118, %103, %87, %74, %61, %41, %22
  %130 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SSL_load_error_strings(...) #2

declare dso_local i32 @SSL_library_init(...) #2

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #2

declare dso_local i64 @neverbleed_init(i32*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

declare dso_local i32* @SSL_CTX_new(i32) #2

declare dso_local i32 @SSLv23_server_method(...) #2

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #2

declare dso_local i32 @setup_ecc_key(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i16*) #2

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32*, i8*) #2

declare dso_local i32 @neverbleed_load_private_key_file(i32*, i32*, i8*, i8*) #2

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #2

declare dso_local i32 @dumb_https_server(i16 zeroext, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
