; ModuleID = '/home/carl/AnghaBench/h2o/deps/ssl-conservatory/openssl/extr_test_client.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/ssl-conservatory/openssl/extr_test_client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"OpenSSL PRNG not seeded with enough data.\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@TRUSTED_CA_PATHNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't load certificate trust store.\0A\00", align 1
@SECURE_CIPHER_LIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't locate SSL pointer\0A\00", align 1
@TARGET_SERVER = common dso_local global i32 0, align 4
@X509_V_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Certificate chain validation failed: %s\0A\00", align 1
@TARGET_HOST = common dso_local global i32 0, align 4
@MatchFound = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Hostname validation failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 (...) @SSL_library_init()
  %12 = call i32 (...) @SSL_load_error_strings()
  %13 = call i32 (...) @RAND_status()
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %99

18:                                               ; preds = %2
  %19 = call i32 (...) @TLSv1_client_method()
  %20 = call i32* @SSL_CTX_new(i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %23 = call i32 @SSL_CTX_set_verify(i32* %21, i32 %22, i32* null)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @TRUSTED_CA_PATHNAME, align 4
  %26 = call i32 @SSL_CTX_load_verify_locations(i32* %24, i32 %25, i32* null)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %96

31:                                               ; preds = %18
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @SECURE_CIPHER_LIST, align 4
  %34 = call i32 @SSL_CTX_set_cipher_list(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %96

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @BIO_new_ssl_connect(i32* %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @BIO_get_ssl(i32* %40, i32** %8)
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %93

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @TARGET_SERVER, align 4
  %50 = call i32 @BIO_set_conn_hostname(i32* %48, i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @SSL_do_handshake(i32* %51)
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @SSL_get_verify_result(i32* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @X509_V_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i8* @X509_verify_cert_error_string(i64 %62)
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @ERR_print_errors_fp(i32 %66)
  br label %68

68:                                               ; preds = %65, %60
  br label %93

69:                                               ; preds = %47
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @SSL_get_peer_certificate(i32* %70)
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %90

75:                                               ; preds = %69
  %76 = load i32, i32* @TARGET_HOST, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @validate_hostname(i32 %76, i32* %77)
  %79 = load i64, i64* @MatchFound, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %87

84:                                               ; preds = %75
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @send_http_get_and_print(i32* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @X509_free(i32* %88)
  br label %90

90:                                               ; preds = %87, %74
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @BIO_ssl_shutdown(i32* %91)
  br label %93

93:                                               ; preds = %90, %68, %44
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @BIO_free_all(i32* %94)
  br label %96

96:                                               ; preds = %93, %36, %28
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @SSL_CTX_free(i32* %97)
  br label %99

99:                                               ; preds = %96, %15
  %100 = call i32 (...) @EVP_cleanup()
  %101 = call i32 (...) @ERR_free_strings()
  ret i32 0
}

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @RAND_status(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @TLSv1_client_method(...) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i32) #1

declare dso_local i32* @BIO_new_ssl_connect(i32*) #1

declare dso_local i32 @BIO_get_ssl(i32*, i32**) #1

declare dso_local i32 @BIO_set_conn_hostname(i32*, i32) #1

declare dso_local i64 @SSL_do_handshake(i32*) #1

declare dso_local i64 @SSL_get_verify_result(i32*) #1

declare dso_local i8* @X509_verify_cert_error_string(i64) #1

declare dso_local i32 @ERR_print_errors_fp(i32) #1

declare dso_local i32* @SSL_get_peer_certificate(i32*) #1

declare dso_local i64 @validate_hostname(i32, i32*) #1

declare dso_local i32 @send_http_get_and_print(i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @BIO_ssl_shutdown(i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @EVP_cleanup(...) #1

declare dso_local i32 @ERR_free_strings(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
