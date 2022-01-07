; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_i9xx_setup_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_i9xx_setup_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i64, i32 }

@intel_private = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Intel Flush Page\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IS_G33 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"can't ioremap flush page - no chipset flushing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_i9xx_setup_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_i9xx_setup_flush() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2, i32 1), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %33

4:                                                ; preds = %0
  %5 = load i32, i32* @INTEL_GTT_GEN, align 4
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %33

8:                                                ; preds = %4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2, i32 0), align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2, i32 2), align 8
  %10 = load i64, i64* @IS_G33, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @INTEL_GTT_GEN, align 4
  %14 = icmp sge i32 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %8
  %16 = call i32 (...) @intel_i965_g33_setup_chipset_flush()
  br label %19

17:                                               ; preds = %12
  %18 = call i32 (...) @intel_i915_setup_chipset_flush()
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2, i32 1), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 2, i32 1), align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @ioremap_nocache(i64 %23, i32 %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 1), align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 1), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @intel_private, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %3, %7, %29, %26
  ret void
}

declare dso_local i32 @intel_i965_g33_setup_chipset_flush(...) #1

declare dso_local i32 @intel_i915_setup_chipset_flush(...) #1

declare dso_local i32 @ioremap_nocache(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
