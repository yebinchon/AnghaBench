; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_box/extr_crypto_box_easy.c_crypto_box_detached.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_box/extr_crypto_box_easy.c_crypto_box_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4
@crypto_secretbox_KEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_box_detached(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i32, i32* @crypto_box_BEFORENMBYTES, align 4
  %25 = load i32, i32* @crypto_secretbox_KEYBYTES, align 4
  %26 = icmp sge i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @COMPILER_ASSERT(i32 %27)
  %29 = load i8*, i8** %14, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = call i64 @crypto_box_beforenm(i8* %23, i8* %29, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %44

34:                                               ; preds = %7
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @crypto_box_detached_afternm(i8* %35, i8* %36, i8* %37, i64 %38, i8* %39, i8* %23)
  store i32 %40, i32* %18, align 4
  %41 = trunc i64 %21 to i32
  %42 = call i32 @sodium_memzero(i8* %23, i32 %41)
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %44

44:                                               ; preds = %34, %33
  %45 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @COMPILER_ASSERT(i32) #2

declare dso_local i64 @crypto_box_beforenm(i8*, i8*, i8*) #2

declare dso_local i32 @crypto_box_detached_afternm(i8*, i8*, i8*, i64, i8*, i8*) #2

declare dso_local i32 @sodium_memzero(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
