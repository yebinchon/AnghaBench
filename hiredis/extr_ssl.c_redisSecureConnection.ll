; ModuleID = '/home/carl/AnghaBench/hiredis/extr_ssl.c_redisSecureConnection.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_ssl.c_redisSecureConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@redisSecureConnection.isInit = internal global i32 0, align 4
@REDIS_ERR_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to create SSL_CTX\00", align 1
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"certpath and keypath must be specified together\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid CA certificate\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid client certificate\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Invalid client key\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Couldn't create new SSL instance\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Couldn't set server name indication\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@sslLogCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisSecureConnection(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* @redisSecureConnection.isInit, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  store i32 1, i32* @redisSecureConnection.isInit, align 4
  %17 = call i32 (...) @SSL_library_init()
  br label %18

18:                                               ; preds = %16, %5
  %19 = call i32 (...) @SSLv23_client_method()
  %20 = call i32* @SSL_CTX_new(i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %26 = call i32 @__redisSetError(i32* %24, i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %114

27:                                               ; preds = %18
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %30 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @SSL_CTX_set_options(i32* %28, i32 %31)
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %35 = call i32 @SSL_CTX_set_verify(i32* %33, i32 %34, i32* null)
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38, %27
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %38
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %50 = call i32 @__redisSetError(i32* %48, i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %114

51:                                               ; preds = %44, %41
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32*, i32** %12, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @SSL_CTX_load_verify_locations(i32* %55, i8* %56, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %62 = call i32 @__redisSetError(i32* %60, i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %114

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i32*, i32** %12, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @SSL_CTX_use_certificate_chain_file(i32* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %75 = call i32 @__redisSetError(i32* %73, i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %114

76:                                               ; preds = %67
  %77 = load i32*, i32** %12, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %80 = call i32 @SSL_CTX_use_PrivateKey_file(i32* %77, i8* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %85 = call i32 @__redisSetError(i32* %83, i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %114

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i32*, i32** %12, align 8
  %89 = call i32* @SSL_new(i32* %88)
  store i32* %89, i32** %13, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %95 = call i32 @__redisSetError(i32* %93, i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %114

96:                                               ; preds = %87
  %97 = load i8*, i8** %11, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32*, i32** %13, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @SSL_set_tlsext_host_name(i32* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %107 = call i32 @__redisSetError(i32* %105, i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %114

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %96
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @redisSSLConnect(i32* %110, i32* %111, i32* %112)
  store i32 %113, i32* %6, align 4
  br label %128

114:                                              ; preds = %104, %92, %82, %72, %59, %47, %23
  %115 = load i32*, i32** %13, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32*, i32** %13, align 8
  %119 = call i32 @SSL_free(i32* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32*, i32** %12, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %12, align 8
  %125 = call i32 @SSL_CTX_free(i32* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* @REDIS_ERR, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %109
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_client_method(...) #1

declare dso_local i32 @__redisSetError(i32*, i32, i8*) #1

declare dso_local i32 @SSL_CTX_set_options(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i32*) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32*, i8*, i32) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local i32 @SSL_set_tlsext_host_name(i32*, i8*) #1

declare dso_local i32 @redisSSLConnect(i32*, i32*, i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
