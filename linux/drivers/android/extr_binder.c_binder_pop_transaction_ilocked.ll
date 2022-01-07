; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_pop_transaction_ilocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_pop_transaction_ilocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_thread = type { %struct.binder_transaction*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.binder_transaction = type { %struct.binder_thread*, %struct.binder_transaction* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_thread*, %struct.binder_transaction*)* @binder_pop_transaction_ilocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_pop_transaction_ilocked(%struct.binder_thread* %0, %struct.binder_transaction* %1) #0 {
  %3 = alloca %struct.binder_thread*, align 8
  %4 = alloca %struct.binder_transaction*, align 8
  store %struct.binder_thread* %0, %struct.binder_thread** %3, align 8
  store %struct.binder_transaction* %1, %struct.binder_transaction** %4, align 8
  %5 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %6 = icmp ne %struct.binder_thread* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %11 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %16 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %15, i32 0, i32 0
  %17 = load %struct.binder_transaction*, %struct.binder_transaction** %16, align 8
  %18 = load %struct.binder_transaction*, %struct.binder_transaction** %4, align 8
  %19 = icmp ne %struct.binder_transaction* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %23 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %22, i32 0, i32 0
  %24 = load %struct.binder_transaction*, %struct.binder_transaction** %23, align 8
  %25 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %24, i32 0, i32 0
  %26 = load %struct.binder_thread*, %struct.binder_thread** %25, align 8
  %27 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %28 = icmp ne %struct.binder_thread* %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %32 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %31, i32 0, i32 0
  %33 = load %struct.binder_transaction*, %struct.binder_transaction** %32, align 8
  %34 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %33, i32 0, i32 1
  %35 = load %struct.binder_transaction*, %struct.binder_transaction** %34, align 8
  %36 = load %struct.binder_thread*, %struct.binder_thread** %3, align 8
  %37 = getelementptr inbounds %struct.binder_thread, %struct.binder_thread* %36, i32 0, i32 0
  store %struct.binder_transaction* %35, %struct.binder_transaction** %37, align 8
  %38 = load %struct.binder_transaction*, %struct.binder_transaction** %4, align 8
  %39 = getelementptr inbounds %struct.binder_transaction, %struct.binder_transaction* %38, i32 0, i32 0
  store %struct.binder_thread* null, %struct.binder_thread** %39, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
