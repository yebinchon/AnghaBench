; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_RB_ReadPixels.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_init.c_RB_ReadPixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* (i64)* }

@GL_PACK_ALIGNMENT = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RB_ReadPixels(i32 %0, i32 %1, i32 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @GL_PACK_ALIGNMENT, align 4
  %19 = call i32 @qglGetIntegerv(i32 %18, i64* %17)
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %20, 3
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i64, i64* %17, align 8
  %24 = call i32 @PAD(i32 %22, i64 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32* (i64)*, i32* (i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %29, %31
  %33 = load i64, i64* %17, align 8
  %34 = add i64 %32, %33
  %35 = sub i64 %34, 1
  %36 = call i32* %25(i64 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %38, %40
  %42 = load i64, i64* %17, align 8
  %43 = call i32* @PADP(i64 %41, i64 %42)
  store i32* %43, i32** %14, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @GL_RGB, align 4
  %49 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @qglReadPixels(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32* %50)
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = ptrtoint i32* %52 to i64
  %55 = ptrtoint i32* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 4
  %58 = load i64*, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %13, align 8
  ret i32* %63
}

declare dso_local i32 @qglGetIntegerv(i32, i64*) #1

declare dso_local i32 @PAD(i32, i64) #1

declare dso_local i32* @PADP(i64, i64) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
