; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_nonce_function_rfc6979.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_nonce_function_rfc6979.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i32)* @nonce_function_rfc6979 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonce_function_rfc6979(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [112 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = getelementptr inbounds [112 x i8], [112 x i8]* %13, i64 0, i64 0
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @buffer_append(i8* %17, i32* %14, i8* %18, i32 32)
  %20 = getelementptr inbounds [112 x i8], [112 x i8]* %13, i64 0, i64 0
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @buffer_append(i8* %20, i32* %14, i8* %21, i32 32)
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = getelementptr inbounds [112 x i8], [112 x i8]* %13, i64 0, i64 0
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @buffer_append(i8* %26, i32* %14, i8* %27, i32 32)
  br label %29

29:                                               ; preds = %25, %6
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds [112 x i8], [112 x i8]* %13, i64 0, i64 0
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @buffer_append(i8* %33, i32* %14, i8* %34, i32 16)
  br label %36

36:                                               ; preds = %32, %29
  %37 = getelementptr inbounds [112 x i8], [112 x i8]* %13, i64 0, i64 0
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32* %15, i8* %37, i32 %38)
  %40 = getelementptr inbounds [112 x i8], [112 x i8]* %13, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 112)
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %49, %36
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @secp256k1_rfc6979_hmac_sha256_generate(i32* %15, i8* %47, i32 32)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %42

52:                                               ; preds = %42
  %53 = call i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32* %15)
  ret i32 1
}

declare dso_local i32 @buffer_append(i8*, i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_generate(i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
