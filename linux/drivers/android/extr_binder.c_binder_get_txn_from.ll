; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_get_txn_from.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_get_txn_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_thread = type { i32 }
%struct.binder_transaction = type { i32, %struct.binder_thread* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.binder_thread* (%struct.binder_transaction*)* @binder_get_txn_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.binder_thread* @binder_get_txn_from(%struct.binder_transaction* %0) #0 {
  %2 = alloca %struct.binder_transaction*, align 8
  %3 = alloca %struct.binder_thread*, align 8
  store %struct.binder_transaction* %0, %struct.binder_transaction** %2, align 8
  %4 = load %struct.binder_transaction*, %struct.binder_transaction** %2, align 8
  %5 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.binder_transaction*, %struct.binder_transaction** %2, align 8
  %8 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %7, i32 0, i32 1
  %9 = load %struct.binder_thread*, %struct.binder_thread** %8, align 8
  store %struct.binder_thread* %9, %struct.binder_thread** %3, align 8
  %10 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %11 = icmp ne %struct.binder_thread* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %14 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.binder_transaction*, %struct.binder_transaction** %2, align 8
  %18 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  ret %struct.binder_thread* %20
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
