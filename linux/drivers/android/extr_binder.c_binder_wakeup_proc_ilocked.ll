; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_wakeup_proc_ilocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_wakeup_proc_ilocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32 }
%struct.binder_thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_proc*)* @binder_wakeup_proc_ilocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_wakeup_proc_ilocked(%struct.binder_proc* %0) #0 {
  %2 = alloca %struct.binder_proc*, align 8
  %3 = alloca %struct.binder_thread*, align 8
  store %struct.binder_proc* %0, %struct.binder_proc** %2, align 8
  %4 = load %struct.binder_proc*, %struct.binder_proc** %2, align 8
  %5 = call %struct.binder_thread* @binder_select_thread_ilocked(%struct.binder_proc* %4)
  store %struct.binder_thread* %5, %struct.binder_thread** %3, align 8
  %6 = load %struct.binder_proc*, %struct.binder_proc** %2, align 8
  %7 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %8 = call i32 @binder_wakeup_thread_ilocked(%struct.binder_proc* %6, %struct.binder_thread* %7, i32 0)
  ret void
}

declare dso_local %struct.binder_thread* @binder_select_thread_ilocked(%struct.binder_proc*) #1

declare dso_local i32 @binder_wakeup_thread_ilocked(%struct.binder_proc*, %struct.binder_thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
