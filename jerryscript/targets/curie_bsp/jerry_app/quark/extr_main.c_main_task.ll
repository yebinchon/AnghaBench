; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/curie_bsp/jerry_app/quark/extr_main.c_main_task.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/curie_bsp/jerry_app/quark/extr_main.c_main_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@queue = common dso_local global i32 0, align 4
@WDT_MAX_TIMEOUT_MS = common dso_local global i32 0, align 4
@E_OS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @bsp_init()
  store i32 %4, i32* @queue, align 4
  %5 = load i32, i32* @WDT_MAX_TIMEOUT_MS, align 4
  %6 = call i32 @wdt_start(i32 %5)
  %7 = load i32, i32* @queue, align 4
  %8 = call i32 @cfw_init(i32 %7)
  %9 = call i32 (...) @jerry_start()
  br label %10

10:                                               ; preds = %1, %10
  %11 = load i32, i32* @E_OS_OK, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @queue, align 4
  %13 = call i32 @queue_process_message_wait(i32 %12, i32 5000, i32* %3)
  %14 = call i32 (...) @wdt_keepalive()
  br label %10
}

declare dso_local i32 @bsp_init(...) #1

declare dso_local i32 @wdt_start(i32) #1

declare dso_local i32 @cfw_init(i32) #1

declare dso_local i32 @jerry_start(...) #1

declare dso_local i32 @queue_process_message_wait(i32, i32, i32*) #1

declare dso_local i32 @wdt_keepalive(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
