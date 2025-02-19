; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_falcon_gpe_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_falcon_gpe_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCTL_SYS1 = common dso_local global i32 0, align 4
@SYS1_INFRAC = common dso_local global i32 0, align 4
@GPPC_OFFSET = common dso_local global i32 0, align 4
@STATUS_CONFIG = common dso_local global i32 0, align 4
@GPEFREQ_MASK = common dso_local global i32 0, align 4
@GPEFREQ_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @falcon_gpe_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_gpe_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SYSCTL_SYS1, align 4
  %4 = load i32, i32* @SYS1_INFRAC, align 4
  %5 = call i32 @sysctl_r32(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GPPC_OFFSET, align 4
  %8 = add nsw i32 %7, 1
  %9 = shl i32 1, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %42

13:                                               ; preds = %0
  %14 = load i32, i32* @STATUS_CONFIG, align 4
  %15 = call i32 @status_r32(i32 %14)
  %16 = load i32, i32* @GPEFREQ_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @GPEFREQ_OFFSET, align 4
  %19 = lshr i32 %17, %18
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* @SYSCTL_SYS1, align 4
  %25 = load i32, i32* @GPPC_OFFSET, align 4
  %26 = add nsw i32 %25, 1
  %27 = shl i32 7, %26
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @GPPC_OFFSET, align 4
  %30 = add nsw i32 %29, 2
  %31 = shl i32 %28, %30
  %32 = load i32, i32* @SYS1_INFRAC, align 4
  %33 = call i32 @sysctl_w32_mask(i32 %24, i32 %27, i32 %31, i32 %32)
  %34 = call i32 @udelay(i32 1)
  %35 = load i32, i32* @SYSCTL_SYS1, align 4
  %36 = load i32, i32* @GPPC_OFFSET, align 4
  %37 = add nsw i32 %36, 1
  %38 = shl i32 1, %37
  %39 = load i32, i32* @SYS1_INFRAC, align 4
  %40 = call i32 @sysctl_w32_mask(i32 %35, i32 0, i32 %38, i32 %39)
  %41 = call i32 @udelay(i32 1)
  br label %42

42:                                               ; preds = %23, %12
  ret void
}

declare dso_local i32 @sysctl_r32(i32, i32) #1

declare dso_local i32 @status_r32(i32) #1

declare dso_local i32 @sysctl_w32_mask(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
