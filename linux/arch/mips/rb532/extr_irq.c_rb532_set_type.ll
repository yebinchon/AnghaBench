; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/rb532/extr_irq.c_rb532_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/rb532/extr_irq.c_rb532_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@GPIO_MAPPED_IRQ_BASE = common dso_local global i32 0, align 4
@GPIO_MAPPED_IRQ_GROUP = common dso_local global i32 0, align 4
@GROUP4_IRQ_BASE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @rb532_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb532_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GPIO_MAPPED_IRQ_BASE, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @irq_to_group(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GPIO_MAPPED_IRQ_GROUP, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @GROUP4_IRQ_BASE, align 8
  %26 = add nsw i64 %25, 13
  %27 = icmp sgt i64 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %45 [
    i32 129, label %39
    i32 128, label %42
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rb532_gpio_set_ilevel(i32 1, i32 %40)
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @rb532_gpio_set_ilevel(i32 0, i32 %43)
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %42, %39
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @irq_to_group(i32) #1

declare dso_local i32 @rb532_gpio_set_ilevel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
