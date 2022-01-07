; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c___import_wp_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c___import_wp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_hw_breakpoint = type { i64, i32, i32 }
%struct.kvm_hw_wp_info_arch = type { i64, i32*, i32, i32 }

@MAX_WP_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_hw_breakpoint*, %struct.kvm_hw_wp_info_arch*)* @__import_wp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__import_wp_info(%struct.kvm_vcpu* %0, %struct.kvm_hw_breakpoint* %1, %struct.kvm_hw_wp_info_arch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_hw_breakpoint*, align 8
  %7 = alloca %struct.kvm_hw_wp_info_arch*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_hw_breakpoint* %1, %struct.kvm_hw_breakpoint** %6, align 8
  store %struct.kvm_hw_wp_info_arch* %2, %struct.kvm_hw_wp_info_arch** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %6, align 8
  %10 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %13 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %6, align 8
  %15 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %23 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %25 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %27 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAX_WP_SIZE, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %77

39:                                               ; preds = %30
  %40 = load %struct.kvm_hw_breakpoint*, %struct.kvm_hw_breakpoint** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_hw_breakpoint, %struct.kvm_hw_breakpoint* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i64 %42, i32 %43)
  %45 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %46 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %48 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %77

54:                                               ; preds = %39
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %56 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %57 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %60 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %63 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @read_guest_abs(%struct.kvm_vcpu* %55, i32 %58, i32* %61, i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %54
  %69 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %70 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load %struct.kvm_hw_wp_info_arch*, %struct.kvm_hw_wp_info_arch** %7, align 8
  %74 = getelementptr inbounds %struct.kvm_hw_wp_info_arch, %struct.kvm_hw_wp_info_arch* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %54
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %51, %36
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @read_guest_abs(%struct.kvm_vcpu*, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
