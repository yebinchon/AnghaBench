; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_pwrdm_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm44xx.c_omap4_pwrdm_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32, i32 }

@OMAP_POWERSTATEST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powerdomain*)* @omap4_pwrdm_restore_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_pwrdm_restore_context(%struct.powerdomain* %0) #0 {
  %2 = alloca %struct.powerdomain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %2, align 8
  %5 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %6 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %9 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %12 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @omap4_prminst_read_inst_reg(i32 %7, i32 %10, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %16 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %19 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %22 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %25 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @omap4_prminst_write_inst_reg(i32 %17, i32 %20, i32 %23, i32 %26)
  %28 = load i32, i32* @OMAP_POWERSTATEST_MASK, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @OMAP_POWERSTATEST_MASK, align 4
  %32 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %33 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.powerdomain*, %struct.powerdomain** %2, align 8
  %41 = call i32 @omap4_pwrdm_wait_transition(%struct.powerdomain* %40)
  br label %42

42:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @omap4_prminst_read_inst_reg(i32, i32, i32) #1

declare dso_local i32 @omap4_prminst_write_inst_reg(i32, i32, i32, i32) #1

declare dso_local i32 @omap4_pwrdm_wait_transition(%struct.powerdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
