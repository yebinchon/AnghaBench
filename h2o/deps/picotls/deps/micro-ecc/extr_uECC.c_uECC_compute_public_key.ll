; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_compute_public_key.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_compute_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uECC_compute_public_key(i32* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %12 = load i32, i32* @uECC_MAX_WORDS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @uECC_MAX_WORDS, align 4
  %17 = mul nsw i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BITS_TO_BYTES(i32 %23)
  %25 = call i32 @uECC_vli_bytesToNative(i32* %15, i32* %20, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BITS_TO_WORDS(i32 %28)
  %30 = call i64 @uECC_vli_isZero(i32* %15, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %70

33:                                               ; preds = %3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BITS_TO_WORDS(i32 %39)
  %41 = call i32 @uECC_vli_cmp(i32 %36, i32* %15, i32 %40)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %70

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = call i32 @EccPoint_compute_public_key(i32* %19, i32* %15, %struct.TYPE_4__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %70

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @uECC_vli_nativeToBytes(i32* %50, i32 %53, i32* %19)
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %19, i64 %67
  %69 = call i32 @uECC_vli_nativeToBytes(i32* %60, i32 %63, i32* %68)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %49, %48, %43, %32
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_bytesToNative(i32*, i32*, i32) #2

declare dso_local i32 @BITS_TO_BYTES(i32) #2

declare dso_local i64 @uECC_vli_isZero(i32*, i32) #2

declare dso_local i32 @BITS_TO_WORDS(i32) #2

declare dso_local i32 @uECC_vli_cmp(i32, i32*, i32) #2

declare dso_local i32 @EccPoint_compute_public_key(i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @uECC_vli_nativeToBytes(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
