; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ctr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }

@test_ctr.zeroes = internal constant [64 x i32] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i64, i8*, i64, i8*, i64)* @test_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ctr(%struct.TYPE_7__* %0, i32* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca [256 x i32], align 16
  %17 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  br label %68

21:                                               ; preds = %7
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %15, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp ule i64 %27, 256
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @ptls_cipher_new(%struct.TYPE_8__* %45, i32 1, i32* %46)
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32*, i32** %17, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @ptls_cipher_init(i32* %52, i8* %53)
  %55 = load i32*, i32** %17, align 8
  %56 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @ptls_cipher_encrypt(i32* %55, i32* %56, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @test_ctr.zeroes, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @ptls_cipher_free(i32* %59)
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %62 = load i8*, i8** %13, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i64 @memcmp(i32* %61, i8* %62, i64 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  br label %68

68:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32* @ptls_cipher_new(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @ptls_cipher_init(i32*, i8*) #1

declare dso_local i32 @ptls_cipher_encrypt(i32*, i32*, i32*, i64) #1

declare dso_local i32 @ptls_cipher_free(i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
