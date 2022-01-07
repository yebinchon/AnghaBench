; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_unpin_memory.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_sev_unpin_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.page = type { i32 }
%struct.kvm_sev_info = type { i64 }
%struct.TYPE_2__ = type { %struct.kvm_sev_info }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.page**, i64)* @sev_unpin_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sev_unpin_memory(%struct.kvm* %0, %struct.page** %1, i64 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_sev_info*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = call %struct.TYPE_2__* @to_kvm_svm(%struct.kvm* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.kvm_sev_info* %10, %struct.kvm_sev_info** %7, align 8
  %11 = load %struct.page**, %struct.page*** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @release_pages(%struct.page** %11, i64 %12)
  %14 = load %struct.page**, %struct.page*** %5, align 8
  %15 = call i32 @kvfree(%struct.page** %14)
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.kvm_sev_info*, %struct.kvm_sev_info** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_sev_info, %struct.kvm_sev_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, %16
  store i64 %20, i64* %18, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @to_kvm_svm(%struct.kvm*) #1

declare dso_local i32 @release_pages(%struct.page**, i64) #1

declare dso_local i32 @kvfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
