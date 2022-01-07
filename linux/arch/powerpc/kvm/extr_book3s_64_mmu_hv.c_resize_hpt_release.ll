; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_release.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_resize_hpt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_resize_hpt*, i32 }
%struct.kvm_resize_hpt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_resize_hpt*)* @resize_hpt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_hpt_release(%struct.kvm* %0, %struct.kvm_resize_hpt* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_resize_hpt*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_resize_hpt* %1, %struct.kvm_resize_hpt** %4, align 8
  %5 = load %struct.kvm*, %struct.kvm** %3, align 8
  %6 = getelementptr inbounds %struct.kvm, %struct.kvm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %17 = icmp ne %struct.kvm_resize_hpt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %50

19:                                               ; preds = %15
  %20 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %33, i32 0, i32 0
  %35 = call i32 @kvmppc_free_hpt(%struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %38 = call i32 @kfree(%struct.kvm_resize_hpt* %37)
  br label %39

39:                                               ; preds = %36, %19
  %40 = load %struct.kvm*, %struct.kvm** %3, align 8
  %41 = getelementptr inbounds %struct.kvm, %struct.kvm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %42, align 8
  %44 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %4, align 8
  %45 = icmp eq %struct.kvm_resize_hpt* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.kvm*, %struct.kvm** %3, align 8
  %48 = getelementptr inbounds %struct.kvm, %struct.kvm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store %struct.kvm_resize_hpt* null, %struct.kvm_resize_hpt** %49, align 8
  br label %50

50:                                               ; preds = %14, %18, %46, %39
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @kvmppc_free_hpt(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.kvm_resize_hpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
