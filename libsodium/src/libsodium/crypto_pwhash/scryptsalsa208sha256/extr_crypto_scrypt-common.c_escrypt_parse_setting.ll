; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_escrypt_parse_setting.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_escrypt_parse_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @escrypt_parse_setting(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 36
  br i1 %15, label %28, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 55
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 36
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %4
  store i8* null, i8** %5, align 8
  br label %56

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  store i8* %31, i8** %10, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @decode64_one(i32* %32, i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %56

38:                                               ; preds = %29
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @decode64_uint32(i32* %41, i32 30, i8* %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i8* null, i8** %5, align 8
  br label %56

47:                                               ; preds = %38
  %48 = load i32*, i32** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @decode64_uint32(i32* %48, i32 30, i8* %49)
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i8* null, i8** %5, align 8
  br label %56

54:                                               ; preds = %47
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %54, %53, %46, %37, %28
  %57 = load i8*, i8** %5, align 8
  ret i8* %57
}

declare dso_local i64 @decode64_one(i32*, i8 signext) #1

declare dso_local i8* @decode64_uint32(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
