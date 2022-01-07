; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_XYcZ_addC.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_XYcZ_addC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, %struct.TYPE_5__*)* @XYcZ_addC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XYcZ_addC(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %16 = load i32, i32* @uECC_MAX_WORDS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32, i32* @uECC_MAX_WORDS, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %23 = load i32, i32* @uECC_MAX_WORDS, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @uECC_vli_modSub(i32* %19, i32* %29, i32* %30, i32 %33, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = call i32 @uECC_vli_modSquare_fast(i32* %19, i32* %19, %struct.TYPE_5__* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = call i32 @uECC_vli_modMult_fast(i32* %38, i32* %39, i32* %19, %struct.TYPE_5__* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = call i32 @uECC_vli_modMult_fast(i32* %42, i32* %43, i32* %19, %struct.TYPE_5__* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @uECC_vli_modAdd(i32* %19, i32* %46, i32* %47, i32 %50, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @uECC_vli_modSub(i32* %53, i32* %54, i32* %55, i32 %58, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @uECC_vli_modSub(i32* %22, i32* %61, i32* %62, i32 %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = call i32 @uECC_vli_modMult_fast(i32* %68, i32* %69, i32* %22, %struct.TYPE_5__* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @uECC_vli_modAdd(i32* %22, i32* %72, i32* %73, i32 %76, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = call i32 @uECC_vli_modSquare_fast(i32* %79, i32* %80, %struct.TYPE_5__* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @uECC_vli_modSub(i32* %83, i32* %84, i32* %22, i32 %87, i32 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @uECC_vli_modSub(i32* %25, i32* %90, i32* %91, i32 %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %100 = call i32 @uECC_vli_modMult_fast(i32* %97, i32* %98, i32* %25, %struct.TYPE_5__* %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @uECC_vli_modSub(i32* %101, i32* %102, i32* %103, i32 %106, i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %110 = call i32 @uECC_vli_modSquare_fast(i32* %25, i32* %19, %struct.TYPE_5__* %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @uECC_vli_modSub(i32* %25, i32* %25, i32* %22, i32 %113, i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @uECC_vli_modSub(i32* %22, i32* %25, i32* %116, i32 %119, i32 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %123 = call i32 @uECC_vli_modMult_fast(i32* %22, i32* %22, i32* %19, %struct.TYPE_5__* %122)
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @uECC_vli_modSub(i32* %124, i32* %22, i32* %125, i32 %128, i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @uECC_vli_set(i32* %131, i32* %25, i32 %132)
  %134 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %134)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_modSub(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_modSquare_fast(i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @uECC_vli_modMult_fast(i32*, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @uECC_vli_modAdd(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_set(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
