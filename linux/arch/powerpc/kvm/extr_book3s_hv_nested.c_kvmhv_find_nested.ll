; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_find_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_kvmhv_find_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_nested_guest = type { i32 }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_nested_guest** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_nested_guest* (%struct.kvm*, i32)* @kvmhv_find_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_nested_guest* @kvmhv_find_nested(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_nested_guest*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.kvm*, %struct.kvm** %4, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %6, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.kvm_nested_guest* null, %struct.kvm_nested_guest** %3, align 8
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.kvm*, %struct.kvm** %4, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.kvm_nested_guest**, %struct.kvm_nested_guest*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %17, i64 %19
  %21 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %20, align 8
  store %struct.kvm_nested_guest* %21, %struct.kvm_nested_guest** %3, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = load %struct.kvm_nested_guest*, %struct.kvm_nested_guest** %3, align 8
  ret %struct.kvm_nested_guest* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
