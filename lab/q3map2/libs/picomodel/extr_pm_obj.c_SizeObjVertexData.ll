; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_obj.c_SizeObjVertexData.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_obj.c_SizeObjVertexData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_OBJ_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32*, i32*)* @SizeObjVertexData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @SizeObjVertexData(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %93

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32* null, i32** %5, align 8
  br label %93

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %5, align 8
  br label %93

33:                                               ; preds = %24, %21
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SIZE_OBJ_STEP, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @SIZE_OBJ_STEP, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @_pico_alloc(i32 %49)
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32* null, i32** %5, align 8
  br label %93

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  store i32* %60, i32** %5, align 8
  br label %93

61:                                               ; preds = %33
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SIZE_OBJ_STEP, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = bitcast i32** %6 to i8*
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i64 @_pico_realloc(i8* %71, i32 %76, i32 %80)
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %6, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  store i32* null, i32** %5, align 8
  br label %93

86:                                               ; preds = %66
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %6, align 8
  store i32* %91, i32** %5, align 8
  br label %93

92:                                               ; preds = %61
  store i32* null, i32** %5, align 8
  br label %93

93:                                               ; preds = %92, %86, %85, %55, %54, %29, %20, %13
  %94 = load i32*, i32** %5, align 8
  ret i32* %94
}

declare dso_local i64 @_pico_alloc(i32) #1

declare dso_local i64 @_pico_realloc(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
