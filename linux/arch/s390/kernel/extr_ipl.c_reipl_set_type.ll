; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_reipl_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reipl_capabilities = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@reipl_block_ccw = common dso_local global i32 0, align 4
@reipl_block_actual = common dso_local global i32 0, align 4
@reipl_block_fcp = common dso_local global i32 0, align 4
@reipl_block_nss = common dso_local global i32 0, align 4
@reipl_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @reipl_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reipl_set_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @reipl_capabilities, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @reipl_block_ccw, align 4
  store i32 %14, i32* @reipl_block_actual, align 4
  br label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @reipl_block_fcp, align 4
  store i32 %16, i32* @reipl_block_actual, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @reipl_block_nss, align 4
  store i32 %18, i32* @reipl_block_actual, align 4
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %17, %15, %13
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* @reipl_type, align 4
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
