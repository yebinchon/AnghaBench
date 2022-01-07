; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_update_exception_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_update_exception_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@PF_VECTOR = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@MC_VECTOR = common dso_local global i32 0, align 4
@DB_VECTOR = common dso_local global i32 0, align 4
@AC_VECTOR = common dso_local global i32 0, align 4
@enable_vmware_backdoor = common dso_local global i64 0, align 8
@GP_VECTOR = common dso_local global i32 0, align 4
@KVM_GUESTDBG_ENABLE = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_SW_BP = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@EXCEPTION_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_exception_bitmap(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load i32, i32* @PF_VECTOR, align 4
  %5 = shl i32 1, %4
  %6 = load i32, i32* @UD_VECTOR, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = load i32, i32* @MC_VECTOR, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = load i32, i32* @DB_VECTOR, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load i32, i32* @AC_VECTOR, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  store i32 %17, i32* %3, align 4
  %18 = load i64, i64* @enable_vmware_backdoor, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @GP_VECTOR, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %30 = load i32, i32* @KVM_GUESTDBG_USE_SW_BP, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %34 = load i32, i32* @KVM_GUESTDBG_USE_SW_BP, align 4
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i32, i32* @BP_VECTOR, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %25
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = call %struct.TYPE_5__* @to_vmx(%struct.kvm_vcpu* %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i64, i64* @enable_ept, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @PF_VECTOR, align 4
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %61 = call i64 @is_guest_mode(%struct.kvm_vcpu* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %65 = call %struct.TYPE_6__* @get_vmcs12(%struct.kvm_vcpu* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %59
  %71 = load i32, i32* @EXCEPTION_BITMAP, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @vmcs_write32(i32 %71, i32 %72)
  ret void
}

declare dso_local %struct.TYPE_5__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_6__* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
