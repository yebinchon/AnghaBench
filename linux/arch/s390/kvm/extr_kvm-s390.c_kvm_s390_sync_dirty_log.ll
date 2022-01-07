; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_sync_dirty_log.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_sync_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gmap* }
%struct.gmap = type { i32 }
%struct.kvm_memory_slot = type { i64, i64 }

@bitmap = common dso_local global i32 0, align 4
@_PAGE_ENTRIES = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.kvm_memory_slot*)* @kvm_s390_sync_dirty_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_s390_sync_dirty_log(%struct.kvm* %0, %struct.kvm_memory_slot* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gmap*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %4, align 8
  %11 = load %struct.kvm*, %struct.kvm** %3, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.gmap*, %struct.gmap** %13, align 8
  store %struct.gmap* %14, %struct.gmap** %10, align 8
  %15 = load i32, i32* @bitmap, align 4
  %16 = load i32, i32* @_PAGE_ENTRIES, align 4
  %17 = call i32 @DECLARE_BITMAP(i32 %15, i32 %16)
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %78, %2
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @gfn_to_gpa(i64 %33)
  store i64 %34, i64* %8, align 8
  %35 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot* %35, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @kvm_is_error_hva(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %78

42:                                               ; preds = %32
  %43 = load i32, i32* @bitmap, align 4
  %44 = load i32, i32* @_PAGE_ENTRIES, align 4
  %45 = call i32 @bitmap_zero(i32 %43, i32 %44)
  %46 = load %struct.gmap*, %struct.gmap** %10, align 8
  %47 = load i32, i32* @bitmap, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @gmap_sync_dirty_log_pmd(%struct.gmap* %46, i32 %47, i64 %48, i64 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %68, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @_PAGE_ENTRIES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @bitmap, align 4
  %58 = call i64 @test_bit(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.kvm*, %struct.kvm** %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = call i32 @mark_page_dirty(%struct.kvm* %61, i64 %65)
  br label %67

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load i32, i32* @current, align 4
  %73 = call i64 @fatal_signal_pending(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %83

76:                                               ; preds = %71
  %77 = call i32 (...) @cond_resched()
  br label %78

78:                                               ; preds = %76, %41
  %79 = load i32, i32* @_PAGE_ENTRIES, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %6, align 8
  br label %28

83:                                               ; preds = %75, %28
  ret void
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i64 @gfn_to_gpa(i64) #1

declare dso_local i64 @gfn_to_hva_memslot(%struct.kvm_memory_slot*, i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @gmap_sync_dirty_log_pmd(%struct.gmap*, i32, i64, i64) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mark_page_dirty(%struct.kvm*, i64) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
