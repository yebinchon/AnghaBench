; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/common/extr_smp.c_nlm_send_ipi_single.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/common/extr_smp.c_nlm_send_ipi_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SMP_CALL_FUNCTION = common dso_local global i32 0, align 4
@IRQ_IPI_SMP_FUNCTION = common dso_local global i32 0, align 4
@SMP_RESCHEDULE_YOURSELF = common dso_local global i32 0, align 4
@IRQ_IPI_SMP_RESCHEDULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_send_ipi_single(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_logical_map(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @nlm_hwtid_to_node(i32 %9)
  %11 = call %struct.TYPE_2__* @nlm_get_node(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SMP_CALL_FUNCTION, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IRQ_IPI_SMP_FUNCTION, align 4
  %22 = call i32 @nlm_pic_send_ipi(i32 %19, i32 %20, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SMP_RESCHEDULE_YOURSELF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IRQ_IPI_SMP_RESCHEDULE, align 4
  %32 = call i32 @nlm_pic_send_ipi(i32 %29, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local %struct.TYPE_2__* @nlm_get_node(i32) #1

declare dso_local i32 @nlm_hwtid_to_node(i32) #1

declare dso_local i32 @nlm_pic_send_ipi(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
