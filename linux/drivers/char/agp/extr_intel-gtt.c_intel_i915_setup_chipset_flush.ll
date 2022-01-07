; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_i915_setup_chipset_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_i915_setup_chipset_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@I915_IFPADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@iomem_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_i915_setup_chipset_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_i915_setup_chipset_flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %4 = load i32, i32* @I915_IFPADDR, align 4
  %5 = call i32 @pci_read_config_dword(i32 %3, i32 %4, i32* %2)
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  %10 = call i32 (...) @intel_alloc_chipset_flush_resource()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %12 = load i32, i32* @I915_IFPADDR, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1, i32 0), align 8
  %14 = or i32 %13, 1
  %15 = call i32 @pci_write_config_dword(i32 %11, i32 %12, i32 %14)
  br label %29

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, -2
  store i32 %18, i32* %2, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1, i32 0), align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1, i32 1), align 8
  %24 = call i32 @request_resource(i32* @iomem_resource, %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1))
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %27, %16
  br label %29

29:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @intel_alloc_chipset_flush_resource(...) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @request_resource(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
