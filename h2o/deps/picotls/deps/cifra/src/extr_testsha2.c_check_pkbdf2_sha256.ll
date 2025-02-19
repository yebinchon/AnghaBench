; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_check_pkbdf2_sha256.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_check_pkbdf2_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cf_sha256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64, i32, i8*, i64)* @check_pkbdf2_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pkbdf2_sha256(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [64 x i32], align 16
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @cf_pbkdf2_hmac(i8* %16, i64 %17, i8* %18, i64 %19, i32 %20, i32* %21, i64 %22, i32* @cf_sha256)
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %26 = load i64, i64* %14, align 8
  %27 = call i64 @memcmp(i8* %24, i32* %25, i64 %26)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @TEST_CHECK(i32 %29)
  ret void
}

declare dso_local i32 @cf_pbkdf2_hmac(i8*, i64, i8*, i64, i32, i32*, i64, i32*) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
