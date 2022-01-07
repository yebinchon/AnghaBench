; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_CompressFiles.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_CompressFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64 }

@BROTLI_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@BROTLI_FALSE = common dso_local global i64 0, align 8
@BROTLI_PARAM_QUALITY = common dso_local global i32 0, align 4
@BROTLI_PARAM_LGWIN = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Use -h help. Use -f to force output to a terminal.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @CompressFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CompressFiles(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  br label %6

6:                                                ; preds = %77, %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = call i64 @NextFile(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %6
  %11 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %11, i64* %4, align 8
  %12 = call i32* @BrotliEncoderCreateInstance(i32* null, i32* null, i32* null)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %18, i64* %2, align 8
  br label %80

19:                                               ; preds = %10
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @BROTLI_PARAM_QUALITY, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @BrotliEncoderSetParameter(i32* %20, i32 %21, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @BROTLI_PARAM_LGWIN, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @BrotliEncoderSetParameter(i32* %27, i32 %28, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i64 @OpenFiles(%struct.TYPE_7__* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %19
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @STDOUT_FILENO, align 4
  %50 = call i64 @isatty(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %52, %48, %43, %38, %19
  %57 = load i64, i64* %4, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @CompressFile(%struct.TYPE_7__* %60, i32* %61)
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @BrotliEncoderDestroyInstance(i32* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @CloseFiles(%struct.TYPE_7__* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %71, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %76, i64* %2, align 8
  br label %80

77:                                               ; preds = %72
  br label %6

78:                                               ; preds = %6
  %79 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %78, %75, %15
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i64 @NextFile(%struct.TYPE_7__*) #1

declare dso_local i32* @BrotliEncoderCreateInstance(i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @BrotliEncoderSetParameter(i32*, i32, i32) #1

declare dso_local i64 @OpenFiles(%struct.TYPE_7__*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i64 @CompressFile(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @BrotliEncoderDestroyInstance(i32*) #1

declare dso_local i32 @CloseFiles(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
