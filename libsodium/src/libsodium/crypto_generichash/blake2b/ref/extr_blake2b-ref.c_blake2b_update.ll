; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_blake2b_update.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_generichash/blake2b/ref/extr_blake2b-ref.c_blake2b_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }

@BLAKE2B_BLOCKBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blake2b_update(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

9:                                                ; preds = %90, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %91

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %17 = mul nsw i32 2, %16
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %7, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %12
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @memcpy(i32* %29, i32* %30, i64 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %40 = call i32 @blake2b_increment_counter(%struct.TYPE_5__* %38, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @blake2b_compress(%struct.TYPE_5__* %41, i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @memcpy(i32* %48, i32* %54, i64 %56)
  %58 = load i32, i32* @BLAKE2B_BLOCKBYTES, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %6, align 8
  br label %90

70:                                               ; preds = %12
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32*, i32** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @memcpy(i32* %75, i32* %76, i64 %77)
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %70, %24
  br label %9

91:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @blake2b_increment_counter(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @blake2b_compress(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
