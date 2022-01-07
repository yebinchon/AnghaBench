; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_skcomp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_cons_skcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.fit_comp_error_info*, %struct.fit_completion_entry_v1*, i32, %struct.TYPE_2__* }
%struct.fit_comp_error_info = type { i32 }
%struct.fit_completion_entry_v1 = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"comp pci_alloc, total bytes %zd entries %d\0A\00", align 1
@SKD_SKCOMP_SIZE = common dso_local global i32 0, align 4
@SKD_N_COMPLETION_ENTRY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skd_device*)* @skd_cons_skcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skd_cons_skcomp(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fit_completion_entry_v1*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %6 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @SKD_SKCOMP_SIZE, align 4
  %10 = load i32, i32* @SKD_N_COMPLETION_ENTRY, align 4
  %11 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %13 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* @SKD_SKCOMP_SIZE, align 4
  %17 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %18 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %17, i32 0, i32 2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.fit_completion_entry_v1* @dma_alloc_coherent(i32* %15, i32 %16, i32* %18, i32 %19)
  store %struct.fit_completion_entry_v1* %20, %struct.fit_completion_entry_v1** %4, align 8
  %21 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %4, align 8
  %22 = icmp eq %struct.fit_completion_entry_v1* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %4, align 8
  %28 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %29 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %28, i32 0, i32 1
  store %struct.fit_completion_entry_v1* %27, %struct.fit_completion_entry_v1** %29, align 8
  %30 = load %struct.fit_completion_entry_v1*, %struct.fit_completion_entry_v1** %4, align 8
  %31 = bitcast %struct.fit_completion_entry_v1* %30 to i8*
  %32 = load i32, i32* @SKD_N_COMPLETION_ENTRY, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = bitcast i8* %35 to %struct.fit_comp_error_info*
  %37 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %38 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %37, i32 0, i32 0
  store %struct.fit_comp_error_info* %36, %struct.fit_comp_error_info** %38, align 8
  br label %39

39:                                               ; preds = %26, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local %struct.fit_completion_entry_v1* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
