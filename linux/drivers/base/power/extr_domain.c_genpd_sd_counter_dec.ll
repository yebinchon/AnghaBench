; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_sd_counter_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_sd_counter_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*)* @genpd_sd_counter_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genpd_sd_counter_dec(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca %struct.generic_pm_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %5 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %4, i32 0, i32 0
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %13 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %12, i32 0, i32 0
  %14 = call i32 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %11, %1
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
