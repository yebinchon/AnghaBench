; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_flush_shadow_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_flush_shadow_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpu_has_guestid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*)* @kvm_vz_flush_shadow_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vz_flush_shadow_all(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load i64, i64* @cpu_has_guestid, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.kvm*, %struct.kvm** %2, align 8
  %7 = call i32 @kvm_flush_remote_tlbs(%struct.kvm* %6)
  br label %15

8:                                                ; preds = %1
  %9 = load %struct.kvm*, %struct.kvm** %2, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @cpumask_setall(i32* %11)
  %13 = load %struct.kvm*, %struct.kvm** %2, align 8
  %14 = call i32 @kvm_flush_remote_tlbs(%struct.kvm* %13)
  br label %15

15:                                               ; preds = %8, %5
  ret void
}

declare dso_local i32 @kvm_flush_remote_tlbs(%struct.kvm*) #1

declare dso_local i32 @cpumask_setall(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
