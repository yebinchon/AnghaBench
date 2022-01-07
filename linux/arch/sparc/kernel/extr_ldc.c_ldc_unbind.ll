; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_ldc_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LDC_FLAG_REGISTERED_IRQS = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_QUEUES = common dso_local global i32 0, align 4
@LDC_FLAG_ALLOCED_QUEUES = common dso_local global i32 0, align 4
@LDC_STATE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldc_unbind(%struct.ldc_channel* %0) #0 {
  %2 = alloca %struct.ldc_channel*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %2, align 8
  %3 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %4 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %11 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.ldc_channel* %14)
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.ldc_channel* %20)
  %22 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %25 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %9, %1
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %30 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %37 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sun4v_ldc_tx_qconf(i32 %38, i32 0, i32 0)
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sun4v_ldc_rx_qconf(i32 %42, i32 0, i32 0)
  %44 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %47 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %35, %28
  %51 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %52 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LDC_FLAG_ALLOCED_QUEUES, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %50
  %58 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %59 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %62 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @free_queue(i32 %60, i32 %63)
  %65 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %66 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %69 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @free_queue(i32 %67, i32 %70)
  %72 = load i32, i32* @LDC_FLAG_ALLOCED_QUEUES, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %75 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %57, %50
  %79 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %80 = load i32, i32* @LDC_STATE_INIT, align 4
  %81 = call i32 @ldc_set_state(%struct.ldc_channel* %79, i32 %80)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.ldc_channel*) #1

declare dso_local i32 @sun4v_ldc_tx_qconf(i32, i32, i32) #1

declare dso_local i32 @sun4v_ldc_rx_qconf(i32, i32, i32) #1

declare dso_local i32 @free_queue(i32, i32) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
