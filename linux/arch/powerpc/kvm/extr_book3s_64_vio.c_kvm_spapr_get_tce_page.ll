; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvm_spapr_get_tce_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_vio.c_kvm_spapr_get_tce_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kvmppc_spapr_tce_table = type { i32, %struct.page** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.kvmppc_spapr_tce_table*, i64)* @kvm_spapr_get_tce_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @kvm_spapr_get_tce_page(%struct.kvmppc_spapr_tce_table* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.kvmppc_spapr_tce_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.kvmppc_spapr_tce_table* %0, %struct.kvmppc_spapr_tce_table** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %4, align 8
  %8 = getelementptr inbounds %struct.kvmppc_spapr_tce_table, %struct.kvmppc_spapr_tce_table* %7, i32 0, i32 1
  %9 = load %struct.page**, %struct.page*** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.page*, %struct.page** %9, i64 %10
  %12 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %12, %struct.page** %6, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = icmp ne %struct.page* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %16, %struct.page** %3, align 8
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %4, align 8
  %19 = getelementptr inbounds %struct.kvmppc_spapr_tce_table, %struct.kvmppc_spapr_tce_table* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %4, align 8
  %22 = getelementptr inbounds %struct.kvmppc_spapr_tce_table, %struct.kvmppc_spapr_tce_table* %21, i32 0, i32 1
  %23 = load %struct.page**, %struct.page*** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.page*, %struct.page** %23, i64 %24
  %26 = load %struct.page*, %struct.page** %25, align 8
  store %struct.page* %26, %struct.page** %6, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* @__GFP_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.page* @alloc_page(i32 %32)
  store %struct.page* %33, %struct.page** %6, align 8
  %34 = load %struct.page*, %struct.page** %6, align 8
  %35 = icmp ne %struct.page* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON_ONCE(i32 %37)
  %39 = load %struct.page*, %struct.page** %6, align 8
  %40 = icmp ne %struct.page* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %4, align 8
  %44 = getelementptr inbounds %struct.kvmppc_spapr_tce_table, %struct.kvmppc_spapr_tce_table* %43, i32 0, i32 1
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %46
  store %struct.page* %42, %struct.page** %47, align 8
  br label %48

48:                                               ; preds = %41, %29
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.kvmppc_spapr_tce_table*, %struct.kvmppc_spapr_tce_table** %4, align 8
  %51 = getelementptr inbounds %struct.kvmppc_spapr_tce_table, %struct.kvmppc_spapr_tce_table* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %53, %struct.page** %3, align 8
  br label %54

54:                                               ; preds = %49, %15
  %55 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
