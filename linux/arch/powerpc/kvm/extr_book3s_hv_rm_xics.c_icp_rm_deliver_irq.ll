; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_deliver_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_deliver_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xics = type { i32, i32, i32 }
%struct.kvmppc_icp = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ics_irq_state = type { i64, i32, i64, i32 }
%struct.kvmppc_ics = type { i32, i32, %struct.ics_irq_state* }

@MASKED = common dso_local global i64 0, align 8
@XICS_IPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xics*, %struct.kvmppc_icp*, i64, i32)* @icp_rm_deliver_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icp_rm_deliver_irq(%struct.kvmppc_xics* %0, %struct.kvmppc_icp* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kvmppc_xics*, align 8
  %6 = alloca %struct.kvmppc_icp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ics_irq_state*, align 8
  %10 = alloca %struct.kvmppc_ics*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvmppc_xics* %0, %struct.kvmppc_xics** %5, align 8
  store %struct.kvmppc_icp* %1, %struct.kvmppc_icp** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %13

13:                                               ; preds = %122, %95, %4
  %14 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %14, i64 %15, i64* %12)
  store %struct.kvmppc_ics* %16, %struct.kvmppc_ics** %10, align 8
  %17 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %18 = icmp ne %struct.kvmppc_ics* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %21 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %134

24:                                               ; preds = %13
  %25 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %26 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %25, i32 0, i32 2
  %27 = load %struct.ics_irq_state*, %struct.ics_irq_state** %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %27, i64 %28
  store %struct.ics_irq_state* %29, %struct.ics_irq_state** %9, align 8
  %30 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %31 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %30, i32 0, i32 0
  %32 = call i32 @arch_spin_lock(i32* %31)
  %33 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %34 = icmp ne %struct.kvmppc_icp* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %37 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %40 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %35, %24
  %44 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %45 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %48 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.kvmppc_icp* @kvmppc_xics_find_server(i32 %46, i64 %49)
  store %struct.kvmppc_icp* %50, %struct.kvmppc_icp** %6, align 8
  %51 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %52 = icmp ne %struct.kvmppc_icp* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %55 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %130

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %64 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %130

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %71 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  %72 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %73 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MASKED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %79 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %78, i32 0, i32 3
  store i32 1, i32* %79, align 8
  br label %130

80:                                               ; preds = %69
  %81 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %84 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @icp_rm_try_to_deliver(%struct.kvmppc_icp* %81, i64 %82, i64 %85, i64* %11)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %80
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @XICS_IPI, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %97 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %96, i32 0, i32 0
  %98 = call i32 @arch_spin_unlock(i32* %97)
  %99 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %100 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load i64, i64* %11, align 8
  store i64 %103, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

104:                                              ; preds = %91, %88
  br label %129

105:                                              ; preds = %80
  %106 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %107 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  %108 = call i32 (...) @smp_wmb()
  %109 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %110 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %113 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @set_bit(i32 %111, i32 %114)
  %116 = call i32 (...) @smp_mb()
  %117 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %118 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %105
  %123 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %124 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %123, i32 0, i32 1
  store i32 0, i32* %124, align 8
  %125 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %126 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %125, i32 0, i32 0
  %127 = call i32 @arch_spin_unlock(i32* %126)
  store i32 0, i32* %8, align 4
  br label %13

128:                                              ; preds = %105
  br label %129

129:                                              ; preds = %128, %104
  br label %130

130:                                              ; preds = %129, %77, %67, %53
  %131 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %10, align 8
  %132 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %131, i32 0, i32 0
  %133 = call i32 @arch_spin_unlock(i32* %132)
  br label %134

134:                                              ; preds = %130, %19
  ret void
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i64, i64*) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local %struct.kvmppc_icp* @kvmppc_xics_find_server(i32, i64) #1

declare dso_local i64 @icp_rm_try_to_deliver(%struct.kvmppc_icp*, i64, i64, i64*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
