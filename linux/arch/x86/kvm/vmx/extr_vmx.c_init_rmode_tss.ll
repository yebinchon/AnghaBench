; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_init_rmode_tss.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_init_rmode_tss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TSS_BASE_SIZE = common dso_local global i64 0, align 8
@TSS_REDIRECTION_SIZE = common dso_local global i64 0, align 8
@TSS_IOPB_BASE_OFFSET = common dso_local global i32 0, align 4
@RMODE_TSS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @init_rmode_tss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rmode_tss(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.kvm*, %struct.kvm** %2, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = call i32 @srcu_read_lock(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.kvm*, %struct.kvm** %2, align 8
  %11 = call %struct.TYPE_2__* @to_kvm_vmx(%struct.kvm* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.kvm*, %struct.kvm** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @kvm_clear_guest_page(%struct.kvm* %16, i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %61

23:                                               ; preds = %1
  %24 = load i64, i64* @TSS_BASE_SIZE, align 8
  %25 = load i64, i64* @TSS_REDIRECTION_SIZE, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %4, align 8
  %27 = load %struct.kvm*, %struct.kvm** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @TSS_IOPB_BASE_OFFSET, align 4
  %31 = call i32 @kvm_write_guest_page(%struct.kvm* %27, i32 %28, i64* %4, i32 %30, i32 8)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %61

35:                                               ; preds = %23
  %36 = load %struct.kvm*, %struct.kvm** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = call i32 @kvm_clear_guest_page(%struct.kvm* %36, i32 %37, i32 0, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %61

44:                                               ; preds = %35
  %45 = load %struct.kvm*, %struct.kvm** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @kvm_clear_guest_page(%struct.kvm* %45, i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %61

52:                                               ; preds = %44
  store i64 -1, i64* %4, align 8
  %53 = load %struct.kvm*, %struct.kvm** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @RMODE_TSS_SIZE, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 2, %56
  %58 = sub nsw i32 %55, %57
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @kvm_write_guest_page(%struct.kvm* %53, i32 %54, i64* %4, i32 %59, i32 4)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %52, %51, %43, %34, %22
  %62 = load %struct.kvm*, %struct.kvm** %2, align 8
  %63 = getelementptr inbounds %struct.kvm, %struct.kvm* %62, i32 0, i32 0
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @srcu_read_unlock(i32* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @to_kvm_vmx(%struct.kvm*) #1

declare dso_local i32 @kvm_clear_guest_page(%struct.kvm*, i32, i32, i32) #1

declare dso_local i32 @kvm_write_guest_page(%struct.kvm*, i32, i64*, i32, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
