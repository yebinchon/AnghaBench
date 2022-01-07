; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getVX.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getVX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flen = common dso_local global i64 0, align 8
@FLEN_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getVX(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @flen, align 8
  %7 = load i64, i64* @FLEN_ERROR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @_pico_memstream_getc(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 255
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 8
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @_pico_memstream_getc(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i64, i64* @flen, align 8
  %24 = add nsw i64 %23, 2
  store i64 %24, i64* @flen, align 8
  br label %43

25:                                               ; preds = %10
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @_pico_memstream_getc(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 16
  store i32 %29, i32* %4, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @_pico_memstream_getc(i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @_pico_memstream_getc(i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* @flen, align 8
  %42 = add nsw i64 %41, 4
  store i64 %42, i64* @flen, align 8
  br label %43

43:                                               ; preds = %25, %15
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @_pico_memstream_error(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %48, i64* @flen, align 8
  store i32 0, i32* %2, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %9
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @_pico_memstream_getc(i32*) #1

declare dso_local i64 @_pico_memstream_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
