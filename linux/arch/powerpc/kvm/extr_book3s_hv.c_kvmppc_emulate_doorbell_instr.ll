; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_emulate_doorbell_instr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_emulate_doorbell_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_6__, %struct.kvm* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INST_GENERIC = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i64 0, align 8
@RESUME_GUEST = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@PPC_DBELL_SERVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvmppc_emulate_doorbell_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_emulate_doorbell_instr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 2
  %12 = load %struct.kvm*, %struct.kvm** %11, align 8
  store %struct.kvm* %12, %struct.kvm** %8, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = load i32, i32* @INST_GENERIC, align 4
  %15 = call i64 @kvmppc_get_last_inst(%struct.kvm_vcpu* %13, i32 %14, i64* %4)
  %16 = load i64, i64* @EMULATE_DONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %19, i32* %2, align 4
  br label %134

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @get_op(i64 %21)
  %23 = icmp ne i32 %22, 31
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %134

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @get_rb(i64 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.kvm*, %struct.kvm** %8, align 8
  %33 = getelementptr inbounds %struct.kvm, %struct.kvm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %31, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @get_xop(i64 %39)
  switch i32 %40, label %125 [
    i32 130, label %41
    i32 131, label %90
    i32 132, label %109
  ]

41:                                               ; preds = %26
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %42, i64 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = lshr i64 %45, 27
  %47 = and i64 %46, 15
  %48 = load i64, i64* @PPC_DBELL_SERVER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %127

51:                                               ; preds = %41
  %52 = load i64, i64* %7, align 8
  %53 = and i64 %52, 63
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.kvm*, %struct.kvm** %8, align 8
  %56 = getelementptr inbounds %struct.kvm, %struct.kvm* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp uge i64 %54, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %127

62:                                               ; preds = %51
  %63 = load %struct.kvm*, %struct.kvm** %8, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %6, align 8
  %69 = sub i64 %67, %68
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.kvm* %63, i32 %72)
  store %struct.kvm_vcpu* %73, %struct.kvm_vcpu** %9, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %75 = icmp ne %struct.kvm_vcpu* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  br label %127

77:                                               ; preds = %62
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %88 = call i32 @kvmppc_fast_vcpu_kick_hv(%struct.kvm_vcpu* %87)
  br label %89

89:                                               ; preds = %83, %77
  br label %127

90:                                               ; preds = %26
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @kvmppc_get_gpr(%struct.kvm_vcpu* %91, i64 %92)
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %7, align 8
  %95 = lshr i64 %94, 27
  %96 = and i64 %95, 15
  %97 = load i64, i64* @PPC_DBELL_SERVER, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %127

100:                                              ; preds = %90
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 4
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  br label %127

109:                                              ; preds = %26
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @get_sprn(i64 %110)
  switch i32 %111, label %117 [
    i32 128, label %112
    i32 129, label %114
  ]

112:                                              ; preds = %109
  %113 = load i64, i64* %6, align 8
  store i64 %113, i64* %7, align 8
  br label %119

114:                                              ; preds = %109
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = call i64 @kvmppc_read_dpdes(%struct.kvm_vcpu* %115)
  store i64 %116, i64* %7, align 8
  br label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %118, i32* %2, align 4
  br label %134

119:                                              ; preds = %114, %112
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @get_rt(i64 %121)
  %123 = load i64, i64* %7, align 8
  %124 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %120, i32 %122, i64 %123)
  br label %127

125:                                              ; preds = %26
  %126 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %126, i32* %2, align 4
  br label %134

127:                                              ; preds = %119, %100, %99, %89, %76, %61, %50
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %130 = call i64 @kvmppc_get_pc(%struct.kvm_vcpu* %129)
  %131 = add nsw i64 %130, 4
  %132 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %128, i64 %131)
  %133 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %127, %125, %117, %24, %18
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @kvmppc_get_last_inst(%struct.kvm_vcpu*, i32, i64*) #1

declare dso_local i32 @get_op(i64) #1

declare dso_local i64 @get_rb(i64) #1

declare dso_local i32 @get_xop(i64) #1

declare dso_local i64 @kvmppc_get_gpr(%struct.kvm_vcpu*, i64) #1

declare dso_local %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.kvm*, i32) #1

declare dso_local i32 @kvmppc_fast_vcpu_kick_hv(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_sprn(i64) #1

declare dso_local i64 @kvmppc_read_dpdes(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @get_rt(i64) #1

declare dso_local i32 @kvmppc_set_pc(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
