; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_SkipValue.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_SkipValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @JSON_SkipValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @JSON_SkipValue(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp uge i8* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %3, align 8
  br label %55

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 34
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @JSON_SkipString(i8* %17, i8* %18)
  store i8* %19, i8** %4, align 8
  br label %52

20:                                               ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @IS_STRUCT_OPEN(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @JSON_SkipStruct(i8* %26, i8* %27)
  store i8* %28, i8** %4, align 8
  br label %51

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @IS_SEPARATOR(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @IS_STRUCT_CLOSE(i8 signext %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %39, %34, %30
  %46 = phi i1 [ false, %34 ], [ false, %30 ], [ %44, %39 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %30

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %25
  br label %52

52:                                               ; preds = %51, %16
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %4, align 8
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %53, %9
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i8* @JSON_SkipString(i8*, i8*) #1

declare dso_local i64 @IS_STRUCT_OPEN(i8 signext) #1

declare dso_local i8* @JSON_SkipStruct(i8*, i8*) #1

declare dso_local i32 @IS_SEPARATOR(i8 signext) #1

declare dso_local i32 @IS_STRUCT_CLOSE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
