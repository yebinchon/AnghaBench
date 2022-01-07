; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_vector.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca [16 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 128, i64* %11, align 8
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @unhex(i32* %13, i32 32, i8* %14)
  store i64 %15, i64* %11, align 8
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @unhex(i32* %16, i32 16, i8* %17)
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @unhex(i32* %19, i32 16, i8* %20)
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @cf_aes_init(i32* %12, i32* %22, i64 %23)
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %27 = call i32 @cf_aes_encrypt(i32* %12, i32* %25, i32* %26)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %30 = call i64 @memcmp(i32* %28, i32* %29, i32 16)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @TEST_CHECK(i32 %32)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %36 = call i32 @cf_aes_decrypt(i32* %12, i32* %34, i32* %35)
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %39 = call i64 @memcmp(i32* %37, i32* %38, i32 16)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @TEST_CHECK(i32 %41)
  %43 = call i32 @cf_aes_finish(i32* %12)
  ret void
}

declare dso_local i64 @unhex(i32*, i32, i8*) #1

declare dso_local i32 @cf_aes_init(i32*, i32*, i64) #1

declare dso_local i32 @cf_aes_encrypt(i32*, i32*, i32*) #1

declare dso_local i32 @TEST_CHECK(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @cf_aes_decrypt(i32*, i32*, i32*) #1

declare dso_local i32 @cf_aes_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
