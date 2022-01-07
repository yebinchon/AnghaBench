; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/common/extr_irq.c_xlp_pic_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/common/extr_irq.c_xlp_pic_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.nlm_pic_irq = type { i32, %struct.TYPE_2__*, i32, i32 (%struct.irq_data.0*)* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_data.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xlp_pic_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_pic_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.nlm_pic_irq*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = call %struct.nlm_pic_irq* @irq_data_get_irq_chip_data(%struct.irq_data* %4)
  store %struct.nlm_pic_irq* %5, %struct.nlm_pic_irq** %3, align 8
  %6 = load %struct.nlm_pic_irq*, %struct.nlm_pic_irq** %3, align 8
  %7 = icmp ne %struct.nlm_pic_irq* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.nlm_pic_irq*, %struct.nlm_pic_irq** %3, align 8
  %12 = getelementptr inbounds %struct.nlm_pic_irq, %struct.nlm_pic_irq* %11, i32 0, i32 3
  %13 = load i32 (%struct.irq_data.0*)*, i32 (%struct.irq_data.0*)** %12, align 8
  %14 = icmp ne i32 (%struct.irq_data.0*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.nlm_pic_irq*, %struct.nlm_pic_irq** %3, align 8
  %17 = getelementptr inbounds %struct.nlm_pic_irq, %struct.nlm_pic_irq* %16, i32 0, i32 3
  %18 = load i32 (%struct.irq_data.0*)*, i32 (%struct.irq_data.0*)** %17, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %20 = bitcast %struct.irq_data* %19 to %struct.irq_data.0*
  %21 = call i32 %18(%struct.irq_data.0* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.nlm_pic_irq*, %struct.nlm_pic_irq** %3, align 8
  %24 = getelementptr inbounds %struct.nlm_pic_irq, %struct.nlm_pic_irq* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @set_c0_eimr(i32 %25)
  %27 = load %struct.nlm_pic_irq*, %struct.nlm_pic_irq** %3, align 8
  %28 = getelementptr inbounds %struct.nlm_pic_irq, %struct.nlm_pic_irq* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nlm_pic_irq*, %struct.nlm_pic_irq** %3, align 8
  %33 = getelementptr inbounds %struct.nlm_pic_irq, %struct.nlm_pic_irq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nlm_pic_ack(i32 %31, i32 %34)
  ret void
}

declare dso_local %struct.nlm_pic_irq* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_c0_eimr(i32) #1

declare dso_local i32 @nlm_pic_ack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
