; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_sign.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4
@uECC_RNG_MAX_TRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uECC_sign(i32* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %16 = load i32, i32* @uECC_MAX_WORDS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %20

20:                                               ; preds = %45, %5
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* @uECC_RNG_MAX_TRIES, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BITS_TO_WORDS(i32 %30)
  %32 = call i32 @uECC_generate_random_int(i64* %19, i32 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %49

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = call i64 @uECC_sign_with_k(i32* %36, i32* %37, i32 %38, i64* %19, i32* %39, %struct.TYPE_4__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %49

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %14, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %14, align 8
  br label %20

48:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %49

49:                                               ; preds = %48, %43, %34
  %50 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_generate_random_int(i64*, i32, i32) #2

declare dso_local i32 @BITS_TO_WORDS(i32) #2

declare dso_local i64 @uECC_sign_with_k(i32*, i32*, i32, i64*, i32*, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
