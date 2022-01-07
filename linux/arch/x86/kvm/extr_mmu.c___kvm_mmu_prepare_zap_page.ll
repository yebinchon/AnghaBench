; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___kvm_mmu_prepare_zap_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___kvm_mmu_prepare_zap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.list_head }
%struct.list_head = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_mmu_page = type { %struct.TYPE_6__, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_mmu_page*, %struct.list_head*, i32*)* @__kvm_mmu_prepare_zap_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kvm_mmu_prepare_zap_page(%struct.kvm* %0, %struct.kvm_mmu_page* %1, %struct.list_head* %2, i32* %3) #0 {
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_mmu_page*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %11 = call i32 @trace_kvm_mmu_prepare_zap_page(%struct.kvm_mmu_page* %10)
  %12 = load %struct.kvm*, %struct.kvm** %5, align 8
  %13 = getelementptr inbounds %struct.kvm, %struct.kvm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.kvm*, %struct.kvm** %5, align 8
  %18 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %19 = load %struct.list_head*, %struct.list_head** %7, align 8
  %20 = call i32 @mmu_zap_unsync_children(%struct.kvm* %17, %struct.kvm_mmu_page* %18, %struct.list_head* %19)
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.kvm*, %struct.kvm** %5, align 8
  %23 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %24 = call i32 @kvm_mmu_page_unlink_children(%struct.kvm* %22, %struct.kvm_mmu_page* %23)
  %25 = load %struct.kvm*, %struct.kvm** %5, align 8
  %26 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %27 = call i32 @kvm_mmu_unlink_parents(%struct.kvm* %25, %struct.kvm_mmu_page* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %4
  %36 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %37 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load %struct.kvm*, %struct.kvm** %5, align 8
  %43 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %44 = call i32 @unaccount_shadowed(%struct.kvm* %42, %struct.kvm_mmu_page* %43)
  br label %45

45:                                               ; preds = %41, %35, %4
  %46 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %47 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.kvm*, %struct.kvm** %5, align 8
  %52 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %53 = call i32 @kvm_unlink_unsync_page(%struct.kvm* %51, %struct.kvm_mmu_page* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %63, i32 0, i32 2
  %65 = load %struct.list_head*, %struct.list_head** %7, align 8
  %66 = call i32 @list_move(i32* %64, %struct.list_head* %65)
  %67 = load %struct.kvm*, %struct.kvm** %5, align 8
  %68 = call i32 @kvm_mod_used_mmu_pages(%struct.kvm* %67, i32 -1)
  br label %84

69:                                               ; preds = %54
  %70 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %71 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %70, i32 0, i32 2
  %72 = load %struct.kvm*, %struct.kvm** %5, align 8
  %73 = getelementptr inbounds %struct.kvm, %struct.kvm* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @list_move(i32* %71, %struct.list_head* %74)
  %76 = load %struct.kvm*, %struct.kvm** %5, align 8
  %77 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %78 = call i32 @is_obsolete_sp(%struct.kvm* %76, %struct.kvm_mmu_page* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load %struct.kvm*, %struct.kvm** %5, align 8
  %82 = call i32 @kvm_reload_remote_mmus(%struct.kvm* %81)
  br label %83

83:                                               ; preds = %80, %69
  br label %84

84:                                               ; preds = %83, %59
  %85 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %86 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.kvm*, %struct.kvm** %5, align 8
  %91 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %92 = call i32 @unaccount_huge_nx_page(%struct.kvm* %90, %struct.kvm_mmu_page* %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %6, align 8
  %95 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @trace_kvm_mmu_prepare_zap_page(%struct.kvm_mmu_page*) #1

declare dso_local i32 @mmu_zap_unsync_children(%struct.kvm*, %struct.kvm_mmu_page*, %struct.list_head*) #1

declare dso_local i32 @kvm_mmu_page_unlink_children(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @kvm_mmu_unlink_parents(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @unaccount_shadowed(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @kvm_unlink_unsync_page(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

declare dso_local i32 @kvm_mod_used_mmu_pages(%struct.kvm*, i32) #1

declare dso_local i32 @is_obsolete_sp(%struct.kvm*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @kvm_reload_remote_mmus(%struct.kvm*) #1

declare dso_local i32 @unaccount_huge_nx_page(%struct.kvm*, %struct.kvm_mmu_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
