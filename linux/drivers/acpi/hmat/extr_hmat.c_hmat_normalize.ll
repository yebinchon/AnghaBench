; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/hmat/extr_hmat.c_hmat_normalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/hmat/extr_hmat.c_hmat_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT_MAX = common dso_local global i32 0, align 4
@hmat_revision = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @hmat_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmat_normalize(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 65535
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %49

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %17, %18
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %49

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @hmat_revision, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %49

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @DIV_ROUND_UP(i32 %34, i32 10)
  store i32 %35, i32* %8, align 4
  br label %47

36:                                               ; preds = %23
  %37 = load i32, i32* @hmat_revision, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %44 [
    i32 130, label %41
    i32 129, label %41
    i32 128, label %41
  ]

41:                                               ; preds = %39, %39, %39
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DIV_ROUND_UP(i32 %42, i32 1000)
  store i32 %43, i32* %8, align 4
  br label %45

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %41
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %32, %21, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
