; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pic32/pic32mzda/extr_time.c_pic32_xlate_core_timer_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pic32/pic32mzda/extr_time.c_pic32_xlate_core_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@pic32_xlate_core_timer_irq.node = internal global %struct.device_node* null, align 8
@pic32_infra_match = common dso_local global i32 0, align 4
@DEFAULT_CORE_TIMER_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pic32_xlate_core_timer_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_xlate_core_timer_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @pic32_infra_match, align 4
  %4 = call %struct.device_node* @of_find_matching_node(i32* null, i32 %3)
  store %struct.device_node* %4, %struct.device_node** @pic32_xlate_core_timer_irq.node, align 8
  %5 = load %struct.device_node*, %struct.device_node** @pic32_xlate_core_timer_irq.node, align 8
  %6 = icmp ne %struct.device_node* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %20

12:                                               ; preds = %0
  %13 = load %struct.device_node*, %struct.device_node** @pic32_xlate_core_timer_irq.node, align 8
  %14 = call i32 @irq_of_parse_and_map(%struct.device_node* %13, i32 0)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %23

20:                                               ; preds = %17, %11
  %21 = load i32, i32* @DEFAULT_CORE_TIMER_INTERRUPT, align 4
  %22 = call i32 @irq_create_mapping(i32* null, i32 %21)
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local %struct.device_node* @of_find_matching_node(i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @irq_create_mapping(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
