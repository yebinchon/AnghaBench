; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwo2.c_lwValidateObject.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwo2.c_lwValidateObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PICO_PMV_ERROR_MEMORY = common dso_local global i32 0, align 4
@PICO_PMV_ERROR_SIZE = common dso_local global i32 0, align 4
@ID_FORM = common dso_local global i32 0, align 4
@ID_LWO2 = common dso_local global i32 0, align 4
@ID_LWOB = common dso_local global i32 0, align 4
@PICO_PMV_ERROR_IDENT = common dso_local global i32 0, align 4
@PICO_PMV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwValidateObject(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @PICO_PMV_ERROR_MEMORY, align 4
  store i32 %16, i32* %5, align 4
  br label %63

17:                                               ; preds = %4
  %18 = call i32 @set_flen(i32 0)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @getU4(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @getU4(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @getU4(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = call i32 (...) @get_flen()
  %26 = icmp ne i32 12, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @PICO_PMV_ERROR_SIZE, align 4
  store i32 %28, i32* %5, align 4
  br label %63

29:                                               ; preds = %17
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ID_FORM, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  store i32 12, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* @PICO_PMV_ERROR_SIZE, align 4
  store i32 %39, i32* %5, align 4
  br label %63

40:                                               ; preds = %29
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @ID_LWO2, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @ID_LWOB, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @lwValidateObject5(i8* %49, i32* %50, i32* %51, i32* %52)
  store i32 %53, i32* %5, align 4
  br label %63

54:                                               ; preds = %44
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  store i32 12, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* @PICO_PMV_ERROR_IDENT, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %40
  %62 = load i32, i32* @PICO_PMV_OK, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %59, %48, %38, %27, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @lwValidateObject5(i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
