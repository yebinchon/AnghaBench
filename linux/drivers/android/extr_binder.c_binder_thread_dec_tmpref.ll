; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_thread_dec_tmpref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_thread_dec_tmpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_thread = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_thread*)* @binder_thread_dec_tmpref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_thread_dec_tmpref(%struct.binder_thread* %0) #0 {
  %2 = alloca %struct.binder_thread*, align 8
  store %struct.binder_thread* %0, %struct.binder_thread** %2, align 8
  %3 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %4 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @binder_inner_proc_lock(i32 %5)
  %7 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %8 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %7, i32 0, i32 1
  %9 = call i32 @atomic_dec(i32* %8)
  %10 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %11 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %16 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %15, i32 0, i32 1
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %21 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @binder_inner_proc_unlock(i32 %22)
  %24 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %25 = call i32 @binder_free_thread(%struct.binder_thread* %24)
  br label %31

26:                                               ; preds = %14, %1
  %27 = load %struct.binder_thread*, %struct.binder_thread** %2, align 8
  %28 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @binder_inner_proc_unlock(i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @binder_inner_proc_lock(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @binder_inner_proc_unlock(i32) #1

declare dso_local i32 @binder_free_thread(%struct.binder_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
