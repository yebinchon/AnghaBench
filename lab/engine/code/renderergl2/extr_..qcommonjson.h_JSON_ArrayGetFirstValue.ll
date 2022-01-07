; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_ArrayGetFirstValue.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_ArrayGetFirstValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @JSON_ArrayGetFirstValue(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp uge i8* %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = call i32 @IS_STRUCT_OPEN(i8 signext %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %8, %2
  store i8* null, i8** %3, align 8
  br label %36

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @JSON_SkipSeparators(i8* %20, i8* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp uge i8* %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @IS_STRUCT_CLOSE(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %18
  br label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i8* [ null, %31 ], [ %33, %32 ]
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %34, %17
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @IS_STRUCT_OPEN(i8 signext) #1

declare dso_local i8* @JSON_SkipSeparators(i8*, i8*) #1

declare dso_local i64 @IS_STRUCT_CLOSE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
