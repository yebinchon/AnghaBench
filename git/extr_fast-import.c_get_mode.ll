; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_get_mode.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_mode(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 32
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %16, 48
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sgt i32 %20, 55
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i8* null, i8** %3, align 8
  br label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 3
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 %27, 48
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %30, %22
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
