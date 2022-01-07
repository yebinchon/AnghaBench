; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_icp_deliver_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_icp_deliver_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_icp = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ics_irq_state = type { i64, i32, i64, i32 }
%struct.kvmppc_ics = type { i32, i32, %struct.ics_irq_state* }

@.str = private unnamed_addr constant [41 x i8] c"icp_deliver_irq: IRQ 0x%06x not found !\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"icp_deliver_irq: IRQ 0x%06x server 0x%x not found !\0A\00", align 1
@MASKED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"irq %#x masked pending\0A\00", align 1
@XICS_IPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xics*, %struct.kvmppc_icp*, i64, i32)* @icp_deliver_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icp_deliver_irq(%struct.kvmppc_xics* %0, %struct.kvmppc_icp* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kvmppc_xics*, align 8
  %6 = alloca %struct.kvmppc_icp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ics_irq_state*, align 8
  %10 = alloca %struct.kvmppc_ics*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.kvmppc_xics* %0, %struct.kvmppc_xics** %5, align 8
  store %struct.kvmppc_icp* %1, %struct.kvmppc_icp** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %14

14:                                               ; preds = %124, %99, %4
  %15 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %15, i64 %16, i64* %12)
  store %struct.kvmppc_ics* %17, %struct.kvmppc_ics** %10, align 8
  %18 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %19 = icmp ne %struct.kvmppc_ics* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @XICS_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %140

23:                                               ; preds = %14
  %24 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %25 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %24, i32 0, i32 2
  %26 = load %struct.ics_irq_state*, %struct.ics_irq_state** %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %26, i64 %27
  store %struct.ics_irq_state* %28, %struct.ics_irq_state** %9, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %32 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %31, i32 0, i32 0
  %33 = call i32 @arch_spin_lock(i32* %32)
  %34 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %35 = icmp ne %struct.kvmppc_icp* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %23
  %37 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %38 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %41 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %36, %23
  %45 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %46 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %49 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.kvmppc_icp* @kvmppc_xics_find_server(i32 %47, i64 %50)
  store %struct.kvmppc_icp* %51, %struct.kvmppc_icp** %6, align 8
  %52 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %53 = icmp ne %struct.kvmppc_icp* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %57 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %58)
  br label %134

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %66 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %134

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %61
  %72 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %73 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %72, i32 0, i32 1
  store i32 0, i32* %73, align 8
  %74 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %75 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MASKED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @XICS_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %83 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %82, i32 0, i32 3
  store i32 1, i32* %83, align 8
  br label %134

84:                                               ; preds = %71
  %85 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %88 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @icp_try_to_deliver(%struct.kvmppc_icp* %85, i64 %86, i64 %89, i64* %11)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %84
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* @XICS_IPI, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %101 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %100, i32 0, i32 0
  %102 = call i32 @arch_spin_unlock(i32* %101)
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @local_irq_restore(i64 %103)
  %105 = load i64, i64* %11, align 8
  store i64 %105, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

106:                                              ; preds = %95, %92
  br label %133

107:                                              ; preds = %84
  %108 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %109 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  %110 = call i32 (...) @smp_wmb()
  %111 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %112 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %115 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @set_bit(i32 %113, i32 %116)
  %118 = call i32 (...) @smp_mb()
  %119 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %120 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %107
  %125 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %126 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %125, i32 0, i32 1
  store i32 0, i32* %126, align 8
  %127 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %128 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %127, i32 0, i32 0
  %129 = call i32 @arch_spin_unlock(i32* %128)
  %130 = load i64, i64* %13, align 8
  %131 = call i32 @local_irq_restore(i64 %130)
  store i32 0, i32* %8, align 4
  br label %14

132:                                              ; preds = %107
  br label %133

133:                                              ; preds = %132, %106
  br label %134

134:                                              ; preds = %133, %79, %69, %54
  %135 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %136 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %135, i32 0, i32 0
  %137 = call i32 @arch_spin_unlock(i32* %136)
  %138 = load i64, i64* %13, align 8
  %139 = call i32 @local_irq_restore(i64 %138)
  br label %140

140:                                              ; preds = %134, %20
  ret void
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i64, i64*) #1

declare dso_local i32 @XICS_DBG(i8*, i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local %struct.kvmppc_icp* @kvmppc_xics_find_server(i32, i64) #1

declare dso_local i32 @pr_warn(i8*, i64, i64) #1

declare dso_local i64 @icp_try_to_deliver(%struct.kvmppc_icp*, i64, i64, i64*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
