; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_mappable_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_gtt_mappable_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@I810_SMRAM_MISCC = common dso_local global i32 0, align 4
@I810_GFX_MEM_WIN_SIZE = common dso_local global i32 0, align 4
@I810_GFX_MEM_WIN_32M = common dso_local global i32 0, align 4
@I830_GMCH_CTRL = common dso_local global i32 0, align 4
@I830_GMCH_MEM_MASK = common dso_local global i32 0, align 4
@I830_GMCH_MEM_64M = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_gtt_mappable_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gtt_mappable_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @INTEL_GTT_GEN, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 1), align 4
  %8 = load i32, i32* @I810_SMRAM_MISCC, align 4
  %9 = call i32 @pci_read_config_dword(i32 %7, i32 %8, i32* %2)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @I810_GFX_MEM_WIN_SIZE, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @I810_GFX_MEM_WIN_32M, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = call i32 @MB(i32 32)
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %6
  %18 = call i32 @MB(i32 64)
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %41

20:                                               ; preds = %0
  %21 = load i32, i32* @INTEL_GTT_GEN, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 1), align 4
  %25 = load i32, i32* @I830_GMCH_CTRL, align 4
  %26 = call i32 @pci_read_config_word(i32 %24, i32 %25, i32* %3)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @I830_GMCH_MEM_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @I830_GMCH_MEM_64M, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @MB(i32 64)
  store i32 %33, i32* %1, align 4
  br label %36

34:                                               ; preds = %23
  %35 = call i32 @MB(i32 128)
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %40

37:                                               ; preds = %20
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_private, i32 0, i32 0), align 4
  %39 = call i32 @pci_resource_len(i32 %38, i32 2)
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %37, %36
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = lshr i32 %42, %43
  ret i32 %44
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @MB(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
