; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_blake2b_init.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_blake2b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64 }

@BLAKE2B_OUTBYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_init(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @BLAKE2B_OUTBYTES, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = call i32 (...) @sodium_misuse()
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 16
  %18 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @STORE32_LE(i32 %26, i32 0)
  %28 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 16
  %31 = call i32 @STORE64_LE(i32 %30, i32 0)
  %32 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  store i64 0, i64* %35, align 16
  %36 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memset(i32 %38, i32 0, i32 4)
  %40 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memset(i32 %42, i32 0, i32 4)
  %44 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 16
  %47 = call i32 @memset(i32 %46, i32 0, i32 4)
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %50 = call i32 @blake2b_init_param(i32* %48, %struct.TYPE_3__* %49)
  ret i32 %50
}

declare dso_local i32 @sodium_misuse(...) #1

declare dso_local i32 @STORE32_LE(i32, i32) #1

declare dso_local i32 @STORE64_LE(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @blake2b_init_param(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
