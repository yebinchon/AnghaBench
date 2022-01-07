; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_hmac_sha256.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_hmac_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32*, i32)*, i32 (%struct.TYPE_10__*, i8*, i32)* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Hi There\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\B04La\D8\DB8S\\\A8\AF\CE\AF\0B\F1+\88\1D\C2\00\C9\83=\A7&\E97l.2\CF\F7\00", align 1
@ctx = common dso_local global i32 0, align 4
@PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 = common dso_local global i32 0, align 4
@PTLS_HASH_FINAL_MODE_RESET = common dso_local global i32 0, align 4
@PTLS_HASH_FINAL_MODE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmac_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmac_sha256() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.TYPE_10__*, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %6 = load i32, i32* @ctx, align 4
  %7 = load i32, i32* @PTLS_CIPHER_SUITE_AES_128_GCM_SHA256, align 4
  %8 = call %struct.TYPE_11__* @find_cipher(i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call %struct.TYPE_10__* @ptls_hmac_create(i32 %10, i8* %11, i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %16 = call i32 @memset(i32* %15, i32 0, i32 128)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_10__*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i32)** %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32 %19(%struct.TYPE_10__* %20, i8* %21, i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_10__*, i32*, i32)*, i32 (%struct.TYPE_10__*, i32*, i32)** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %30 = load i32, i32* @PTLS_HASH_FINAL_MODE_RESET, align 4
  %31 = call i32 %27(%struct.TYPE_10__* %28, i32* %29, i32 %30)
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @memcmp(i32* %32, i8* %33, i32 32)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36)
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %39 = call i32 @memset(i32* %38, i32 0, i32 128)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_10__*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i32)** %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 %42(%struct.TYPE_10__* %43, i8* %44, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_10__*, i32*, i32)*, i32 (%struct.TYPE_10__*, i32*, i32)** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %53 = load i32, i32* @PTLS_HASH_FINAL_MODE_RESET, align 4
  %54 = call i32 %50(%struct.TYPE_10__* %51, i32* %52, i32 %53)
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %56 = load i8*, i8** %3, align 8
  %57 = call i64 @memcmp(i32* %55, i8* %56, i32 32)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59)
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %62 = call i32 @memset(i32* %61, i32 0, i32 128)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_10__*, i8*, i32)*, i32 (%struct.TYPE_10__*, i8*, i32)** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = call i32 %65(%struct.TYPE_10__* %66, i8* %67, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_10__*, i32*, i32)*, i32 (%struct.TYPE_10__*, i32*, i32)** %72, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %76 = load i32, i32* @PTLS_HASH_FINAL_MODE_FREE, align 4
  %77 = call i32 %73(%struct.TYPE_10__* %74, i32* %75, i32 %76)
  %78 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %79 = load i8*, i8** %3, align 8
  %80 = call i64 @memcmp(i32* %78, i8* %79, i32 32)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82)
  ret void
}

declare dso_local %struct.TYPE_10__* @ptls_hmac_create(i32, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @find_cipher(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
