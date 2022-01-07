; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_read_id_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_read_id_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_desc = type { i64, i64, i64, i64, i64 }

@SYS_ID_AA64PFR0_EL1 = common dso_local global i64 0, align 8
@ID_AA64PFR0_SVE_SHIFT = common dso_local global i32 0, align 4
@SYS_ID_AA64ISAR1_EL1 = common dso_local global i64 0, align 8
@ID_AA64ISAR1_APA_SHIFT = common dso_local global i32 0, align 4
@ID_AA64ISAR1_API_SHIFT = common dso_local global i32 0, align 4
@ID_AA64ISAR1_GPA_SHIFT = common dso_local global i32 0, align 4
@ID_AA64ISAR1_GPI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_desc*, i32)* @read_id_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_id_reg(%struct.kvm_vcpu* %0, %struct.sys_reg_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_desc* %1, %struct.sys_reg_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %10 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %13 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %16 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %19 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sys_reg_desc*, %struct.sys_reg_desc** %5, align 8
  %22 = getelementptr inbounds %struct.sys_reg_desc, %struct.sys_reg_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @sys_reg(i64 %11, i64 %14, i64 %17, i64 %20, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %31

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @read_sanitised_ftr_reg(i64 %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 0, %27 ], [ %30, %28 ]
  store i32 %32, i32* %8, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @SYS_ID_AA64PFR0_EL1, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = call i32 @vcpu_has_sve(%struct.kvm_vcpu* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ID_AA64PFR0_SVE_SHIFT, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 15, %42
  %44 = xor i64 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %79

49:                                               ; preds = %36, %31
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @SYS_ID_AA64ISAR1_EL1, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = call i32 @vcpu_has_ptrauth(%struct.kvm_vcpu* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ID_AA64ISAR1_APA_SHIFT, align 4
  %59 = zext i32 %58 to i64
  %60 = shl i64 15, %59
  %61 = load i32, i32* @ID_AA64ISAR1_API_SHIFT, align 4
  %62 = zext i32 %61 to i64
  %63 = shl i64 15, %62
  %64 = or i64 %60, %63
  %65 = load i32, i32* @ID_AA64ISAR1_GPA_SHIFT, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 15, %66
  %68 = or i64 %64, %67
  %69 = load i32, i32* @ID_AA64ISAR1_GPI_SHIFT, align 4
  %70 = zext i32 %69 to i64
  %71 = shl i64 15, %70
  %72 = or i64 %68, %71
  %73 = xor i64 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = and i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %57, %53, %49
  br label %79

79:                                               ; preds = %78, %40
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i64 @sys_reg(i64, i64, i64, i64, i64) #1

declare dso_local i32 @read_sanitised_ftr_reg(i64) #1

declare dso_local i32 @vcpu_has_sve(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_has_ptrauth(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
