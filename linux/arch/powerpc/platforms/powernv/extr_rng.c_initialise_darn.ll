; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_rng.c_initialise_darn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_rng.c_initialise_darn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64*)* }

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [42 x i8] c"Unable to use DARN for get_random_seed()\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @initialise_darn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialise_darn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %5 = call i32 @cpu_has_feature(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %26

10:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call i64 @powernv_get_random_darn(i64* %2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i64 (i64*)* @powernv_get_random_darn, i64 (i64*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %26

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11

22:                                               ; preds = %11
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %22, %17, %7
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i64 @powernv_get_random_darn(i64*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
