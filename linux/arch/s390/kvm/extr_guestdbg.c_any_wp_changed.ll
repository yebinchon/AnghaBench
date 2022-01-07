; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_any_wp_changed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_any_wp_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_hw_wp_info_arch = type { i32, i32, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.kvm_hw_wp_info_arch* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_hw_wp_info_arch* (%struct.kvm_vcpu*)* @any_wp_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_hw_wp_info_arch* @any_wp_changed(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_hw_wp_info_arch*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_hw_wp_info_arch*, align 8
  %6 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_hw_wp_info_arch* null, %struct.kvm_hw_wp_info_arch** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.kvm_hw_wp_info_arch* null, %struct.kvm_hw_wp_info_arch** %2, align 8
  br label %87

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %83, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %15
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %28, i64 %30
  store %struct.kvm_hw_wp_info_arch* %31, %struct.kvm_hw_wp_info_arch** %5, align 8
  %32 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %33 = icmp ne %struct.kvm_hw_wp_info_arch* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34, %23
  br label %83

45:                                               ; preds = %39
  %46 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kmalloc(i32 %48, i32 %49)
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %83

54:                                               ; preds = %45
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @read_guest_abs(%struct.kvm_vcpu* %55, i32 %58, i8* %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %54
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %68 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @memcmp(i8* %66, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %5, align 8
  store %struct.kvm_hw_wp_info_arch* %78, %struct.kvm_hw_wp_info_arch** %2, align 8
  br label %87

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %54
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @kfree(i8* %81)
  store i8* null, i8** %6, align 8
  br label %83

83:                                               ; preds = %80, %53, %44
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %15

86:                                               ; preds = %15
  store %struct.kvm_hw_wp_info_arch* null, %struct.kvm_hw_wp_info_arch** %2, align 8
  br label %87

87:                                               ; preds = %86, %75, %13
  %88 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %2, align 8
  ret %struct.kvm_hw_wp_info_arch* %88
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @read_guest_abs(%struct.kvm_vcpu*, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
