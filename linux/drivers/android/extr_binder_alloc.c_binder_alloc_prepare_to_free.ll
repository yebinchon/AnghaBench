; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc.c_binder_alloc_prepare_to_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc.c_binder_alloc_prepare_to_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_buffer = type { i32 }
%struct.binder_alloc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.binder_buffer* @binder_alloc_prepare_to_free(%struct.binder_alloc* %0, i64 %1) #0 {
  %3 = alloca %struct.binder_alloc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.binder_buffer*, align 8
  store %struct.binder_alloc* %0, %struct.binder_alloc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.binder_alloc*, %struct.binder_alloc** %3, align 8
  %7 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.binder_alloc*, %struct.binder_alloc** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call %struct.binder_buffer* @binder_alloc_prepare_to_free_locked(%struct.binder_alloc* %9, i64 %10)
  store %struct.binder_buffer* %11, %struct.binder_buffer** %5, align 8
  %12 = load %struct.binder_alloc*, %struct.binder_alloc** %3, align 8
  %13 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.binder_buffer*, %struct.binder_buffer** %5, align 8
  ret %struct.binder_buffer* %15
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.binder_buffer* @binder_alloc_prepare_to_free_locked(%struct.binder_alloc*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
