; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_unpin_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_unpin_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vsie_page = type { i64, i64, i64, i64, i64, %struct.kvm_s390_sie_block }
%struct.kvm_s390_sie_block = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vsie_page*)* @unpin_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpin_blocks(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vsie_page*, align 8
  %5 = alloca %struct.kvm_s390_sie_block*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %4, align 8
  %7 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %8 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %7, i32 0, i32 5
  store %struct.kvm_s390_sie_block* %8, %struct.kvm_s390_sie_block** %5, align 8
  %9 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 32
  %14 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %25 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @unpin_guest_page(i32 %23, i64 %26, i32 %27)
  %29 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %30 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %34 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %20, %2
  %36 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %46 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @unpin_guest_page(i32 %44, i64 %47, i32 %48)
  %50 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %51 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %41, %35
  %55 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %56 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %65 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @unpin_guest_page(i32 %63, i64 %66, i32 %67)
  %69 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %70 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %72 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %71, i32 0, i32 2
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %60, %54
  %74 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %84 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @unpin_guest_page(i32 %82, i64 %85, i32 %86)
  %88 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %89 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %91 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %79, %73
  %93 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %94 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %103 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @unpin_guest_page(i32 %101, i64 %104, i32 %105)
  %107 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %108 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %110 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %109, i32 0, i32 4
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %98, %92
  ret void
}

declare dso_local i32 @unpin_guest_page(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
