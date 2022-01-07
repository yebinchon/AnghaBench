; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_ocpi.c_ocpi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_ocpi.c_ocpi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODEV = common dso_local global i32 0, align 4
@OCPI_PROT = common dso_local global i32 0, align 4
@OCPI_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocpi_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cpu_is_omap16xx()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %23

8:                                                ; preds = %0
  %9 = load i32, i32* @OCPI_PROT, align 4
  %10 = call i32 @omap_readl(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, -256
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @OCPI_PROT, align 4
  %15 = call i32 @omap_writel(i32 %13, i32 %14)
  %16 = load i32, i32* @OCPI_SEC, align 4
  %17 = call i32 @omap_readl(i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, -256
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @OCPI_SEC, align 4
  %22 = call i32 @omap_writel(i32 %20, i32 %21)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %8, %5
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @cpu_is_omap16xx(...) #1

declare dso_local i32 @omap_readl(i32) #1

declare dso_local i32 @omap_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
