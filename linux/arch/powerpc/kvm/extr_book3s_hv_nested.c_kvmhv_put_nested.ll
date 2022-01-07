; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_put_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_put_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_guest = type { i64, %struct.kvm* }
%struct.kvm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmhv_put_nested(%struct.kvm_nested_guest* %0) #0 {
  %2 = alloca %struct.kvm_nested_guest*, align 8
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  store %struct.kvm_nested_guest* %0, %struct.kvm_nested_guest** %2, align 8
  %5 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %5, i32 0, i32 1
  %7 = load %struct.kvm*, %struct.kvm** %6, align 8
  store %struct.kvm* %7, %struct.kvm** %3, align 8
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_nested_guest, %struct.kvm_nested_guest* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.kvm*, %struct.kvm** %3, align 8
  %16 = getelementptr inbounds %struct.kvm, %struct.kvm* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %2, align 8
  %22 = call i32 @kvmhv_release_nested(%struct.kvm_nested_guest* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvmhv_release_nested(%struct.kvm_nested_guest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
