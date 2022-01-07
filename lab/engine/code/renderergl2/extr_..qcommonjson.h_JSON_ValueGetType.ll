; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_ValueGetType.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_ValueGetType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSONTYPE_ERROR = common dso_local global i32 0, align 4
@JSONTYPE_STRING = common dso_local global i32 0, align 4
@JSONTYPE_OBJECT = common dso_local global i32 0, align 4
@JSONTYPE_ARRAY = common dso_local global i32 0, align 4
@JSONTYPE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JSON_ValueGetType(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp uge i8* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @JSONTYPE_ERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @JSONTYPE_STRING, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 123
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @JSONTYPE_OBJECT, align 4
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 91
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @JSONTYPE_ARRAY, align 4
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @JSONTYPE_VALUE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %33, %26, %19, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
