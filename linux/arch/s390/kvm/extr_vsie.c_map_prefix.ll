; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_map_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_map_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vsie_page = type { i32, %struct.kvm_s390_sie_block }
%struct.kvm_s390_sie_block = type { i32, i32, i32 }

@GUEST_PREFIX_SHIFT = common dso_local global i32 0, align 4
@ECB_TE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vsie_page*)* @map_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_prefix(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vsie_page*, align 8
  %6 = alloca %struct.kvm_s390_sie_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %5, align 8
  %9 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %10 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %9, i32 0, i32 1
  store %struct.kvm_s390_sie_block* %10, %struct.kvm_s390_sie_block** %6, align 8
  %11 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %12 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GUEST_PREFIX_SHIFT, align 4
  %15 = shl i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %17 = call i64 @prefix_is_mapped(%struct.vsie_page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %22 = call i32 @prefix_mapped(%struct.vsie_page* %21)
  %23 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %24 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %30 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @kvm_s390_shadow_fault(%struct.kvm_vcpu* %28, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %20
  %37 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ECB_TE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %46 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @kvm_s390_shadow_fault(%struct.kvm_vcpu* %44, i32 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %43, %36, %20
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %57 = call i32 @prefix_unmapped(%struct.vsie_page* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @EFAULT, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %58
  %67 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %68 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %67, i32 55)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @prefix_is_mapped(%struct.vsie_page*) #1

declare dso_local i32 @prefix_mapped(%struct.vsie_page*) #1

declare dso_local i32 @kvm_s390_shadow_fault(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @prefix_unmapped(%struct.vsie_page*) #1

declare dso_local i32 @set_validity_icpt(%struct.kvm_s390_sie_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
