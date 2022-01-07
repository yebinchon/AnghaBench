; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getbytes.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flen = common dso_local global i64 0, align 8
@FLEN_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getbytes(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @flen, align 8
  %8 = load i64, i64* @FLEN_ERROR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %39

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %15, i64* @flen, align 8
  store i8* null, i8** %3, align 8
  br label %39

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = call i8* @_pico_alloc(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %22, i64* @flen, align 8
  store i8* null, i8** %3, align 8
  br label %39

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @_pico_memstream_read(i32* %24, i8* %25, i32 %26)
  %28 = icmp ne i32 1, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %30, i64* @flen, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @_pico_free(i8* %31)
  store i8* null, i8** %3, align 8
  br label %39

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @flen, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* @flen, align 8
  %38 = load i8*, i8** %6, align 8
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %33, %29, %21, %14, %10
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i8* @_pico_alloc(i32) #1

declare dso_local i32 @_pico_memstream_read(i32*, i8*, i32) #1

declare dso_local i32 @_pico_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
