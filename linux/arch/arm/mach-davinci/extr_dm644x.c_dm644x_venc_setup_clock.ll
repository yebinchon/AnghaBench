; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_dm644x.c_dm644x_venc_setup_clock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_dm644x.c_dm644x_venc_setup_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DM644X_VPSS_VENCLKEN = common dso_local global i32 0, align 4
@DM644X_VPSS_DACCLKEN = common dso_local global i32 0, align 4
@SYSMOD_VPSS_CLKCTL = common dso_local global i32 0, align 4
@DM644X_VPSS_MUXSEL_VPBECLK_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dm644x_venc_setup_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm644x_venc_setup_clock(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @DM644X_VPSS_VENCLKEN, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %37 [
    i32 128, label %9
    i32 129, label %17
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @DM644X_VPSS_DACCLKEN, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SYSMOD_VPSS_CLKCTL, align 4
  %15 = call i32 @DAVINCI_SYSMOD_VIRT(i32 %14)
  %16 = call i32 @writel(i32 %13, i32 %15)
  br label %40

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ule i32 %18, 27000000
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* @DM644X_VPSS_DACCLKEN, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SYSMOD_VPSS_CLKCTL, align 4
  %26 = call i32 @DAVINCI_SYSMOD_VIRT(i32 %25)
  %27 = call i32 @writel(i32 %24, i32 %26)
  br label %36

28:                                               ; preds = %17
  %29 = load i32, i32* @DM644X_VPSS_MUXSEL_VPBECLK_MODE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SYSMOD_VPSS_CLKCTL, align 4
  %34 = call i32 @DAVINCI_SYSMOD_VIRT(i32 %33)
  %35 = call i32 @writel(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %20
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %36, %9
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @DAVINCI_SYSMOD_VIRT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
