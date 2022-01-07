; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_ArrayGetValue.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_..qcommonjson.h_JSON_ArrayGetValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @JSON_ArrayGetValue(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i8* @JSON_ArrayGetFirstValue(i8* %7, i8* %8)
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %21, %3
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @JSON_ArrayGetNextValue(i8* %22, i8* %23)
  store i8* %24, i8** %4, align 8
  br label %10

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

declare dso_local i8* @JSON_ArrayGetFirstValue(i8*, i8*) #1

declare dso_local i8* @JSON_ArrayGetNextValue(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
