; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getS0.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwio.c_getS0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flen = common dso_local global i64 0, align 8
@FLEN_ERROR = common dso_local global i64 0, align 8
@PICO_SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getS0(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i64, i64* @flen, align 8
  %10 = load i64, i64* @FLEN_ERROR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %80

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @_pico_memstream_tell(i32* %14)
  store i32 %15, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %23, %13
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @_pico_memstream_getc(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %26

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %16

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %30, i64* @flen, align 8
  store i8* null, i8** %2, align 8
  br label %80

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 2
  %38 = load i32, i32* @PICO_SEEK_SET, align 4
  %39 = call i64 @_pico_memstream_seek(i32* %35, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %42, i64* @flen, align 8
  br label %46

43:                                               ; preds = %34
  %44 = load i64, i64* @flen, align 8
  %45 = add nsw i64 %44, 2
  store i64 %45, i64* @flen, align 8
  br label %46

46:                                               ; preds = %43, %41
  store i8* null, i8** %2, align 8
  br label %80

47:                                               ; preds = %31
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 1
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @_pico_alloc(i32 %52)
  store i8* %53, i8** %4, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %57, i64* @flen, align 8
  store i8* null, i8** %2, align 8
  br label %80

58:                                               ; preds = %47
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PICO_SEEK_SET, align 4
  %62 = call i64 @_pico_memstream_seek(i32* %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %65, i64* @flen, align 8
  store i8* null, i8** %2, align 8
  br label %80

66:                                               ; preds = %58
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @_pico_memstream_read(i32* %67, i8* %68, i32 %69)
  %71 = icmp ne i32 1, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* @FLEN_ERROR, align 8
  store i64 %73, i64* @flen, align 8
  store i8* null, i8** %2, align 8
  br label %80

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @flen, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* @flen, align 8
  %79 = load i8*, i8** %4, align 8
  store i8* %79, i8** %2, align 8
  br label %80

80:                                               ; preds = %74, %72, %64, %56, %46, %29, %12
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @_pico_memstream_getc(i32*) #1

declare dso_local i64 @_pico_memstream_seek(i32*, i32, i32) #1

declare dso_local i8* @_pico_alloc(i32) #1

declare dso_local i32 @_pico_memstream_read(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
