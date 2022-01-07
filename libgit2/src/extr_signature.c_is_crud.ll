; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_signature.c_is_crud.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_signature.c_is_crud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @is_crud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_crud(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp sle i32 %4, 32
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 46
  br i1 %9, label %42, label %10

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 44
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %2, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 58
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* %2, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 59
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %2, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 60
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load i8, i8* %2, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 62
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = load i8, i8* %2, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %2, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8, i8* %2, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 39
  br label %42

42:                                               ; preds = %38, %34, %30, %26, %22, %18, %14, %10, %6, %1
  %43 = phi i1 [ true, %34 ], [ true, %30 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
