; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_add_cpu_to_smallcore_masks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_add_cpu_to_smallcore_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@cpu_l1_cache_map = common dso_local global i32 0, align 4
@has_big_cores = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @add_cpu_to_smallcore_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cpu_to_smallcore_masks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @cpu_l1_cache_map, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.cpumask* @per_cpu(i32 %6, i32 %7)
  store %struct.cpumask* %8, %struct.cpumask** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @cpu_first_thread_sibling(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @has_big_cores, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @cpu_smallcore_mask(i32 %16)
  %18 = call i32 @cpumask_set_cpu(i32 %15, i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %40, %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @threads_per_core, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @cpu_online(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %33 = call i64 @cpumask_test_cpu(i32 %31, %struct.cpumask* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @set_cpus_related(i32 %36, i32 %37, i32 (i32)* @cpu_smallcore_mask)
  br label %39

39:                                               ; preds = %35, %30, %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %20

43:                                               ; preds = %13, %20
  ret void
}

declare dso_local %struct.cpumask* @per_cpu(i32, i32) #1

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpu_smallcore_mask(i32) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @set_cpus_related(i32, i32, i32 (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
