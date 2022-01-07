; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_irq_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_irq_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq_data = type { i32, i32 }

@XIVE_IRQ_FLAG_LSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xive_irq_data*)* @xive_irq_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_irq_trigger(%struct.xive_irq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xive_irq_data*, align 8
  store %struct.xive_irq_data* %0, %struct.xive_irq_data** %3, align 8
  %4 = load %struct.xive_irq_data*, %struct.xive_irq_data** %3, align 8
  %5 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XIVE_IRQ_FLAG_LSI, align 4
  %8 = and i32 %6, %7
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.xive_irq_data*, %struct.xive_irq_data** %3, align 8
  %14 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %27

22:                                               ; preds = %12
  %23 = load %struct.xive_irq_data*, %struct.xive_irq_data** %3, align 8
  %24 = getelementptr inbounds %struct.xive_irq_data, %struct.xive_irq_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @out_be64(i32 %25, i32 0)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %21, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @out_be64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
