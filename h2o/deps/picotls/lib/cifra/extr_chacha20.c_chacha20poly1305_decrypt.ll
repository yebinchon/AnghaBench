; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20poly1305_decrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20poly1305_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha20poly1305_context_t = type { i64, i32, i32, i32 }

@PTLS_CHACHA20POLY1305_TAG_SIZE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i64, i8*, i8*, i64)* @chacha20poly1305_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chacha20poly1305_decrypt(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.chacha20poly1305_context_t*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = bitcast i32* %21 to %struct.chacha20poly1305_context_t*
  store %struct.chacha20poly1305_context_t* %22, %struct.chacha20poly1305_context_t** %16, align 8
  %23 = load i32, i32* @PTLS_CHACHA20POLY1305_TAG_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i64, i64* %12, align 8
  %28 = mul nuw i64 4, %24
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i64, i64* @SIZE_MAX, align 8
  store i64 %31, i64* %8, align 8
  store i32 1, i32* %20, align 4
  br label %86

32:                                               ; preds = %7
  %33 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %16, align 8
  %34 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %33, i32 0, i32 3
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @chacha20poly1305_init(i32* %34, i8* %35, i8* %36, i64 %37)
  %39 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %16, align 8
  %40 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %39, i32 0, i32 1
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = mul nuw i64 4, %24
  %44 = sub i64 %42, %43
  %45 = call i32 @cf_poly1305_update(i32* %40, i8* %41, i64 %44)
  %46 = load i64, i64* %12, align 8
  %47 = mul nuw i64 4, %24
  %48 = sub i64 %46, %47
  %49 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %16, align 8
  %50 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %16, align 8
  %52 = call i32 @chacha20poly1305_finalize(%struct.chacha20poly1305_context_t* %51, i32* %26)
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = mul nuw i64 4, %24
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = mul nuw i64 4, %24
  %61 = trunc i64 %60 to i32
  %62 = call i64 @mem_eq(i32* %26, i32* %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %32
  %65 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %16, align 8
  %66 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %65, i32 0, i32 2
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = mul nuw i64 4, %24
  %71 = sub i64 %69, %70
  %72 = call i32 @cf_chacha20_cipher(i32* %66, i8* %67, i8* %68, i64 %71)
  %73 = load i64, i64* %12, align 8
  %74 = mul nuw i64 4, %24
  %75 = sub i64 %73, %74
  store i64 %75, i64* %19, align 8
  br label %78

76:                                               ; preds = %32
  %77 = load i64, i64* @SIZE_MAX, align 8
  store i64 %77, i64* %19, align 8
  br label %78

78:                                               ; preds = %76, %64
  %79 = mul nuw i64 4, %24
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ptls_clear_memory(i32* %26, i32 %80)
  %82 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %16, align 8
  %83 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %82, i32 0, i32 1
  %84 = call i32 @ptls_clear_memory(i32* %83, i32 4)
  %85 = load i64, i64* %19, align 8
  store i64 %85, i64* %8, align 8
  store i32 1, i32* %20, align 4
  br label %86

86:                                               ; preds = %78, %30
  %87 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i64, i64* %8, align 8
  ret i64 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @chacha20poly1305_init(i32*, i8*, i8*, i64) #2

declare dso_local i32 @cf_poly1305_update(i32*, i8*, i64) #2

declare dso_local i32 @chacha20poly1305_finalize(%struct.chacha20poly1305_context_t*, i32*) #2

declare dso_local i64 @mem_eq(i32*, i32*, i32) #2

declare dso_local i32 @cf_chacha20_cipher(i32*, i8*, i8*, i64) #2

declare dso_local i32 @ptls_clear_memory(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
