; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_flush_pml_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_flush_pml_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32 }

@GUEST_PML_INDEX = common dso_local global i32 0, align 4
@PML_ENTITY_NUM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_flush_pml_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_flush_pml_buffer(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %3, align 8
  %9 = load i32, i32* @GUEST_PML_INDEX, align 4
  %10 = call i32 @vmcs_read16(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PML_ENTITY_NUM, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %57

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PML_ENTITY_NUM, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @page_address(i32 %27)
  store i32* %28, i32** %4, align 8
  br label %29

29:                                               ; preds = %49, %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PML_ENTITY_NUM, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = call i32 @WARN_ON(i32 %42)
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = call i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu* %44, i32 %47)
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load i32, i32* @GUEST_PML_INDEX, align 4
  %54 = load i32, i32* @PML_ENTITY_NUM, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @vmcs_write16(i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %52, %15
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_read16(i32) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
