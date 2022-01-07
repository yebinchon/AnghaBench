; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_lock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32, i32*, i32, i32 }

@GENPD_FLAG_IRQ_SAFE = common dso_local global i32 0, align 4
@genpd_spin_ops = common dso_local global i32 0, align 4
@genpd_mtx_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.generic_pm_domain*)* @genpd_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genpd_lock_init(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca %struct.generic_pm_domain*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %2, align 8
  %3 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %4 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @GENPD_FLAG_IRQ_SAFE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %11 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %10, i32 0, i32 3
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %14 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %13, i32 0, i32 1
  store i32* @genpd_spin_ops, i32** %14, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %17 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %16, i32 0, i32 2
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %20 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %19, i32 0, i32 1
  store i32* @genpd_mtx_ops, i32** %20, align 8
  br label %21

21:                                               ; preds = %15, %9
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
