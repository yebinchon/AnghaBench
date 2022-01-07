; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20poly1305_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_chacha20.c_chacha20poly1305_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha20poly1305_context_t = type { i64, i64, i32, i32, i32 }

@PTLS_CHACHA20POLY1305_IV_SIZE = common dso_local global i32 0, align 4
@zeros64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i64)* @chacha20poly1305_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chacha20poly1305_init(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.chacha20poly1305_context_t*, align 8
  %10 = alloca [64 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.chacha20poly1305_context_t*
  store %struct.chacha20poly1305_context_t* %12, %struct.chacha20poly1305_context_t** %9, align 8
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* @PTLS_CHACHA20POLY1305_IV_SIZE, align 4
  %15 = sub nsw i32 16, %14
  %16 = call i32 @memset(i32* %13, i32 0, i32 %15)
  %17 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %18 = getelementptr inbounds i32, i32* %17, i64 16
  %19 = load i32, i32* @PTLS_CHACHA20POLY1305_IV_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @PTLS_CHACHA20POLY1305_IV_SIZE, align 4
  %25 = call i32 @memcpy(i32* %22, i8* %23, i32 %24)
  %26 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %27 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %26, i32 0, i32 3
  %28 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %29 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %32 = call i32 @cf_chacha20_init_custom(i32* %27, i32 %30, i32 4, i32* %31, i32 4)
  %33 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %34 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %33, i32 0, i32 3
  %35 = load i32, i32* @zeros64, align 4
  %36 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %37 = call i32 @cf_chacha20_cipher(i32* %34, i32 %35, i32* %36, i32 64)
  %38 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %39 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %38, i32 0, i32 2
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %42 = getelementptr inbounds i32, i32* %41, i64 16
  %43 = call i32 @cf_poly1305_init(i32* %39, i32* %40, i32* %42)
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %45 = call i32 @ptls_clear_memory(i32* %44, i32 256)
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %4
  %49 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %50 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %49, i32 0, i32 2
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @cf_poly1305_update(i32* %50, i8* %51, i64 %52)
  %54 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %55 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %54, i32 0, i32 2
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @chacha20poly1305_encrypt_pad(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %48, %4
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %61 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.chacha20poly1305_context_t*, %struct.chacha20poly1305_context_t** %9, align 8
  %63 = getelementptr inbounds %struct.chacha20poly1305_context_t, %struct.chacha20poly1305_context_t* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cf_chacha20_init_custom(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @cf_chacha20_cipher(i32*, i32, i32*, i32) #1

declare dso_local i32 @cf_poly1305_init(i32*, i32*, i32*) #1

declare dso_local i32 @ptls_clear_memory(i32*, i32) #1

declare dso_local i32 @cf_poly1305_update(i32*, i8*, i64) #1

declare dso_local i32 @chacha20poly1305_encrypt_pad(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
