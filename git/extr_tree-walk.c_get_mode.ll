; ModuleID = '/home/carl/AnghaBench/git/extr_tree-walk.c_get_mode.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree-walk.c_get_mode.c"
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
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %40

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 32
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %22, 48
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sgt i32 %26, 55
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  store i8* null, i8** %3, align 8
  br label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 3
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = add i32 %31, %34
  store i32 %35, i32* %7, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %36, %28, %12
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
