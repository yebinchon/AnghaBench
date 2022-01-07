; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_bits2int.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_bits2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@uECC_WORD_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_3__*)* @bits2int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bits2int(i32* %0, i32* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BITS_TO_BYTES(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BITS_TO_WORDS(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @uECC_vli_clear(i32* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @uECC_vli_bytesToNative(i32* %32, i32* %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %36, 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ule i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %89

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = mul i32 %44, 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %45, %48
  store i32 %49, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %13, align 8
  br label %54

54:                                               ; preds = %59, %43
  %55 = load i32*, i32** %13, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 -1
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ugt i32* %55, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %62, %63
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %64, %65
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @uECC_WORD_BITS, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %69, %70
  %72 = shl i32 %68, %71
  store i32 %72, i32* %12, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @uECC_vli_cmp_unsafe(i32 %76, i32* %77, i32 %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @uECC_vli_sub(i32* %82, i32* %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %42, %81, %73
  ret void
}

declare dso_local i32 @BITS_TO_BYTES(i32) #1

declare dso_local i32 @BITS_TO_WORDS(i32) #1

declare dso_local i32 @uECC_vli_clear(i32*, i32) #1

declare dso_local i32 @uECC_vli_bytesToNative(i32*, i32*, i32) #1

declare dso_local i32 @uECC_vli_cmp_unsafe(i32, i32*, i32) #1

declare dso_local i32 @uECC_vli_sub(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
