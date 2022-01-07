; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_check_too_hard.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_check_too_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xics = type { i64 }
%struct.kvmppc_icp = type { i64 }

@H_TOO_HARD = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_xics*, %struct.kvmppc_icp*)* @check_too_hard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_too_hard(%struct.kvmppc_xics* %0, %struct.kvmppc_icp* %1) #0 {
  %3 = alloca %struct.kvmppc_xics*, align 8
  %4 = alloca %struct.kvmppc_icp*, align 8
  store %struct.kvmppc_xics* %0, %struct.kvmppc_xics** %3, align 8
  store %struct.kvmppc_icp* %1, %struct.kvmppc_icp** %4, align 8
  %5 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %3, align 8
  %6 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %4, align 8
  %11 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @H_TOO_HARD, align 4
  br label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @H_SUCCESS, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
