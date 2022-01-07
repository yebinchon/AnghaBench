; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_aad_ciphersuite.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_aad_ciphersuite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"012345678901234567890123456789012345678901234567\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"my true aad\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"my fake aad\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @test_aad_ciphersuite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_aad_ciphersuite(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32* @ptls_aead_new(i32 %15, i32 %18, i32 1, i8* %19, i32* null)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = call i32 @ptls_aead_encrypt_init(i32* %25, i32 123, i8* %26, i64 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = call i64 @ptls_aead_encrypt_update(i32* %30, i8* %31, i8* %32, i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  %40 = call i64 @ptls_aead_encrypt_final(i32* %36, i8* %39)
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @ptls_aead_free(i32* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32* @ptls_aead_new(i32 %47, i32 %50, i32 0, i8* %51, i32* null)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %60 = load i64, i64* %11, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = call i64 @ptls_aead_decrypt(i32* %57, i8* %58, i8* %59, i64 %60, i32 123, i8* %61, i64 %63)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = icmp eq i64 %65, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @memcmp(i8* %71, i8* %72, i64 %73)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %81 = load i64, i64* %11, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @strlen(i8* %82)
  %84 = call i64 @ptls_aead_decrypt(i32* %78, i8* %79, i8* %80, i64 %81, i32 123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* @SIZE_MAX, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @ptls_aead_free(i32* %90)
  ret void
}

declare dso_local i32* @ptls_aead_new(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ptls_aead_encrypt_init(i32*, i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ptls_aead_encrypt_update(i32*, i8*, i8*, i64) #1

declare dso_local i64 @ptls_aead_encrypt_final(i32*, i8*) #1

declare dso_local i32 @ptls_aead_free(i32*) #1

declare dso_local i64 @ptls_aead_decrypt(i32*, i8*, i8*, i64, i32, i8*, i64) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
