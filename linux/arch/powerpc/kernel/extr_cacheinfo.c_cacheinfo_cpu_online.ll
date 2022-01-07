; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_cacheinfo.c_cacheinfo_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cacheinfo_cpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cache* @cache_chain_instantiate(i32 %4)
  store %struct.cache* %5, %struct.cache** %3, align 8
  %6 = load %struct.cache*, %struct.cache** %3, align 8
  %7 = icmp ne %struct.cache* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.cache*, %struct.cache** %3, align 8
  %12 = call i32 @cacheinfo_sysfs_populate(i32 %10, %struct.cache* %11)
  br label %13

13:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.cache* @cache_chain_instantiate(i32) #1

declare dso_local i32 @cacheinfo_sysfs_populate(i32, %struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
