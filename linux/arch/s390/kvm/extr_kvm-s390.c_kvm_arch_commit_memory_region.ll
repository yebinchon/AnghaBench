; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_commit_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_commit_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_userspace_memory_region = type { i32, i32, i32 }
%struct.kvm_memory_slot = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown KVM MR CHANGE: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to commit memory region\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_commit_memory_region(%struct.kvm* %0, %struct.kvm_userspace_memory_region* %1, %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot* %3, i32 %4) #0 {
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_userspace_memory_region*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca %struct.kvm_memory_slot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_userspace_memory_region* %1, %struct.kvm_userspace_memory_region** %7, align 8
  store %struct.kvm_memory_slot* %2, %struct.kvm_memory_slot** %8, align 8
  store %struct.kvm_memory_slot* %3, %struct.kvm_memory_slot** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %65 [
    i32 130, label %13
    i32 128, label %29
    i32 131, label %49
    i32 129, label %64
  ]

13:                                               ; preds = %5
  %14 = load %struct.kvm*, %struct.kvm** %6, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %19 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %24 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call i32 @gmap_unmap_segment(i32 %17, i32 %22, i32 %27)
  store i32 %28, i32* %11, align 4
  br label %68

29:                                               ; preds = %5
  %30 = load %struct.kvm*, %struct.kvm** %6, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %35 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %40 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i32 @gmap_unmap_segment(i32 %33, i32 %38, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %68

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %5, %48
  %50 = load %struct.kvm*, %struct.kvm** %6, align 8
  %51 = getelementptr inbounds %struct.kvm, %struct.kvm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %7, align 8
  %55 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %7, align 8
  %58 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %7, align 8
  %61 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gmap_map_segment(i32 %53, i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %68

64:                                               ; preds = %5
  br label %68

65:                                               ; preds = %5
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %64, %49, %47, %13
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @gmap_unmap_segment(i32, i32, i32) #1

declare dso_local i32 @gmap_map_segment(i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
