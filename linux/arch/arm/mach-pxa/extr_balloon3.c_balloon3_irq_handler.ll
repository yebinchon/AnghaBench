; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_balloon3.c_balloon3_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_balloon3.c_balloon3_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }
%struct.irq_chip = type { i32 (%struct.irq_data*)* }

@BALLOON3_INT_CONTROL_REG = common dso_local global i32 0, align 4
@balloon3_irq_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @balloon3_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon3_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load i32, i32* @BALLOON3_INT_CONTROL_REG, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  %9 = load i64, i64* @balloon3_irq_enabled, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %46, %1
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %12)
  store %struct.irq_data* %13, %struct.irq_data** %4, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %14)
  store %struct.irq_chip* %15, %struct.irq_chip** %5, align 8
  %16 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %17 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %16, i32 0, i32 0
  %18 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %17, align 8
  %19 = icmp ne i32 (%struct.irq_data*)* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %11
  %21 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %22 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %21, i32 0, i32 0
  %23 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %22, align 8
  %24 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %25 = call i32 %23(%struct.irq_data* %24)
  br label %26

26:                                               ; preds = %20, %11
  br label %27

27:                                               ; preds = %30, %26
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = call i32 @BALLOON3_IRQ(i32 0)
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @__ffs(i64 %32)
  %34 = add i32 %31, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @generic_handle_irq(i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = sub i64 %37, 1
  %39 = load i64, i64* %3, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %3, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* @BALLOON3_INT_CONTROL_REG, align 4
  %43 = call i64 @__raw_readl(i32 %42)
  %44 = load i64, i64* @balloon3_irq_enabled, align 8
  %45 = and i64 %43, %44
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %3, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %11, label %49

49:                                               ; preds = %46
  ret void
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @BALLOON3_IRQ(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
