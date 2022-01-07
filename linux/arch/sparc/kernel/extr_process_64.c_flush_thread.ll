; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_flush_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_flush_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_thread() #0 {
  %1 = alloca %struct.thread_info*, align 8
  %2 = alloca %struct.mm_struct*, align 8
  %3 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %3, %struct.thread_info** %1, align 8
  %4 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %5 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %8, %struct.mm_struct** %2, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = icmp ne %struct.mm_struct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = call i32 @tsb_context_switch(%struct.mm_struct* %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 @set_thread_wsaved(i32 0)
  %16 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %17 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 0, i64* %19, align 8
  ret void
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @tsb_context_switch(%struct.mm_struct*) #1

declare dso_local i32 @set_thread_wsaved(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
