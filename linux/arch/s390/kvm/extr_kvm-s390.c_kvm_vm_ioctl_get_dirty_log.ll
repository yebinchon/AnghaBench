; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_vm_ioctl_get_dirty_log.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_vm_ioctl_get_dirty_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_dirty_log = type { i32 }
%struct.kvm_memslots = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KVM_USER_MEM_SLOTS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_vm_ioctl_get_dirty_log(%struct.kvm* %0, %struct.kvm_dirty_log* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_dirty_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_memslots*, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_dirty_log* %1, %struct.kvm_dirty_log** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = call i64 @kvm_is_ucontrol(%struct.kvm* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.kvm*, %struct.kvm** %4, align 8
  %19 = getelementptr inbounds %struct.kvm, %struct.kvm* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KVM_USER_MEM_SLOTS, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %66

29:                                               ; preds = %17
  %30 = load %struct.kvm*, %struct.kvm** %4, align 8
  %31 = call %struct.kvm_memslots* @kvm_memslots(%struct.kvm* %30)
  store %struct.kvm_memslots* %31, %struct.kvm_memslots** %8, align 8
  %32 = load %struct.kvm_memslots*, %struct.kvm_memslots** %8, align 8
  %33 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_dirty_log, %struct.kvm_dirty_log* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.kvm_memory_slot* @id_to_memslot(%struct.kvm_memslots* %32, i32 %35)
  store %struct.kvm_memory_slot* %36, %struct.kvm_memory_slot** %9, align 8
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %40 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %66

44:                                               ; preds = %29
  %45 = load %struct.kvm*, %struct.kvm** %4, align 8
  %46 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %47 = call i32 @kvm_s390_sync_dirty_log(%struct.kvm* %45, %struct.kvm_memory_slot* %46)
  %48 = load %struct.kvm*, %struct.kvm** %4, align 8
  %49 = load %struct.kvm_dirty_log*, %struct.kvm_dirty_log** %5, align 8
  %50 = call i32 @kvm_get_dirty_log(%struct.kvm* %48, %struct.kvm_dirty_log* %49, i32* %10)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %66

54:                                               ; preds = %44
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %59 = call i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot* %58)
  store i64 %59, i64* %7, align 8
  %60 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %9, align 8
  %61 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @memset(i32 %62, i32 0, i64 %63)
  br label %65

65:                                               ; preds = %57, %54
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %53, %43, %28
  %67 = load %struct.kvm*, %struct.kvm** %4, align 8
  %68 = getelementptr inbounds %struct.kvm, %struct.kvm* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @kvm_is_ucontrol(%struct.kvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kvm_memslots* @kvm_memslots(%struct.kvm*) #1

declare dso_local %struct.kvm_memory_slot* @id_to_memslot(%struct.kvm_memslots*, i32) #1

declare dso_local i32 @kvm_s390_sync_dirty_log(%struct.kvm*, %struct.kvm_memory_slot*) #1

declare dso_local i32 @kvm_get_dirty_log(%struct.kvm*, %struct.kvm_dirty_log*, i32*) #1

declare dso_local i64 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
