; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_irq_ia64.c_find_unassigned_vector.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_irq_ia64.c_find_unassigned_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_online_mask = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IA64_NUM_DEVICE_VECTORS = common dso_local global i32 0, align 4
@IA64_FIRST_DEVICE_VECTOR = common dso_local global i32 0, align 4
@vector_table = common dso_local global i32* null, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_unassigned_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unassigned_vector(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32*, i32** @cpu_online_mask, align 8
  %8 = call i32 @cpumask_and(i32* %4, i32* %3, i32* %7)
  %9 = call i64 @cpumask_empty(i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IA64_NUM_DEVICE_VECTORS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32, i32* @IA64_FIRST_DEVICE_VECTOR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** @vector_table, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @cpumask_and(i32* %4, i32* %3, i32* %26)
  %28 = call i64 @cpumask_empty(i32* %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %31, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @cpumask_and(i32*, i32*, i32*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
