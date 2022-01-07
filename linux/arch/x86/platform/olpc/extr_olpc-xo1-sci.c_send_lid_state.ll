; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_send_lid_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_send_lid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SW_LID = common dso_local global i32 0, align 4
@lid_switch_idev = common dso_local global %struct.TYPE_4__* null, align 8
@lid_open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @send_lid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_lid_state() #0 {
  %1 = load i32, i32* @SW_LID, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_switch_idev, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @test_bit(i32 %1, i32 %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @lid_open, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  br label %29

16:                                               ; preds = %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_switch_idev, align 8
  %18 = load i32, i32* @SW_LID, align 4
  %19 = load i32, i32* @lid_open, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @input_report_switch(%struct.TYPE_4__* %17, i32 %18, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_switch_idev, align 8
  %25 = call i32 @input_sync(%struct.TYPE_4__* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lid_switch_idev, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @pm_wakeup_event(i32* %27, i32 0)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_switch(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @pm_wakeup_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
