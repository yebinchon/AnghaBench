; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_transaction_log_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_transaction_log_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_transaction_log_entry = type { i32 }
%struct.binder_transaction_log = type { i32, %struct.binder_transaction_log_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.binder_transaction_log_entry* (%struct.binder_transaction_log*)* @binder_transaction_log_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.binder_transaction_log_entry* @binder_transaction_log_add(%struct.binder_transaction_log* %0) #0 {
  %2 = alloca %struct.binder_transaction_log*, align 8
  %3 = alloca %struct.binder_transaction_log_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.binder_transaction_log* %0, %struct.binder_transaction_log** %2, align 8
  %5 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %2, align 8
  %6 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %5, i32 0, i32 2
  %7 = call i32 @atomic_inc_return(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %2, align 8
  %10 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %9, i32 0, i32 1
  %11 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %10, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.binder_transaction_log_entry* %11)
  %13 = icmp uge i32 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %2, align 8
  %16 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %2, align 8
  %19 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %18, i32 0, i32 1
  %20 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.binder_transaction_log*, %struct.binder_transaction_log** %2, align 8
  %23 = getelementptr inbounds %struct.binder_transaction_log, %struct.binder_transaction_log* %22, i32 0, i32 1
  %24 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %23, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.binder_transaction_log_entry* %24)
  %26 = urem i32 %21, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %20, i64 %27
  store %struct.binder_transaction_log_entry* %28, %struct.binder_transaction_log_entry** %3, align 8
  %29 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %3, align 8
  %30 = getelementptr inbounds %struct.binder_transaction_log_entry, %struct.binder_transaction_log_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @WRITE_ONCE(i32 %31, i32 0)
  %33 = call i32 (...) @smp_wmb()
  %34 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %3, align 8
  %35 = call i32 @memset(%struct.binder_transaction_log_entry* %34, i32 0, i32 4)
  %36 = load %struct.binder_transaction_log_entry*, %struct.binder_transaction_log_entry** %3, align 8
  ret %struct.binder_transaction_log_entry* %36
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.binder_transaction_log_entry*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @memset(%struct.binder_transaction_log_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
