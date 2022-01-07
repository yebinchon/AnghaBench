; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_hkdf.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_hkdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@ctx = common dso_local global i32 0, align 4
@PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 = common dso_local global i32 0, align 4
@__const.test_hkdf.salt = private unnamed_addr constant [14 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\00", align 1
@__const.test_hkdf.ikm = private unnamed_addr constant [23 x i8] c"\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\00", align 16
@__const.test_hkdf.info = private unnamed_addr constant [11 x i8] c"\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\00", align 1
@PTLS_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"\07w\096,.2\DF\0D\DC?\0D\C4{\BAc\90\B6\C7;\B5\0F\9C1\22\EC\84J\D7\C2\B3\E5\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"<\B2_%\FA\AC\D5z\90COd\D06/*--\0A\90\CF\1AZL]\B0-V\EC\C4\C5\BF4\00r\08\D5\B8\87\18Xe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hkdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hkdf() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca [14 x i8], align 1
  %3 = alloca [23 x i8], align 16
  %4 = alloca [11 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [42 x i8], align 16
  %8 = load i32, i32* @ctx, align 4
  %9 = load i32, i32* @PTLS_CIPHER_SUITE_AES_128_GCM_SHA256, align 4
  %10 = call %struct.TYPE_6__* @find_cipher(i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %1, align 8
  %13 = bitcast [14 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.test_hkdf.salt, i32 0, i32 0), i64 14, i1 false)
  %14 = bitcast [23 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.test_hkdf.ikm, i32 0, i32 0), i64 23, i1 false)
  %15 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_hkdf.info, i32 0, i32 0), i64 11, i1 false)
  %16 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %22 = call i32 @ptls_iovec_init(i8* %21, i32 13)
  %23 = getelementptr inbounds [23 x i8], [23 x i8]* %3, i64 0, i64 0
  %24 = call i32 @ptls_iovec_init(i8* %23, i32 22)
  %25 = call i32 @ptls_hkdf_extract(%struct.TYPE_5__* %20, i8* %19, i32 %22, i32 %24)
  %26 = call i64 @memcmp(i8* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 32)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds [42 x i8], [42 x i8]* %7, i64 0, i64 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ptls_iovec_init(i8* %19, i32 %34)
  %36 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %37 = call i32 @ptls_iovec_init(i8* %36, i32 10)
  %38 = call i32 @ptls_hkdf_expand(%struct.TYPE_5__* %30, i8* %31, i32 42, i32 %35, i32 %37)
  %39 = getelementptr inbounds [42 x i8], [42 x i8]* %7, i64 0, i64 0
  %40 = call i64 @memcmp(i8* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 42)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42)
  %44 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %44)
  ret void
}

declare dso_local %struct.TYPE_6__* @find_cipher(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @ptls_hkdf_extract(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @ptls_iovec_init(i8*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ptls_hkdf_expand(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
