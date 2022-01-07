; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_mcip.c_idu_irq_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_mcip.c_idu_irq_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mcip_lock = common dso_local global i32 0, align 4
@IDU_M_DISTRI_DEST = common dso_local global i32 0, align 4
@IDU_M_DISTRI_RR = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @idu_irq_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idu_irq_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %13 = load i32, i32* @cpu_online_mask, align 4
  %14 = call i32 @cpumask_and(i32* %9, %struct.cpumask* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* @mcip_lock, i64 %20)
  %22 = call i32* @cpumask_bits(i32* %9)
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %26 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @idu_set_dest(i32 %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @ffs(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @fls(i32 %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @IDU_M_DISTRI_DEST, align 4
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @IDU_M_DISTRI_RR, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %41 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @idu_set_mode(i32 %42, i32 0, i32 0, i32 1, i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @raw_spin_unlock_irqrestore(i32* @mcip_lock, i64 %45)
  %47 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @cpumask_and(i32*, %struct.cpumask*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32* @cpumask_bits(i32*) #1

declare dso_local i32 @idu_set_dest(i32, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @idu_set_mode(i32, i32, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
