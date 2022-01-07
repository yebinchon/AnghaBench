; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__init_clkdm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__init_clkdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"omap_hwmod: %s: missing clockdomain\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"omap_hwmod: %s: could not associate to clkdm %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"omap_hwmod: %s: associated to clkdm %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_init_clkdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_init_clkdm(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  %4 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %5 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %10 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %15 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clkdm_lookup(i32 %16)
  %18 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %19 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %21 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %13
  %25 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %26 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %29 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  store i32 0, i32* %2, align 4
  br label %40

32:                                               ; preds = %13
  %33 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %34 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %37 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %32, %24, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @clkdm_lookup(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
