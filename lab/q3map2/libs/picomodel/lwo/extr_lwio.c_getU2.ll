; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getU2.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getU2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flen = common dso_local global i64 0, align 8
@FLEN_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @getU2(i32* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @flen, align 8
  %6 = load i64, i64* @FLEN_ERROR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i16 0, i16* %2, align 2
  br label %20

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @_pico_memstream_read(i32* %10, i16* %4, i32 2)
  %12 = icmp ne i32 1, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %14, i64* @flen, align 8
  store i16 0, i16* %2, align 2
  br label %20

15:                                               ; preds = %9
  %16 = call i32 @revbytes(i16* %4, i32 2, i32 1)
  %17 = load i64, i64* @flen, align 8
  %18 = add nsw i64 %17, 2
  store i64 %18, i64* @flen, align 8
  %19 = load i16, i16* %4, align 2
  store i16 %19, i16* %2, align 2
  br label %20

20:                                               ; preds = %15, %13, %8
  %21 = load i16, i16* %2, align 2
  ret i16 %21
}

declare dso_local i32 @_pico_memstream_read(i32*, i16*, i32) #1

declare dso_local i32 @revbytes(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
