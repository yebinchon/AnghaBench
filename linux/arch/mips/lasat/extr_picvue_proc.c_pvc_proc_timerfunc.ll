; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lasat/extr_picvue_proc.c_pvc_proc_timerfunc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lasat/extr_picvue_proc.c_pvc_proc_timerfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.timer_list = type { i32 }

@scroll_dir = common dso_local global i64 0, align 8
@DISPLAY = common dso_local global i32 0, align 4
@RIGHT = common dso_local global i32 0, align 4
@LEFT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@scroll_interval = common dso_local global i64 0, align 8
@timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvc_proc_timerfunc(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i64, i64* @scroll_dir, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* @DISPLAY, align 4
  %7 = load i32, i32* @RIGHT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @pvc_move(i32 %8)
  br label %19

10:                                               ; preds = %1
  %11 = load i64, i64* @scroll_dir, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @DISPLAY, align 4
  %15 = load i32, i32* @LEFT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @pvc_move(i32 %16)
  br label %18

18:                                               ; preds = %13, %10
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* @scroll_interval, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @timer, i32 0, i32 0), align 8
  %23 = call i32 @add_timer(%struct.TYPE_3__* @timer)
  ret void
}

declare dso_local i32 @pvc_move(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
