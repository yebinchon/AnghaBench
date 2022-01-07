; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_setup_partition_table.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_setup_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i32 }

@SLB_VSID_L = common dso_local global i32 0, align 4
@SLB_VSID_LP = common dso_local global i32 0, align 4
@PATB_HR = common dso_local global i64 0, align 8
@RADIX_PGD_INDEX_SIZE = common dso_local global i64 0, align 8
@PATB_GR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_setup_partition_table(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = call i32 @kvm_is_radix(%struct.kvm* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = load %struct.kvm*, %struct.kvm** %2, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SLB_VSID_L, align 4
  %14 = and i32 %12, %13
  %15 = ashr i32 %14, 1
  %16 = load %struct.kvm*, %struct.kvm** %2, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SLB_VSID_LP, align 4
  %21 = and i32 %19, %20
  %22 = shl i32 %21, 1
  %23 = or i32 %15, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load %struct.kvm*, %struct.kvm** %2, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load %struct.kvm*, %struct.kvm** %2, align 8
  %32 = getelementptr inbounds %struct.kvm, %struct.kvm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %4, align 8
  br label %53

35:                                               ; preds = %1
  %36 = load i64, i64* @PATB_HR, align 8
  %37 = call i64 (...) @radix__get_tree_size()
  %38 = or i64 %36, %37
  %39 = load %struct.kvm*, %struct.kvm** %2, align 8
  %40 = getelementptr inbounds %struct.kvm, %struct.kvm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @__pa(i32 %42)
  %44 = or i64 %38, %43
  %45 = load i64, i64* @RADIX_PGD_INDEX_SIZE, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* @PATB_GR, align 8
  %48 = load %struct.kvm*, %struct.kvm** %2, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %47, %51
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %35, %8
  %54 = load %struct.kvm*, %struct.kvm** %2, align 8
  %55 = getelementptr inbounds %struct.kvm, %struct.kvm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @kvmhv_set_ptbl_entry(i32 %57, i64 %58, i64 %59)
  ret void
}

declare dso_local i32 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i64 @radix__get_tree_size(...) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @kvmhv_set_ptbl_entry(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
