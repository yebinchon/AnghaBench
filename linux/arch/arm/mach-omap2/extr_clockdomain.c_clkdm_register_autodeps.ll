; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_register_autodeps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_register_autodeps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdm_autodep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@clkdm_list = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@autodeps = common dso_local global %struct.clkdm_autodep* null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_register_autodeps(%struct.clkdm_autodep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clkdm_autodep*, align 8
  %4 = alloca %struct.clkdm_autodep*, align 8
  store %struct.clkdm_autodep* %0, %struct.clkdm_autodep** %3, align 8
  store %struct.clkdm_autodep* null, %struct.clkdm_autodep** %4, align 8
  %5 = call i64 @list_empty(i32* @clkdm_list)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EACCES, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  %12 = icmp ne %struct.clkdm_autodep* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %10
  %17 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** @autodeps, align 8
  %18 = icmp ne %struct.clkdm_autodep* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %3, align 8
  store %struct.clkdm_autodep* %23, %struct.clkdm_autodep** @autodeps, align 8
  %24 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** @autodeps, align 8
  store %struct.clkdm_autodep* %24, %struct.clkdm_autodep** %4, align 8
  br label %25

25:                                               ; preds = %34, %22
  %26 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %4, align 8
  %27 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %4, align 8
  %33 = call i32 @_autodep_lookup(%struct.clkdm_autodep* %32)
  br label %34

34:                                               ; preds = %31
  %35 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %4, align 8
  %36 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %35, i32 1
  store %struct.clkdm_autodep* %36, %struct.clkdm_autodep** %4, align 8
  br label %25

37:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %19, %13, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @_autodep_lookup(%struct.clkdm_autodep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
