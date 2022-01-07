; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_start_migration.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_vm_start_migration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kvm_memory_slot = type { i64, i32 }
%struct.kvm_memslots = type { i32, %struct.kvm_memory_slot* }

@EINVAL = common dso_local global i32 0, align 4
@KVM_REQ_START_MIGRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @kvm_s390_vm_start_migration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_vm_start_migration(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_memory_slot*, align 8
  %5 = alloca %struct.kvm_memslots*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.kvm*, %struct.kvm** %3, align 8
  %16 = call %struct.kvm_memslots* @kvm_memslots(%struct.kvm* %15)
  store %struct.kvm_memslots* %16, %struct.kvm_memslots** %5, align 8
  %17 = load %struct.kvm_memslots*, %struct.kvm_memslots** %5, align 8
  %18 = icmp ne %struct.kvm_memslots* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.kvm_memslots*, %struct.kvm_memslots** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %84

27:                                               ; preds = %19
  %28 = load %struct.kvm*, %struct.kvm** %3, align 8
  %29 = getelementptr inbounds %struct.kvm, %struct.kvm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load %struct.kvm*, %struct.kvm** %3, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %84

37:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %69, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.kvm_memslots*, %struct.kvm_memslots** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load %struct.kvm_memslots*, %struct.kvm_memslots** %5, align 8
  %46 = getelementptr inbounds %struct.kvm_memslots, %struct.kvm_memslots* %45, i32 0, i32 1
  %47 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %47, i64 %49
  store %struct.kvm_memory_slot* %50, %struct.kvm_memory_slot** %4, align 8
  %51 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %84

58:                                               ; preds = %44
  %59 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %60 = call i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot* %59)
  %61 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %62 = call i32 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot* %61)
  %63 = call i32 @memset(i32 %60, i32 255, i32 %62)
  %64 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %38

72:                                               ; preds = %38
  %73 = load %struct.kvm*, %struct.kvm** %3, align 8
  %74 = getelementptr inbounds %struct.kvm, %struct.kvm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @atomic64_set(i32* %75, i64 %76)
  %78 = load %struct.kvm*, %struct.kvm** %3, align 8
  %79 = getelementptr inbounds %struct.kvm, %struct.kvm* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.kvm*, %struct.kvm** %3, align 8
  %82 = load i32, i32* @KVM_REQ_START_MIGRATION, align 4
  %83 = call i32 @kvm_s390_sync_request_broadcast(%struct.kvm* %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %72, %55, %33, %24, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.kvm_memslots* @kvm_memslots(%struct.kvm*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @kvm_second_dirty_bitmap(%struct.kvm_memory_slot*) #1

declare dso_local i32 @kvm_dirty_bitmap_bytes(%struct.kvm_memory_slot*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

declare dso_local i32 @kvm_s390_sync_request_broadcast(%struct.kvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
