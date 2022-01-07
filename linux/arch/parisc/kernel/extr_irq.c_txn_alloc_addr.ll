; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_txn_alloc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_irq.c_txn_alloc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@txn_alloc_addr.next_cpu = internal global i32 -1, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@cpu_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @txn_alloc_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @txn_alloc_addr.next_cpu, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @txn_alloc_addr.next_cpu, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* @txn_alloc_addr.next_cpu, align 4
  %8 = load i32, i32* @nr_cpu_ids, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i32, i32* @cpu_data, align 4
  %12 = load i32, i32* @txn_alloc_addr.next_cpu, align 4
  %13 = call i32 @per_cpu(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load i32, i32* @txn_alloc_addr.next_cpu, align 4
  %20 = call i32 @cpu_online(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %10
  %24 = phi i1 [ true, %10 ], [ %22, %18 ]
  br label %25

25:                                               ; preds = %23, %6
  %26 = phi i1 [ false, %6 ], [ %24, %23 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* @txn_alloc_addr.next_cpu, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @txn_alloc_addr.next_cpu, align 4
  br label %6

30:                                               ; preds = %25
  %31 = load i32, i32* @txn_alloc_addr.next_cpu, align 4
  %32 = load i32, i32* @nr_cpu_ids, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* @txn_alloc_addr.next_cpu, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @txn_alloc_addr.next_cpu, align 4
  %38 = call i64 @txn_affinity_addr(i32 %36, i32 %37)
  ret i64 %38
}

declare dso_local i32 @per_cpu(i32, i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i64 @txn_affinity_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
