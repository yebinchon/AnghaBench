; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_add_seg_page_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_add_seg_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ppc_one_seg_page_size = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_ppc_one_seg_page_size**, i32, i32)* @kvmppc_add_seg_page_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_add_seg_page_size(%struct.kvm_ppc_one_seg_page_size** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_ppc_one_seg_page_size**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_ppc_one_seg_page_size** %0, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.kvm_ppc_one_seg_page_size**, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  %10 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %9, align 8
  %11 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.kvm_ppc_one_seg_page_size**, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  %14 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %13, align 8
  %15 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.kvm_ppc_one_seg_page_size**, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  %18 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %17, align 8
  %19 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %16, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i8* @kvmppc_pgsize_lp_encoding(i32 %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.kvm_ppc_one_seg_page_size**, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  %28 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %27, align 8
  %29 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %26, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 24
  br i1 %34, label %35, label %56

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @kvmppc_pgsize_lp_encoding(i32 %36, i32 24)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.kvm_ppc_one_seg_page_size**, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  %43 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %42, align 8
  %44 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 24, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.kvm_ppc_one_seg_page_size**, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  %50 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %49, align 8
  %51 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %41, %35
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.kvm_ppc_one_seg_page_size**, %struct.kvm_ppc_one_seg_page_size*** %4, align 8
  %58 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %57, align 8
  %59 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %58, i32 1
  store %struct.kvm_ppc_one_seg_page_size* %59, %struct.kvm_ppc_one_seg_page_size** %57, align 8
  ret void
}

declare dso_local i8* @kvmppc_pgsize_lp_encoding(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
