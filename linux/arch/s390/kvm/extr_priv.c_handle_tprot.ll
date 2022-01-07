; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_tprot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_tprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PSW_MASK_DAT = common dso_local global i32 0, align 4
@GACC_STORE = common dso_local global i32 0, align 4
@PGM_PROTECTION = common dso_local global i32 0, align 4
@GACC_FETCH = common dso_local global i32 0, align 4
@PGM_ADDRESSING = common dso_local global i32 0, align 4
@PGM_TRANSLATION_SPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_tprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tprot(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %30 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %28, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %131

31:                                               ; preds = %1
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = call i32 @kvm_s390_get_base_disp_sse(%struct.kvm_vcpu* %32, i32* %4, i32* %5, i32* %11, i32* null)
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 240
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %131

40:                                               ; preds = %31
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PSW_MASK_DAT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = call i32 @ipte_lock(%struct.kvm_vcpu* %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @GACC_STORE, align 4
  %59 = call i32 @guest_translate_address(%struct.kvm_vcpu* %55, i32 %56, i32 %57, i64* %7, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PGM_PROTECTION, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @GACC_FETCH, align 4
  %68 = call i32 @guest_translate_address(%struct.kvm_vcpu* %64, i32 %65, i32 %66, i64* %7, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %54
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @PGM_ADDRESSING, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %72
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %91

84:                                               ; preds = %76
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %88, i32 3)
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %80
  br label %115

92:                                               ; preds = %69
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @gpa_to_gfn(i64 %96)
  %98 = call i64 @gfn_to_hva_prot(i32 %95, i32 %97, i32* %10)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @kvm_is_error_hva(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = load i32, i32* @PGM_ADDRESSING, align 4
  %105 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  br label %114

106:                                              ; preds = %92
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %102
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PSW_MASK_DAT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %128 = call i32 @ipte_unlock(%struct.kvm_vcpu* %127)
  br label %129

129:                                              ; preds = %126, %115
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %37, %27
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_get_base_disp_sse(%struct.kvm_vcpu*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ipte_lock(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_translate_address(%struct.kvm_vcpu*, i32, i32, i64*, i32) #1

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @gfn_to_hva_prot(i32, i32, i32*) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @ipte_unlock(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
