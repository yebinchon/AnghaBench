; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__clkdm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.powerdomain*, i32 }
%struct.powerdomain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"clockdomain: %s: powerdomain %s does not exist\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@clkdm_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"clockdomain: registered %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clockdomain*)* @_clkdm_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_clkdm_register(%struct.clockdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clockdomain*, align 8
  %4 = alloca %struct.powerdomain*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %3, align 8
  %5 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %6 = icmp ne %struct.clockdomain* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %9 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %7
  %16 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %17 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.powerdomain* @pwrdm_lookup(i32 %19)
  store %struct.powerdomain* %20, %struct.powerdomain** %4, align 8
  %21 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %22 = icmp ne %struct.powerdomain* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %25 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %28 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %15
  %35 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %36 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %37 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.powerdomain* %35, %struct.powerdomain** %38, align 8
  %39 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %40 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @_clkdm_lookup(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %58

47:                                               ; preds = %34
  %48 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %49 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %48, i32 0, i32 1
  %50 = call i32 @list_add(i32* %49, i32* @clkdm_list)
  %51 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %52 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %53 = call i32 @pwrdm_add_clkdm(%struct.powerdomain* %51, %struct.clockdomain* %52)
  %54 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %55 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %44, %23, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.powerdomain* @pwrdm_lookup(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i64 @_clkdm_lookup(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pwrdm_add_clkdm(%struct.powerdomain*, %struct.clockdomain*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
