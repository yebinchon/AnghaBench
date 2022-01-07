; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_set_icp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_set_icp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.TYPE_4__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i32, i32 }
%union.kvmppc_icp_state = type { i64 }
%struct.kvmppc_ics = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_CPPR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_XISR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_XISR_MASK = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_MFRR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_PPRI_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XICS_IPI = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xics_set_icp(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_icp*, align 8
  %7 = alloca %struct.kvmppc_xics*, align 8
  %8 = alloca %union.kvmppc_icp_state, align 8
  %9 = alloca %union.kvmppc_icp_state, align 8
  %10 = alloca %struct.kvmppc_ics*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.kvmppc_icp_state, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %20, align 8
  store %struct.kvmppc_icp* %21, %struct.kvmppc_icp** %6, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %26, align 8
  store %struct.kvmppc_xics* %27, %struct.kvmppc_xics** %7, align 8
  %28 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %29 = icmp ne %struct.kvmppc_icp* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %7, align 8
  %32 = icmp ne %struct.kvmppc_xics* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %152

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @KVM_REG_PPC_ICP_CPPR_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @KVM_REG_PPC_ICP_XISR_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @KVM_REG_PPC_ICP_XISR_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @KVM_REG_PPC_ICP_MFRR_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @KVM_REG_PPC_ICP_PPRI_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 255
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %152

59:                                               ; preds = %53
  br label %98

60:                                               ; preds = %36
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @XICS_IPI, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %152

75:                                               ; preds = %68
  br label %97

76:                                               ; preds = %60
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %152

87:                                               ; preds = %80
  %88 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %88, i32 %89, i32* %15)
  store %struct.kvmppc_ics* %90, %struct.kvmppc_ics** %10, align 8
  %91 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %92 = icmp ne %struct.kvmppc_ics* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %152

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %59
  %99 = bitcast %union.kvmppc_icp_state* %9 to i64*
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = bitcast %union.kvmppc_icp_state* %9 to i32*
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* %14, align 4
  %103 = bitcast %union.kvmppc_icp_state* %9 to i32*
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = bitcast %union.kvmppc_icp_state* %9 to i32*
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* %13, align 4
  %107 = bitcast %union.kvmppc_icp_state* %9 to i32*
  store i32 %106, i32* %107, align 8
  %108 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %109 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @BOOK3S_INTERRUPT_EXTERNAL, align 4
  %112 = call i32 @kvmppc_book3s_dequeue_irqprio(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %135, %98
  %114 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %115 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @READ_ONCE(i32 %116)
  %118 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %17, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = bitcast %union.kvmppc_icp_state* %8 to i8*
  %120 = bitcast %union.kvmppc_icp_state* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 8, i1 false)
  %121 = bitcast %union.kvmppc_icp_state* %9 to i32*
  %122 = load i32, i32* %121, align 8
  %123 = bitcast %union.kvmppc_icp_state* %8 to i32*
  %124 = load i32, i32* %123, align 8
  %125 = icmp sle i32 %122, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  store i32 0, i32* %16, align 4
  %127 = bitcast %union.kvmppc_icp_state* %8 to i32*
  %128 = load i32, i32* %127, align 8
  %129 = bitcast %union.kvmppc_icp_state* %9 to i32*
  store i32 %128, i32* %129, align 8
  br label %134

130:                                              ; preds = %113
  %131 = bitcast %union.kvmppc_icp_state* %8 to i32*
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %16, align 4
  %133 = bitcast %union.kvmppc_icp_state* %9 to i32*
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %137 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %8, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %9, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @icp_try_update(%struct.kvmppc_icp* %136, i64 %138, i64 %140, i32 0)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  br i1 %143, label %113, label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %7, align 8
  %149 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %150 = call i32 @icp_check_resend(%struct.kvmppc_xics* %148, %struct.kvmppc_icp* %149)
  br label %151

151:                                              ; preds = %147, %144
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %93, %84, %72, %56, %33
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i32, i32*) #1

declare dso_local i32 @kvmppc_book3s_dequeue_irqprio(i32, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icp_try_update(%struct.kvmppc_icp*, i64, i64, i32) #1

declare dso_local i32 @icp_check_resend(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
