; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvm_set_spte_hva.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvm_set_spte_hva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_spte_hva(%struct.kvm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.kvm*, %struct.kvm** %4, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.kvm*, i64, i32)**
  %13 = load i32 (%struct.kvm*, i64, i32)*, i32 (%struct.kvm*, i64, i32)** %12, align 8
  %14 = load %struct.kvm*, %struct.kvm** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 %13(%struct.kvm* %14, i64 %15, i32 %16)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
