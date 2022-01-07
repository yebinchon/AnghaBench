; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/esp8266/user/extr_user_main.c_jerry_task.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/esp8266/user/extr_user_main.c_jerry_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @jerry_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jerry_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i64 (...) @jerry_task_init()
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* @portTICK_RATE_MS, align 4
  %9 = sdiv i32 100, %8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %19, %7
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @vTaskDelay(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @js_loop(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 @show_free_mem(i32 4)
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %10

22:                                               ; preds = %1
  %23 = call i32 (...) @js_exit()
  ret void
}

declare dso_local i64 @jerry_task_init(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @js_loop(i32) #1

declare dso_local i32 @show_free_mem(i32) #1

declare dso_local i32 @js_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
