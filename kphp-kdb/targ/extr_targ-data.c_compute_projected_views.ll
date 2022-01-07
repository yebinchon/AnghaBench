; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_projected_views.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_projected_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INIT_L_VIEWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @compute_projected_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_projected_views(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @INIT_L_VIEWS, align 4
  store i32 %7, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 1000
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @INIT_L_VIEWS, align 4
  %13 = mul nsw i32 %12, 8
  %14 = sdiv i32 %13, 10
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 32000
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @INIT_L_VIEWS, align 4
  %20 = mul nsw i32 %19, 9
  %21 = sdiv i32 %20, 10
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = icmp sle i32 %23, 12000000
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @INIT_L_VIEWS, align 4
  store i32 %26, i32* %2, align 4
  br label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 80000000
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @INIT_L_VIEWS, align 4
  %32 = mul nsw i32 %31, 12
  %33 = sdiv i32 %32, 10
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @INIT_L_VIEWS, align 4
  %36 = mul nsw i32 %35, 15
  %37 = sdiv i32 %36, 10
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %30, %25, %18, %11, %6
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
