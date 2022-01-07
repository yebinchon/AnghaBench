; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_update_pkru_bitmask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_update_pkru_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32, i32 }

@X86_CR4_PKE = common dso_local global i32 0, align 4
@PFERR_FETCH_MASK = common dso_local global i32 0, align 4
@PFERR_USER_MASK = common dso_local global i32 0, align 4
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@PFERR_RSVD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu*, i32)* @update_pkru_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pkru_bitmask(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %107

22:                                               ; preds = %3
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = load i32, i32* @X86_CR4_PKE, align 4
  %25 = call i32 @kvm_read_cr4_bits(%struct.kvm_vcpu* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = call i32 @is_long_mode(%struct.kvm_vcpu* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %107

34:                                               ; preds = %27
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = call i32 @is_write_protection(%struct.kvm_vcpu* %35)
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %104, %34
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = icmp ult i32 %38, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PFERR_USER_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @PFERR_RSVD_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %61, %44
  %65 = phi i1 [ false, %44 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ true, %72 ], [ %77, %75 ]
  br label %80

80:                                               ; preds = %78, %69, %64
  %81 = phi i1 [ false, %69 ], [ false, %64 ], [ %79, %78 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = shl i32 %92, 1
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 3
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 %97, %98
  %100 = load %struct.kvm_mmu*, %struct.kvm_mmu** %5, align 8
  %101 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %37

107:                                              ; preds = %19, %31, %37
  ret void
}

declare dso_local i32 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_write_protection(%struct.kvm_vcpu*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
