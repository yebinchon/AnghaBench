; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_rehash.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_resize_hpt = type { %struct.kvm* }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_resize_hpt*)* @resize_hpt_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_hpt_rehash(%struct.kvm_resize_hpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_resize_hpt*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_resize_hpt* %0, %struct.kvm_resize_hpt** %3, align 8
  %7 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %7, i32 0, i32 0
  %9 = load %struct.kvm*, %struct.kvm** %8, align 8
  store %struct.kvm* %9, %struct.kvm** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %26, %1
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.kvm*, %struct.kvm** %4, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i64 @kvmppc_hpt_npte(i32* %14)
  %16 = icmp ult i64 %11, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @resize_hpt_rehash_hpte(%struct.kvm_resize_hpt* %18, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %5, align 8
  br label %10

29:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @kvmppc_hpt_npte(i32*) #1

declare dso_local i32 @resize_hpt_rehash_hpte(%struct.kvm_resize_hpt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
