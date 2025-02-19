; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_irq_domain_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_common.c_xive_irq_domain_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i32*, i32*)* @xive_irq_domain_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_irq_domain_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %11, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %6
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %27 = load i32*, i32** %12, align 8
  store i32 %26, i32* %27, align 4
  br label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %30 = load i32*, i32** %12, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %35

32:                                               ; preds = %6
  %33 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %31
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
