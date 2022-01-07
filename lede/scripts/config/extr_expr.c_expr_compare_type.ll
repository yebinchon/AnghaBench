; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_compare_type.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_compare_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @expr_compare_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_compare_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %45 [
    i32 133, label %12
    i32 131, label %12
    i32 135, label %12
    i32 134, label %12
    i32 136, label %20
    i32 128, label %20
    i32 130, label %25
    i32 137, label %30
    i32 129, label %35
    i32 132, label %40
  ]

12:                                               ; preds = %10, %10, %10, %10
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 136
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 1, i32* %3, align 4
  br label %46

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %10, %10, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 130
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %46

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %10, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 137
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %46

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %10, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %46

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %10, %34
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 132
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %46

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %10, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %46

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %10, %44
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %38, %33, %28, %23, %18, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
