; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/nuttx-stm32f4/extr_jerry_main.c_read_file.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/nuttx-stm32f4/extr_jerry_main.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error: cannot open file: %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to seek (error: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get the file size(error %ld)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Out of memory error\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Error: failed to read file: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64*)* @read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_file(i8* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32* null, i32** %3, align 8
  br label %81

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SEEK_END, align 4
  %22 = call i32 @fseek(i32* %20, i32 0, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @fclose(i32* %29)
  store i32* null, i32** %3, align 8
  br label %81

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @ftell(i32* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @fclose(i32* %40)
  store i32* null, i32** %3, align 8
  br label %81

42:                                               ; preds = %31
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @rewind(i32* %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @malloc(i64 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %52 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @fclose(i32* %53)
  store i32* null, i32** %3, align 8
  br label %81

55:                                               ; preds = %42
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @fread(i32* %56, i32 1, i64 %57, i32* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62, %55
  %67 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 (i32, i8*, ...) @jerry_port_log(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %9, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = call i32 @free(i8* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @fclose(i32* %73)
  store i32* null, i32** %3, align 8
  br label %81

75:                                               ; preds = %62
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @fclose(i32* %76)
  %78 = load i64, i64* %10, align 8
  %79 = load i64*, i64** %5, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32*, i32** %9, align 8
  store i32* %80, i32** %3, align 8
  br label %81

81:                                               ; preds = %75, %66, %50, %36, %25, %15
  %82 = load i32*, i32** %3, align 8
  ret i32* %82
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @jerry_port_log(i32, i8*, ...) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
