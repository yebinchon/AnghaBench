; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoLoadModel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoLoadModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@PICO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"PicoLoadModel: No filename given (fileName == NULL)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"PicoLoadModel: Failed loading model %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PicoLoadModel(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @PICO_ERROR, align 4
  %15 = call i32 (i32, i8*, ...) @_pico_printf(i32 %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %70

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @_pico_load_file(i8* %17, i32** %9, i32* %10)
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @PICO_ERROR, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i32, i8*, ...) @_pico_printf(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32* null, i32** %3, align 8
  br label %70

25:                                               ; preds = %16
  %26 = call %struct.TYPE_4__** @PicoModuleList(i32* null)
  store %struct.TYPE_4__** %26, %struct.TYPE_4__*** %6, align 8
  br label %27

27:                                               ; preds = %59, %25
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %7, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = icmp eq %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %62

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  br label %59

48:                                               ; preds = %42
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32* @PicoModuleLoadModel(%struct.TYPE_4__* %49, i8* %50, i32* %51, i32 %52, i32 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i32 1
  store %struct.TYPE_4__** %61, %struct.TYPE_4__*** %6, align 8
  br label %27

62:                                               ; preds = %57, %36, %27
  %63 = load i32*, i32** %9, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @_pico_free_file(i32* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %8, align 8
  store i32* %69, i32** %3, align 8
  br label %70

70:                                               ; preds = %68, %21, %13
  %71 = load i32*, i32** %3, align 8
  ret i32* %71
}

declare dso_local i32 @_pico_printf(i32, i8*, ...) #1

declare dso_local i32 @_pico_load_file(i8*, i32**, i32*) #1

declare dso_local %struct.TYPE_4__** @PicoModuleList(i32*) #1

declare dso_local i32* @PicoModuleLoadModel(%struct.TYPE_4__*, i8*, i32*, i32, i32) #1

declare dso_local i32 @_pico_free_file(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
