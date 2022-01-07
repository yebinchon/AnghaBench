; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_GetEntityShadowFlags.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_bspfile_abstract.c_GetEntityShadowFlags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"_castShadows\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_cs\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"_receiveShadows\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetEntityShadowFlags(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @ValueForKey(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @ValueForKey(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @ValueForKey(i32* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @ValueForKey(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @atoi(i8* %48)
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %95

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = call i8* @ValueForKey(i32* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32*, i32** %5, align 8
  %65 = call i8* @ValueForKey(i32* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32*, i32** %6, align 8
  %74 = call i8* @ValueForKey(i32* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32*, i32** %6, align 8
  %83 = call i8* @ValueForKey(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i8* %83, i8** %9, align 8
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @atoi(i8* %91)
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %84
  br label %95

95:                                               ; preds = %94, %52
  ret void
}

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
