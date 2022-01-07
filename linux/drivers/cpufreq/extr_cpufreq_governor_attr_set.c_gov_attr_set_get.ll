; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor_attr_set.c_gov_attr_set_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_governor_attr_set.c_gov_attr_set_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gov_attr_set = type { i32, i32, i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gov_attr_set_get(%struct.gov_attr_set* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.gov_attr_set*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.gov_attr_set* %0, %struct.gov_attr_set** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.gov_attr_set*, %struct.gov_attr_set** %3, align 8
  %6 = getelementptr inbounds %struct.gov_attr_set, %struct.gov_attr_set* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.gov_attr_set*, %struct.gov_attr_set** %3, align 8
  %9 = getelementptr inbounds %struct.gov_attr_set, %struct.gov_attr_set* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.list_head*, %struct.list_head** %4, align 8
  %13 = load %struct.gov_attr_set*, %struct.gov_attr_set** %3, align 8
  %14 = getelementptr inbounds %struct.gov_attr_set, %struct.gov_attr_set* %13, i32 0, i32 1
  %15 = call i32 @list_add(%struct.list_head* %12, i32* %14)
  %16 = load %struct.gov_attr_set*, %struct.gov_attr_set** %3, align 8
  %17 = getelementptr inbounds %struct.gov_attr_set, %struct.gov_attr_set* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(%struct.list_head*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
