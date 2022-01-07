; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_init_rmode_identity_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_init_rmode_identity_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, i32 }
%struct.kvm_vmx = type { i32, i32 }

@VMX_EPT_IDENTITY_PAGETABLE_ADDR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IDENTITY_PAGETABLE_PRIVATE_MEMSLOT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PT32_ENT_PER_PAGE = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_RW = common dso_local global i32 0, align 4
@_PAGE_USER = common dso_local global i32 0, align 4
@_PAGE_ACCESSED = common dso_local global i32 0, align 4
@_PAGE_DIRTY = common dso_local global i32 0, align 4
@_PAGE_PSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @init_rmode_identity_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rmode_identity_map(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.kvm_vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %9 = load %struct.kvm*, %struct.kvm** %2, align 8
  %10 = call %struct.kvm_vmx* @to_kvm_vmx(%struct.kvm* %9)
  store %struct.kvm_vmx* %10, %struct.kvm_vmx** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.kvm*, %struct.kvm** %2, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.kvm_vmx*, %struct.kvm_vmx** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vmx, %struct.kvm_vmx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.kvm_vmx*, %struct.kvm_vmx** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vmx, %struct.kvm_vmx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @VMX_EPT_IDENTITY_PAGETABLE_ADDR, align 4
  %27 = load %struct.kvm_vmx*, %struct.kvm_vmx** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vmx, %struct.kvm_vmx* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.kvm_vmx*, %struct.kvm_vmx** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vmx, %struct.kvm_vmx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.kvm*, %struct.kvm** %2, align 8
  %36 = load i32, i32* @IDENTITY_PAGETABLE_PRIVATE_MEMSLOT, align 4
  %37 = load %struct.kvm_vmx*, %struct.kvm_vmx** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vmx, %struct.kvm_vmx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @__x86_set_memory_region(%struct.kvm* %35, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %98

45:                                               ; preds = %29
  %46 = load %struct.kvm*, %struct.kvm** %2, align 8
  %47 = getelementptr inbounds %struct.kvm, %struct.kvm* %46, i32 0, i32 1
  %48 = call i32 @srcu_read_lock(i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.kvm*, %struct.kvm** %2, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @kvm_clear_guest_page(%struct.kvm* %49, i32 %50, i32 0, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %93

56:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %87, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PT32_ENT_PER_PAGE, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = shl i32 %62, 22
  %64 = load i32, i32* @_PAGE_PRESENT, align 4
  %65 = load i32, i32* @_PAGE_RW, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @_PAGE_USER, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @_PAGE_ACCESSED, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @_PAGE_DIRTY, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @_PAGE_PSE, align 4
  %74 = or i32 %72, %73
  %75 = add nsw i32 %63, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.kvm*, %struct.kvm** %2, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @kvm_write_guest_page(%struct.kvm* %76, i32 %77, i32* %8, i32 %81, i32 4)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %61
  br label %93

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %57

90:                                               ; preds = %57
  %91 = load %struct.kvm_vmx*, %struct.kvm_vmx** %3, align 8
  %92 = getelementptr inbounds %struct.kvm_vmx, %struct.kvm_vmx* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %85, %55
  %94 = load %struct.kvm*, %struct.kvm** %2, align 8
  %95 = getelementptr inbounds %struct.kvm, %struct.kvm* %94, i32 0, i32 1
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @srcu_read_unlock(i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %44, %19
  %99 = load %struct.kvm*, %struct.kvm** %2, align 8
  %100 = getelementptr inbounds %struct.kvm, %struct.kvm* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.kvm_vmx* @to_kvm_vmx(%struct.kvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__x86_set_memory_region(%struct.kvm*, i32, i32, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_clear_guest_page(%struct.kvm*, i32, i32, i32) #1

declare dso_local i32 @kvm_write_guest_page(%struct.kvm*, i32, i32*, i32, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
