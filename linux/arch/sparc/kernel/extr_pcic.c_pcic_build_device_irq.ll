; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_build_device_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pcic.c_pcic_build_device_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@pcic_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PCIC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcic_build_device_irq(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @get_irqmask(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @irq_alloc(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %27

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @handle_level_irq, align 4
  %22 = call i32 @irq_set_chip_and_handler_name(i32 %20, i32* @pcic_irq, i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @irq_set_chip_data(i32 %23, i8* %25)
  br label %27

27:                                               ; preds = %19, %18, %11
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @get_irqmask(i32) #1

declare dso_local i32 @irq_alloc(i32, i32) #1

declare dso_local i32 @irq_set_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @irq_set_chip_data(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
