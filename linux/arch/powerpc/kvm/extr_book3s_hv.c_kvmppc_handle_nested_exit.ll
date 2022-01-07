; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_handle_nested_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_handle_nested_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MSR_HV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"KVM trap in HV mode while nested!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"trap=0x%x | pc=0x%lx | msr=0x%llx\0A\00", align 1
@RESUME_HOST = common dso_local global i32 0, align 4
@RESUME_GUEST = common dso_local global i32 0, align 4
@DSISR_SRR1_MATCH_64S = common dso_local global i32 0, align 4
@HSRR1_HISI_WRITE = common dso_local global i32 0, align 4
@DSISR_ISSTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_run*, %struct.kvm_vcpu*)* @kvmppc_handle_nested_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_handle_nested_exit(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MSR_HV, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %28 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %27)
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28, i32 %33)
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %36 = call i32 @kvmppc_dump_regs(%struct.kvm_vcpu* %35)
  %37 = load i32, i32* @RESUME_HOST, align 4
  store i32 %37, i32* %3, align 4
  br label %145

38:                                               ; preds = %2
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %141 [
    i32 137, label %43
    i32 139, label %50
    i32 133, label %57
    i32 131, label %57
    i32 138, label %64
    i32 129, label %64
    i32 128, label %64
    i32 130, label %66
    i32 134, label %72
    i32 132, label %87
    i32 136, label %130
  ]

43:                                               ; preds = %38
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %49, i32* %6, align 4
  br label %143

50:                                               ; preds = %38
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @RESUME_HOST, align 4
  store i32 %56, i32* %6, align 4
  br label %143

57:                                               ; preds = %38, %38
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %63, i32* %6, align 4
  br label %143

64:                                               ; preds = %38, %38, %38
  %65 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %65, i32* %6, align 4
  br label %143

66:                                               ; preds = %38
  %67 = load i32, i32* @RESUME_HOST, align 4
  store i32 %67, i32* %6, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = call i32 @machine_check_print_event_info(i32* %70, i32 0, i32 1)
  br label %143

72:                                               ; preds = %38
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i32 @srcu_read_lock(i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %80 = call i32 @kvmhv_nested_page_fault(%struct.kvm_run* %78, %struct.kvm_vcpu* %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @srcu_read_unlock(i32* %84, i32 %85)
  br label %143

87:                                               ; preds = %38
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %89 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %88)
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %94 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %93)
  %95 = load i32, i32* @DSISR_SRR1_MATCH_64S, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %101 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @HSRR1_HISI_WRITE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %87
  %109 = load i32, i32* @DSISR_ISSTORE, align 4
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %108, %87
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = call i32 @srcu_read_lock(i32* %119)
  store i32 %120, i32* %7, align 4
  %121 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %123 = call i32 @kvmhv_nested_page_fault(%struct.kvm_run* %121, %struct.kvm_vcpu* %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %125 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @srcu_read_unlock(i32* %127, i32 %128)
  br label %143

130:                                              ; preds = %38
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %134, i32* %6, align 4
  %135 = call i32 (...) @xics_on_xive()
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %139 = call i32 @kvmppc_xics_rm_complete(%struct.kvm_vcpu* %138, i32 0)
  br label %140

140:                                              ; preds = %137, %130
  br label %143

141:                                              ; preds = %38
  %142 = load i32, i32* @RESUME_HOST, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %140, %115, %72, %66, %64, %57, %50, %43
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %21
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @pr_emerg(i8*, ...) #1

declare dso_local i32 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_dump_regs(%struct.kvm_vcpu*) #1

declare dso_local i32 @machine_check_print_event_info(i32*, i32, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvmhv_nested_page_fault(%struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @xics_on_xive(...) #1

declare dso_local i32 @kvmppc_xics_rm_complete(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
