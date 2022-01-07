; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_guest_state_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_guest_state_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@enable_unrestricted_guest = common dso_local global i64 0, align 8
@X86_EFLAGS_VM = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @guest_state_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_state_valid(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %4 = load i64, i64* @enable_unrestricted_guest, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %105

7:                                                ; preds = %1
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @is_protmode(%struct.kvm_vcpu* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 @vmx_get_rflags(%struct.kvm_vcpu* %12)
  %14 = load i32, i32* @X86_EFLAGS_VM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %11, %7
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = load i32, i32* @VCPU_SREG_CS, align 4
  %20 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %105

23:                                               ; preds = %17
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = load i32, i32* @VCPU_SREG_SS, align 4
  %26 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %105

29:                                               ; preds = %23
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = load i32, i32* @VCPU_SREG_DS, align 4
  %32 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %105

35:                                               ; preds = %29
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load i32, i32* @VCPU_SREG_ES, align 4
  %38 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %105

41:                                               ; preds = %35
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = load i32, i32* @VCPU_SREG_FS, align 4
  %44 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %105

47:                                               ; preds = %41
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = load i32, i32* @VCPU_SREG_GS, align 4
  %50 = call i32 @rmode_segment_valid(%struct.kvm_vcpu* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %105

53:                                               ; preds = %47
  br label %104

54:                                               ; preds = %11
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i32 @cs_ss_rpl_check(%struct.kvm_vcpu* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %105

59:                                               ; preds = %54
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = call i32 @code_segment_valid(%struct.kvm_vcpu* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %105

64:                                               ; preds = %59
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = call i32 @stack_segment_valid(%struct.kvm_vcpu* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %105

69:                                               ; preds = %64
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = load i32, i32* @VCPU_SREG_DS, align 4
  %72 = call i32 @data_segment_valid(%struct.kvm_vcpu* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %105

75:                                               ; preds = %69
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = load i32, i32* @VCPU_SREG_ES, align 4
  %78 = call i32 @data_segment_valid(%struct.kvm_vcpu* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %105

81:                                               ; preds = %75
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = load i32, i32* @VCPU_SREG_FS, align 4
  %84 = call i32 @data_segment_valid(%struct.kvm_vcpu* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %105

87:                                               ; preds = %81
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = load i32, i32* @VCPU_SREG_GS, align 4
  %90 = call i32 @data_segment_valid(%struct.kvm_vcpu* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %105

93:                                               ; preds = %87
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = call i32 @tr_valid(%struct.kvm_vcpu* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %105

98:                                               ; preds = %93
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = call i32 @ldtr_valid(%struct.kvm_vcpu* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %105

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %53
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %102, %97, %92, %86, %80, %74, %68, %63, %58, %52, %46, %40, %34, %28, %22, %6
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @is_protmode(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i32 @rmode_segment_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @cs_ss_rpl_check(%struct.kvm_vcpu*) #1

declare dso_local i32 @code_segment_valid(%struct.kvm_vcpu*) #1

declare dso_local i32 @stack_segment_valid(%struct.kvm_vcpu*) #1

declare dso_local i32 @data_segment_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @tr_valid(%struct.kvm_vcpu*) #1

declare dso_local i32 @ldtr_valid(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
