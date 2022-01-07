; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_post_save_scan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_xive_post_save_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { i64, i64, %struct.kvmppc_xive_src_block** }
%struct.kvmppc_xive_src_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KVMPPC_XICS_IRQ_PER_ICS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xive*)* @xive_post_save_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_post_save_scan(%struct.kvmppc_xive* %0) #0 {
  %2 = alloca %struct.kvmppc_xive*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvmppc_xive_src_block*, align 8
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %38, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %2, align 8
  %9 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ule i64 %7, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %6
  %13 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %2, align 8
  %14 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %13, i32 0, i32 2
  %15 = load %struct.kvmppc_xive_src_block**, %struct.kvmppc_xive_src_block*** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %15, i64 %16
  %18 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %17, align 8
  store %struct.kvmppc_xive_src_block* %18, %struct.kvmppc_xive_src_block** %5, align 8
  %19 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %20 = icmp ne %struct.kvmppc_xive_src_block* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %38

22:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @KVMPPC_XICS_IRQ_PER_ICS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %5, align 8
  %29 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %23

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %6

41:                                               ; preds = %6
  %42 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %2, align 8
  %43 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
