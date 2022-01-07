; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__autodep_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c__autodep_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdm_autodep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clockdomain*, i32 }
%struct.clockdomain = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"clockdomain: autodeps: clockdomain %s does not exist\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clkdm_autodep*)* @_autodep_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_autodep_lookup(%struct.clkdm_autodep* %0) #0 {
  %2 = alloca %struct.clkdm_autodep*, align 8
  %3 = alloca %struct.clockdomain*, align 8
  store %struct.clkdm_autodep* %0, %struct.clkdm_autodep** %2, align 8
  %4 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %2, align 8
  %5 = icmp ne %struct.clkdm_autodep* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %2, align 8
  %9 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.clockdomain* @clkdm_lookup(i32 %11)
  store %struct.clockdomain* %12, %struct.clockdomain** %3, align 8
  %13 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %14 = icmp ne %struct.clockdomain* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %7
  %16 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %2, align 8
  %17 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.clockdomain* @ERR_PTR(i32 %22)
  store %struct.clockdomain* %23, %struct.clockdomain** %3, align 8
  br label %24

24:                                               ; preds = %15, %7
  %25 = load %struct.clockdomain*, %struct.clockdomain** %3, align 8
  %26 = load %struct.clkdm_autodep*, %struct.clkdm_autodep** %2, align 8
  %27 = getelementptr inbounds %struct.clkdm_autodep, %struct.clkdm_autodep* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.clockdomain* %25, %struct.clockdomain** %28, align 8
  br label %29

29:                                               ; preds = %24, %6
  ret void
}

declare dso_local %struct.clockdomain* @clkdm_lookup(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.clockdomain* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
