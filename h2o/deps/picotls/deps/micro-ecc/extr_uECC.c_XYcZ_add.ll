; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_XYcZ_add.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_XYcZ_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, %struct.TYPE_5__*)* @XYcZ_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XYcZ_add(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %14 = load i32, i32* @uECC_MAX_WORDS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @uECC_vli_modSub(i32* %17, i32* %21, i32* %22, i32 %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = call i32 @uECC_vli_modSquare_fast(i32* %17, i32* %17, %struct.TYPE_5__* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = call i32 @uECC_vli_modMult_fast(i32* %30, i32* %31, i32* %17, %struct.TYPE_5__* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = call i32 @uECC_vli_modMult_fast(i32* %34, i32* %35, i32* %17, %struct.TYPE_5__* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @uECC_vli_modSub(i32* %38, i32* %39, i32* %40, i32 %43, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = call i32 @uECC_vli_modSquare_fast(i32* %17, i32* %46, %struct.TYPE_5__* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @uECC_vli_modSub(i32* %17, i32* %17, i32* %49, i32 %52, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @uECC_vli_modSub(i32* %17, i32* %17, i32* %55, i32 %58, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @uECC_vli_modSub(i32* %61, i32* %62, i32* %63, i32 %66, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = call i32 @uECC_vli_modMult_fast(i32* %69, i32* %70, i32* %71, %struct.TYPE_5__* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @uECC_vli_modSub(i32* %74, i32* %75, i32* %17, i32 %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = call i32 @uECC_vli_modMult_fast(i32* %81, i32* %82, i32* %83, %struct.TYPE_5__* %84)
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @uECC_vli_modSub(i32* %86, i32* %87, i32* %88, i32 %91, i32 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @uECC_vli_set(i32* %94, i32* %17, i32 %95)
  %97 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uECC_vli_modSub(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_modSquare_fast(i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @uECC_vli_modMult_fast(i32*, i32*, i32*, %struct.TYPE_5__*) #2

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
