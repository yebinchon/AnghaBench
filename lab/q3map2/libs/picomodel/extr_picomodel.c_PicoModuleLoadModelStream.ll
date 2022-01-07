; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoModuleLoadModelStream.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoModuleLoadModelStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@PICO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"PicoLoadModel: invalid input stream (inputStream == NULL)\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"PicoLoadModel: invalid input stream (inputStreamRead == NULL) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PicoModuleLoadModelStream(%struct.TYPE_4__* %0, i8* %1, i64 (i8*, i8*, i64)* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i8*, i64)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [128 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 (i8*, i8*, i64)* %2, i64 (i8*, i8*, i64)** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @PICO_ERROR, align 4
  %20 = call i32 @_pico_printf(i32 %19, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %64

21:                                               ; preds = %5
  %22 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %9, align 8
  %23 = icmp eq i64 (i8*, i8*, i64)* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @PICO_ERROR, align 4
  %26 = call i32 @_pico_printf(i32 %25, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %64

27:                                               ; preds = %21
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, 1
  %30 = call i8* @_pico_alloc(i64 %29)
  store i8* %30, i8** %13, align 8
  %31 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 %31(i8* %32, i8* %33, i64 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  store i8 46, i8* %41, align 16
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strncpy(i8* %43, i32 %48, i32 126)
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 127
  store i8 0, i8* %50, align 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32* @PicoModuleLoadModel(%struct.TYPE_4__* %51, i8* %52, i8* %53, i32 %54, i32 %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %27
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @_pico_free(i8* %60)
  br label %62

62:                                               ; preds = %59, %27
  %63 = load i32*, i32** %12, align 8
  store i32* %63, i32** %6, align 8
  br label %64

64:                                               ; preds = %62, %24, %18
  %65 = load i32*, i32** %6, align 8
  ret i32* %65
}

declare dso_local i32 @_pico_printf(i32, i8*) #1

declare dso_local i8* @_pico_alloc(i64) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32* @PicoModuleLoadModel(%struct.TYPE_4__*, i8*, i8*, i32, i32) #1

declare dso_local i32 @_pico_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
