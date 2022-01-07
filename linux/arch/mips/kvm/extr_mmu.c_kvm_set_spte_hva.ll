; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_set_spte_hva.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mmu.c_kvm_set_spte_hva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm*)* }
%struct.kvm = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@kvm_set_spte_handler = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_spte_hva(%struct.kvm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load %struct.kvm*, %struct.kvm** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @handle_hva_to_gpa(%struct.kvm* %12, i64 %13, i64 %14, i32* @kvm_set_spte_handler, i32* %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_mips_callbacks, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.kvm*)*, i32 (%struct.kvm*)** %20, align 8
  %22 = load %struct.kvm*, %struct.kvm** %4, align 8
  %23 = call i32 %21(%struct.kvm* %22)
  br label %24

24:                                               ; preds = %18, %3
  ret i32 0
}

declare dso_local i32 @handle_hva_to_gpa(%struct.kvm*, i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
