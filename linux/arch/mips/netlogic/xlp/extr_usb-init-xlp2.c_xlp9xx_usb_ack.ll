; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_usb-init-xlp2.c_xlp9xx_usb_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_usb-init-xlp2.c_xlp9xx_usb_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@NLM_IRQS_PER_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No matching USB irq %d node  %d!\0A\00", align 1
@XLPII_USB3_INT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @xlp9xx_usb_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp9xx_usb_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NLM_IRQS_PER_NODE, align 4
  %10 = srem i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NLM_IRQS_PER_NODE, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %26 [
    i32 130, label %17
    i32 129, label %20
    i32 128, label %23
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @nlm_xlpii_get_usb_regbase(i32 %18, i32 1)
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @nlm_xlpii_get_usb_regbase(i32 %21, i32 2)
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nlm_xlpii_get_usb_regbase(i32 %24, i32 3)
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %34

30:                                               ; preds = %23, %20, %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @XLPII_USB3_INT_REG, align 4
  %33 = call i32 @nlm_write_usb_reg(i32 %31, i32 %32, i32 -1)
  br label %34

34:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32 @nlm_xlpii_get_usb_regbase(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @nlm_write_usb_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
