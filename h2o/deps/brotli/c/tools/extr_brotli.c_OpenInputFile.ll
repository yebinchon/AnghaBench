; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_OpenInputFile.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/tools/extr_brotli.c_OpenInputFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@BROTLI_TRUE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to open input file [%s]: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BROTLI_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @OpenInputFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenInputFile(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %6 = load i32**, i32*** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @STDIN_FILENO, align 4
  %11 = call i32 @MAKE_BINARY(i32 %10)
  %12 = call i32* @fdopen(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load i32**, i32*** %5, align 8
  store i32* %12, i32** %13, align 8
  %14 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load i32**, i32*** %5, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @PrintablePath(i8* %24)
  %26 = load i32, i32* @errno, align 4
  %27 = call i8* @strerror(i32 %26)
  %28 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %25, i8* %27)
  %29 = load i32, i32* @BROTLI_FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %15
  %31 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %22, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @MAKE_BINARY(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @PrintablePath(i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
