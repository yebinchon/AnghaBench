; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/lib/extr_memcpy.c_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/lib/extr_memcpy.c_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memcpy(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %3
  %22 = load i32*, i32** %10, align 8
  %23 = ptrtoint i32* %22 to i32
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 4
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %10, align 8
  %33 = load i32, i32* %31, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 4
  store i32 %38, i32* %6, align 4
  br label %27

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %21, %3
  %41 = load i32*, i32** %9, align 8
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %7, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %54, %40
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load i8, i8* %49, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  store i8 %51, i8* %52, align 1
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %45

57:                                               ; preds = %45
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
