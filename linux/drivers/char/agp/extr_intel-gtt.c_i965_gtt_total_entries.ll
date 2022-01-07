; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_i965_gtt_total_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_i965_gtt_total_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@I830_GMCH_CTRL = common dso_local global i32 0, align 4
@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@G4x_GMCH_SIZE_MASK = common dso_local global i32 0, align 4
@I810_PGETBL_CTL = common dso_local global i64 0, align 8
@I965_PGETBL_SIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unknown page table size, assuming 512KB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i965_gtt_total_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i965_gtt_total_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %5 = load i32, i32* @I830_GMCH_CTRL, align 4
  %6 = call i32 @pci_read_config_word(i32 %4, i32 %5, i32* %3)
  %7 = load i32, i32* @INTEL_GTT_GEN, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %20

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @G4x_GMCH_SIZE_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %19 [
    i32 138, label %13
    i32 136, label %13
    i32 135, label %15
    i32 137, label %17
    i32 134, label %17
  ]

13:                                               ; preds = %9, %9
  %14 = call i32 @i965_adjust_pgetbl_size(i32 132)
  br label %19

15:                                               ; preds = %9
  %16 = call i32 @i965_adjust_pgetbl_size(i32 131)
  br label %19

17:                                               ; preds = %9, %9
  %18 = call i32 @i965_adjust_pgetbl_size(i32 129)
  br label %19

19:                                               ; preds = %9, %17, %15, %13
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1), align 8
  %22 = load i64, i64* @I810_PGETBL_CTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @I965_PGETBL_SIZE_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %40 [
    i32 133, label %28
    i32 130, label %30
    i32 128, label %32
    i32 132, label %34
    i32 129, label %36
    i32 131, label %38
  ]

28:                                               ; preds = %20
  %29 = call i32 @KB(i32 128)
  store i32 %29, i32* %1, align 4
  br label %45

30:                                               ; preds = %20
  %31 = call i32 @KB(i32 256)
  store i32 %31, i32* %1, align 4
  br label %45

32:                                               ; preds = %20
  %33 = call i32 @KB(i32 512)
  store i32 %33, i32* %1, align 4
  br label %45

34:                                               ; preds = %20
  %35 = call i32 @KB(i32 1024)
  store i32 %35, i32* %1, align 4
  br label %45

36:                                               ; preds = %20
  %37 = call i32 @KB(i32 2048)
  store i32 %37, i32* %1, align 4
  br label %45

38:                                               ; preds = %20
  %39 = call i32 @KB(i32 1536)
  store i32 %39, i32* %1, align 4
  br label %45

40:                                               ; preds = %20
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @KB(i32 512)
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %40, %38, %36, %34, %32, %30, %28
  %46 = load i32, i32* %1, align 4
  %47 = sdiv i32 %46, 4
  ret i32 %47
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @i965_adjust_pgetbl_size(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @KB(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
