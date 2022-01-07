; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_box/extr_crypto_box_easy.c_crypto_box_open_detached.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_box/extr_crypto_box_easy.c_crypto_box_open_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_box_BEFORENMBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_box_open_detached(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i8* %6) #0 {
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
  %24 = load i8*, i8** %14, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = call i64 @crypto_box_beforenm(i8* %23, i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %39

29:                                               ; preds = %7
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i32 @crypto_box_open_detached_afternm(i8* %30, i8* %31, i8* %32, i64 %33, i8* %34, i8* %23)
  store i32 %35, i32* %18, align 4
  %36 = trunc i64 %21 to i32
  %37 = call i32 @sodium_memzero(i8* %23, i32 %36)
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %8, align 4
  store i32 1, i32* %19, align 4
  br label %39

39:                                               ; preds = %29, %28
  %40 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @crypto_box_beforenm(i8*, i8*, i8*) #2

declare dso_local i32 @crypto_box_open_detached_afternm(i8*, i8*, i8*, i64, i8*, i8*) #2

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
