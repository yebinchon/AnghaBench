; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_DecompressFiles.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_DecompressFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@BROTLI_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@BROTLI_FALSE = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Use -h help. Use -f to force input from a terminal.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @DecompressFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecompressFiles(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  br label %6

6:                                                ; preds = %63, %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i64 @NextFile(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %11, i64* %4, align 8
  %12 = call i32* @BrotliDecoderCreateInstance(i32* null, i32* null, i32* null)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %18, i64* %2, align 8
  br label %66

19:                                               ; preds = %10
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = call i64 @OpenFiles(%struct.TYPE_7__* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @STDIN_FILENO, align 4
  %36 = call i64 @isatty(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %38, %34, %29, %24, %19
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @DecompressFile(%struct.TYPE_7__* %46, i32* %47)
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @BrotliDecoderDestroyInstance(i32* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @CloseFiles(%struct.TYPE_7__* %52, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %62, i64* %2, align 8
  br label %66

63:                                               ; preds = %58
  br label %6

64:                                               ; preds = %6
  %65 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %64, %61, %15
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local i64 @NextFile(%struct.TYPE_7__*) #1

declare dso_local i32* @BrotliDecoderCreateInstance(i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @OpenFiles(%struct.TYPE_7__*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @DecompressFile(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @BrotliDecoderDestroyInstance(i32*) #1

declare dso_local i32 @CloseFiles(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
