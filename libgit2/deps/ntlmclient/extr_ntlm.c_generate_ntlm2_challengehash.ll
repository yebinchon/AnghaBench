; ModuleID = '/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_generate_ntlm2_challengehash.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/ntlmclient/extr_ntlm.c_generate_ntlm2_challengehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NTLM_NTLM2_HASH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to create HMAC-MD5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*, i8*, i8*, i64)* @generate_ntlm2_challengehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_ntlm2_challengehash(i8* %0, %struct.TYPE_6__* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32, i32* @NTLM_NTLM2_HASH_LEN, align 4
  %14 = zext i32 %13 to i64
  store i64 16, i64* %12, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntlm_hmac_ctx_reset(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* @NTLM_NTLM2_HASH_LEN, align 4
  %26 = call i32 @ntlm_hmac_md5_init(i32 %23, i8* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @ntlm_hmac_md5_update(i32 %31, i8* %35, i64 8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @ntlm_hmac_md5_update(i32 %41, i8* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntlm_hmac_md5_final(i8* %47, i64* %12, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46, %38, %28, %20, %5
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = call i32 @ntlm_client_set_errmsg(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %57, 16
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @ntlm_hmac_ctx_reset(i32) #1

declare dso_local i32 @ntlm_hmac_md5_init(i32, i8*, i32) #1

declare dso_local i32 @ntlm_hmac_md5_update(i32, i8*, i64) #1

declare dso_local i32 @ntlm_hmac_md5_final(i8*, i64*, i32) #1

declare dso_local i32 @ntlm_client_set_errmsg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
