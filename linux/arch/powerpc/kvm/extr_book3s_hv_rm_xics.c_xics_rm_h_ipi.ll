; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_ipi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.TYPE_5__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i64, i32, i32, i32 }
%union.kvmppc_icp_state = type { i64 }

@H_TOO_HARD = common dso_local global i32 0, align 4
@H_PARAMETER = common dso_local global i32 0, align 4
@XICS_IPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xics_rm_h_ipi(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.kvmppc_icp_state, align 8
  %9 = alloca %union.kvmppc_icp_state, align 8
  %10 = alloca %struct.kvmppc_xics*, align 8
  %11 = alloca %struct.kvmppc_icp*, align 8
  %12 = alloca %struct.kvmppc_icp*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.kvmppc_icp_state, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %21, align 8
  store %struct.kvmppc_xics* %22, %struct.kvmppc_xics** %10, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %25, align 8
  store %struct.kvmppc_icp* %26, %struct.kvmppc_icp** %12, align 8
  %27 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %28 = icmp ne %struct.kvmppc_xics* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %31 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29, %3
  %35 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %35, i32* %4, align 4
  br label %138

36:                                               ; preds = %29
  %37 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %12, align 8
  %38 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %12, align 8
  store %struct.kvmppc_icp* %46, %struct.kvmppc_icp** %11, align 8
  br label %53

47:                                               ; preds = %36
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call %struct.kvmppc_icp* @kvmppc_xics_find_server(%struct.TYPE_6__* %50, i64 %51)
  store %struct.kvmppc_icp* %52, %struct.kvmppc_icp** %11, align 8
  br label %53

53:                                               ; preds = %47, %45
  %54 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  %55 = icmp ne %struct.kvmppc_icp* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @H_PARAMETER, align 4
  store i32 %57, i32* %4, align 4
  br label %138

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %98, %58
  %60 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  %61 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @READ_ONCE(i32 %62)
  %64 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %16, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = bitcast %union.kvmppc_icp_state* %9 to i8*
  %66 = bitcast %union.kvmppc_icp_state* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = bitcast %union.kvmppc_icp_state* %8 to i8*
  %68 = bitcast %union.kvmppc_icp_state* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  %69 = load i64, i64* %7, align 8
  %70 = bitcast %union.kvmppc_icp_state* %9 to i64*
  store i64 %69, i64* %70, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %71 = load i64, i64* %7, align 8
  %72 = bitcast %union.kvmppc_icp_state* %9 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %59
  %76 = load i64, i64* %7, align 8
  %77 = bitcast %union.kvmppc_icp_state* %9 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = icmp ule i64 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = bitcast %union.kvmppc_icp_state* %9 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %7, align 8
  %84 = bitcast %union.kvmppc_icp_state* %9 to i64*
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* @XICS_IPI, align 8
  %86 = bitcast %union.kvmppc_icp_state* %9 to i64*
  store i64 %85, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %75
  br label %88

88:                                               ; preds = %87, %59
  %89 = load i64, i64* %7, align 8
  %90 = bitcast %union.kvmppc_icp_state* %8 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = bitcast %union.kvmppc_icp_state* %9 to i32*
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %14, align 4
  %96 = bitcast %union.kvmppc_icp_state* %9 to i32*
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  %100 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %8, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %9, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @icp_rm_try_update(%struct.kvmppc_icp* %99, i64 %101, i64 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %59, label %107

107:                                              ; preds = %98
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %107
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @XICS_IPI, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %12, align 8
  %116 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %120 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @icp_rm_deliver_irq(%struct.kvmppc_xics* %119, %struct.kvmppc_icp* %120, i64 %121, i32 0)
  br label %123

123:                                              ; preds = %114, %110, %107
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %12, align 8
  %128 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %132 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  %133 = call i32 @icp_rm_check_resend(%struct.kvmppc_xics* %131, %struct.kvmppc_icp* %132)
  br label %134

134:                                              ; preds = %126, %123
  %135 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %10, align 8
  %136 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %12, align 8
  %137 = call i32 @check_too_hard(%struct.kvmppc_xics* %135, %struct.kvmppc_icp* %136)
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %56, %34
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.kvmppc_icp* @kvmppc_xics_find_server(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icp_rm_try_update(%struct.kvmppc_icp*, i64, i64) #1

declare dso_local i32 @icp_rm_deliver_irq(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i64, i32) #1

declare dso_local i32 @icp_rm_check_resend(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

declare dso_local i32 @check_too_hard(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
