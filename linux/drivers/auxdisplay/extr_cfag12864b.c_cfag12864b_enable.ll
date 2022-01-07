; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_cfag12864b.c_cfag12864b_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfag12864b_mutex = common dso_local global i32 0, align 4
@cfag12864b_updating = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @cfag12864b_enable() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 @mutex_lock(i32* @cfag12864b_mutex)
  %3 = load i32, i32* @cfag12864b_updating, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  store i32 1, i32* @cfag12864b_updating, align 4
  %6 = call i32 (...) @cfag12864b_queue()
  store i8 0, i8* %1, align 1
  br label %8

7:                                                ; preds = %0
  store i8 1, i8* %1, align 1
  br label %8

8:                                                ; preds = %7, %5
  %9 = call i32 @mutex_unlock(i32* @cfag12864b_mutex)
  %10 = load i8, i8* %1, align 1
  ret i8 %10
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cfag12864b_queue(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
