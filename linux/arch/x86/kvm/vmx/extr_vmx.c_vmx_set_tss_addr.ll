; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_tss_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_tss_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@enable_unrestricted_guest = common dso_local global i64 0, align 8
@TSS_PRIVATE_MEMSLOT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32)* @vmx_set_tss_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_set_tss_addr(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @enable_unrestricted_guest, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = load i32, i32* @TSS_PRIVATE_MEMSLOT, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = mul nsw i32 %14, 3
  %16 = call i32 @x86_set_memory_region(%struct.kvm* %11, i32 %12, i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %10
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.kvm*, %struct.kvm** %4, align 8
  %24 = call %struct.TYPE_2__* @to_kvm_vmx(%struct.kvm* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.kvm*, %struct.kvm** %4, align 8
  %27 = call i32 @init_rmode_tss(%struct.kvm* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %19, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @x86_set_memory_region(%struct.kvm*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_kvm_vmx(%struct.kvm*) #1

declare dso_local i32 @init_rmode_tss(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
