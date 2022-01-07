; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ciphersuite.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ciphersuite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"012345678901234567890123456789012345678901234567\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"good bye, all\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @test_ciphersuite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ciphersuite(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @ptls_aead_new(i32 %19, i32 %22, i32 1, i8* %23, i32* null)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @ptls_aead_encrypt_init(i32* %29, i32 0, i32* null, i32 0)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = call i64 @ptls_aead_encrypt_update(i32* %31, i8* %32, i8* %33, i64 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = call i64 @ptls_aead_encrypt_final(i32* %37, i8* %40)
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %13, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @ptls_aead_encrypt_init(i32* %44, i32 1, i32* null, i32 0)
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = call i64 @ptls_aead_encrypt_update(i32* %46, i8* %47, i8* %48, i64 %50)
  store i64 %51, i64* %14, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %54 = load i64, i64* %14, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = call i64 @ptls_aead_encrypt_final(i32* %52, i8* %55)
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %14, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @ptls_aead_free(i32* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32* @ptls_aead_new(i32 %63, i32 %66, i32 0, i8* %67, i32* null)
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @ptls_aead_decrypt(i32* %73, i8* %74, i8* %75, i64 %76, i32 0, i32* null, i32 0)
  store i64 %77, i64* %15, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* @SIZE_MAX, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %86 = load i64, i64* %14, align 8
  %87 = call i64 @ptls_aead_decrypt(i32* %83, i8* %84, i8* %85, i64 %86, i32 1, i32* null, i32 0)
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* @SIZE_MAX, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91)
  %93 = load i8*, i8** %6, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = load i64, i64* %15, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ok(i32 %97)
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %101 = load i64, i64* %15, align 8
  %102 = call i64 @memcmp(i8* %99, i8* %100, i64 %101)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @ok(i32 %104)
  %106 = load i8*, i8** %7, align 8
  %107 = call i64 @strlen(i8* %106)
  %108 = load i64, i64* %16, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @ok(i32 %110)
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %114 = load i64, i64* %16, align 8
  %115 = sub i64 %114, 1
  %116 = call i64 @memcmp(i8* %112, i8* %113, i64 %115)
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118)
  %120 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %121 = load i8, i8* %120, align 16
  %122 = sext i8 %121 to i32
  %123 = xor i32 %122, 1
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %120, align 16
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %128 = load i64, i64* %13, align 8
  %129 = call i64 @ptls_aead_decrypt(i32* %125, i8* %126, i8* %127, i64 %128, i32 0, i32* null, i32 0)
  store i64 %129, i64* %15, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @SIZE_MAX, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @ok(i32 %133)
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @ptls_aead_free(i32* %135)
  ret void
}

declare dso_local i32* @ptls_aead_new(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ptls_aead_encrypt_init(i32*, i32, i32*, i32) #1

declare dso_local i64 @ptls_aead_encrypt_update(i32*, i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ptls_aead_encrypt_final(i32*, i8*) #1

declare dso_local i32 @ptls_aead_free(i32*) #1

declare dso_local i64 @ptls_aead_decrypt(i32*, i8*, i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
