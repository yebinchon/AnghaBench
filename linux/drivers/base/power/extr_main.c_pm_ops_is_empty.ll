; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_pm_ops_is_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_pm_ops_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pm_ops = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_pm_ops*)* @pm_ops_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_ops_is_empty(%struct.dev_pm_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dev_pm_ops*, align 8
  store %struct.dev_pm_ops* %0, %struct.dev_pm_ops** %3, align 8
  %4 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %5 = icmp ne %struct.dev_pm_ops* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

7:                                                ; preds = %1
  %8 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %9 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %48, label %12

12:                                               ; preds = %7
  %13 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %14 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %12
  %18 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %19 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %24 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %22
  %28 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %29 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  %33 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %34 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %39 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %3, align 8
  %44 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %37, %32, %27, %22, %17, %12, %7
  %49 = phi i1 [ false, %37 ], [ false, %32 ], [ false, %27 ], [ false, %22 ], [ false, %17 ], [ false, %12 ], [ false, %7 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %6
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
