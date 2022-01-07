; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/zephyr/src/extr_getline-zephyr.c_zephyr_getline.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/zephyr/src/extr_getline-zephyr.c_zephyr_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console_input = type { i8* }

@zephyr_getline.cmd = internal global %struct.console_input* null, align 8
@free_queue = common dso_local global i32 0, align 4
@used_queue = common dso_local global i32 0, align 4
@K_FOREVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zephyr_getline() #0 {
  %1 = load %struct.console_input*, %struct.console_input** @zephyr_getline.cmd, align 8
  %2 = icmp ne %struct.console_input* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct.console_input*, %struct.console_input** @zephyr_getline.cmd, align 8
  %5 = call i32 @k_fifo_put(i32* @free_queue, %struct.console_input* %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @K_FOREVER, align 4
  %8 = call %struct.console_input* @k_fifo_get(i32* @used_queue, i32 %7)
  store %struct.console_input* %8, %struct.console_input** @zephyr_getline.cmd, align 8
  %9 = load %struct.console_input*, %struct.console_input** @zephyr_getline.cmd, align 8
  %10 = getelementptr inbounds %struct.console_input, %struct.console_input* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  ret i8* %11
}

declare dso_local i32 @k_fifo_put(i32*, %struct.console_input*) #1

declare dso_local %struct.console_input* @k_fifo_get(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
