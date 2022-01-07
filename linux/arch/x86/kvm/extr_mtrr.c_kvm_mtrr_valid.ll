; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_kvm_mtrr_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_kvm_mtrr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@MSR_IA32_CR_PAT = common dso_local global i32 0, align 4
@MSR_MTRRdefType = common dso_local global i32 0, align 4
@MSR_MTRRfix64K_00000 = common dso_local global i32 0, align 4
@MSR_MTRRfix4K_F8000 = common dso_local global i32 0, align 4
@KVM_NR_VAR_MTRR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mtrr_valid(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @msr_mtrr_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @kvm_pat_valid(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %104

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MSR_MTRRdefType, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -3328
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %104

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @valid_mtrr_type(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %104

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MSR_MTRRfix64K_00000, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @MSR_MTRRfix4K_F8000, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %48, 8
  %50 = ashr i32 %47, %49
  %51 = and i32 %50, 255
  %52 = call i32 @valid_mtrr_type(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %104

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %43

59:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %104

60:                                               ; preds = %38, %34
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %63, 512
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @KVM_NR_VAR_MTRR, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 512, %68
  %70 = icmp slt i32 %66, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN_ON(i32 %74)
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %77 = call i64 @cpuid_maxphyaddr(%struct.kvm_vcpu* %76)
  %78 = shl i64 -1, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 255
  %86 = call i32 @valid_mtrr_type(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %104

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, 3840
  store i32 %91, i32* %9, align 4
  br label %95

92:                                               ; preds = %71
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, 2047
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %102 = call i32 @kvm_inject_gp(%struct.kvm_vcpu* %101, i32 0)
  store i32 0, i32* %4, align 4
  br label %104

103:                                              ; preds = %95
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %100, %88, %59, %54, %30, %29, %18, %13
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @msr_mtrr_valid(i32) #1

declare dso_local i32 @kvm_pat_valid(i32) #1

declare dso_local i32 @valid_mtrr_type(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @cpuid_maxphyaddr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_inject_gp(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
