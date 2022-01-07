; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_alloc_msg_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_alloc_msg_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32 }
%struct.smi_info = type { i32 }

@SI_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipmi_smi_msg* (%struct.smi_info*)* @alloc_msg_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipmi_smi_msg* @alloc_msg_handle_irq(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca %struct.ipmi_smi_msg*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  %4 = call %struct.ipmi_smi_msg* (...) @ipmi_alloc_smi_msg()
  store %struct.ipmi_smi_msg* %4, %struct.ipmi_smi_msg** %3, align 8
  %5 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %6 = icmp ne %struct.ipmi_smi_msg* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %9 = call i32 @disable_si_irq(%struct.smi_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* @SI_NORMAL, align 4
  %13 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %14 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %7
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %18 = call i64 @enable_si_irq(%struct.smi_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  %22 = call i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg* %21)
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %3, align 8
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %3, align 8
  ret %struct.ipmi_smi_msg* %25
}

declare dso_local %struct.ipmi_smi_msg* @ipmi_alloc_smi_msg(...) #1

declare dso_local i32 @disable_si_irq(%struct.smi_info*) #1

declare dso_local i64 @enable_si_irq(%struct.smi_info*) #1

declare dso_local i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
