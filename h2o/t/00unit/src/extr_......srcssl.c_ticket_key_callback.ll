; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_ticket_key_callback.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_ticket_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.st_session_ticket_t** }
%struct.st_session_ticket_t = type { i64, i32, i32, i32 }

@session_tickets = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*, i32)* @ticket_key_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ticket_key_callback(i8* %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.st_session_ticket_t*, align 8
  %13 = alloca %struct.st_session_ticket_t*, align 8
  %14 = alloca %struct.st_session_ticket_t*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = call i32 @pthread_rwlock_rdlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 0))
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %22 = call i32 @RAND_bytes(i8* %20, i32 %21)
  %23 = call i64 @time(i32* null)
  %24 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i64 %23)
  store %struct.st_session_ticket_t* %24, %struct.st_session_ticket_t** %12, align 8
  store %struct.st_session_ticket_t* null, %struct.st_session_ticket_t** %13, align 8
  %25 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %26 = icmp ne %struct.st_session_ticket_t* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %33

28:                                               ; preds = %19
  %29 = call i32 (...) @EVP_aes_256_cbc()
  %30 = call i32 (...) @EVP_sha256()
  %31 = load i32, i32* @UINT64_MAX, align 4
  %32 = call %struct.st_session_ticket_t* @new_ticket(i32 %29, i32 %30, i32 0, i32 %31, i32 1)
  store %struct.st_session_ticket_t* %32, %struct.st_session_ticket_t** %13, align 8
  store %struct.st_session_ticket_t* %32, %struct.st_session_ticket_t** %12, align 8
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %36 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i8* %34, i32 %37, i32 4)
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %41 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %44 = call i32 @session_ticket_get_cipher_key(%struct.st_session_ticket_t* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @EVP_EncryptInit_ex(i32* %39, i32 %42, i32* null, i32 %44, i8* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @assert(i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %51 = call i32 @session_ticket_get_hmac_key(%struct.st_session_ticket_t* %50)
  %52 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %53 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @EVP_MD_block_size(i32 %54)
  %56 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %57 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @HMAC_Init_ex(i32* %49, i32 %51, i32 %55, i32 %58, i32* null)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %13, align 8
  %63 = icmp ne %struct.st_session_ticket_t* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %33
  %65 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %12, align 8
  %66 = call i32 @free_ticket(%struct.st_session_ticket_t* %65)
  br label %67

67:                                               ; preds = %64, %33
  store i32 1, i32* %11, align 4
  br label %129

68:                                               ; preds = %5
  store i64 0, i64* %15, align 8
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 0), align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %74, i64 %75
  %77 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %76, align 8
  store %struct.st_session_ticket_t* %77, %struct.st_session_ticket_t** %14, align 8
  %78 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %14, align 8
  %79 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @memcmp(i32 %80, i8* %81, i32 4)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %90

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %15, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %15, align 8
  br label %69

89:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %130

90:                                               ; preds = %84
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %14, align 8
  %93 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %14, align 8
  %96 = call i32 @session_ticket_get_cipher_key(%struct.st_session_ticket_t* %95)
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @EVP_DecryptInit_ex(i32* %91, i32 %94, i32* null, i32 %96, i8* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @assert(i32 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %14, align 8
  %103 = call i32 @session_ticket_get_hmac_key(%struct.st_session_ticket_t* %102)
  %104 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %14, align 8
  %105 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @EVP_MD_block_size(i32 %106)
  %108 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %14, align 8
  %109 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @HMAC_Init_ex(i32* %101, i32 %103, i32 %107, i32 %110, i32* null)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @assert(i32 %112)
  %114 = load i64, i64* %15, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %90
  %117 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %118 = load i64, i64* %15, align 8
  %119 = sub i64 %118, 1
  %120 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %117, i64 %119
  %121 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %120, align 8
  %122 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @time(i32* null)
  %125 = icmp sle i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  store i32 2, i32* %11, align 4
  br label %128

127:                                              ; preds = %116, %90
  store i32 1, i32* %11, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %67
  br label %130

130:                                              ; preds = %129, %89
  %131 = call i32 @pthread_rwlock_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 0))
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local i32 @pthread_rwlock_rdlock(i32*) #1

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.st_session_ticket_t* @new_ticket(i32, i32, i32, i32, i32) #1

declare dso_local i32 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @session_ticket_get_cipher_key(%struct.st_session_ticket_t*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @HMAC_Init_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @session_ticket_get_hmac_key(%struct.st_session_ticket_t*) #1

declare dso_local i32 @EVP_MD_block_size(i32) #1

declare dso_local i32 @free_ticket(%struct.st_session_ticket_t*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @EVP_DecryptInit_ex(i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
