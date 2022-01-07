; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_alloc_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_alloc_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.msi_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate msi entry\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @fsl_mc_msi_alloc_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_mc_msi_alloc_descs(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msi_desc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.msi_desc* @alloc_msi_entry(%struct.device* %14, i32 1, i32* null)
  store %struct.msi_desc* %15, %struct.msi_desc** %8, align 8
  %16 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %17 = icmp ne %struct.msi_desc* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %40

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %26 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %29 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %28, i32 0, i32 0
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %32 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %31, i32 0, i32 0
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call i32 @dev_to_msi_list(%struct.device* %33)
  %35 = call i32 @list_add_tail(i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %9

39:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %44

40:                                               ; preds = %18
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @fsl_mc_msi_free_descs(%struct.device* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %39
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.msi_desc* @alloc_msi_entry(%struct.device*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @dev_to_msi_list(%struct.device*) #1

declare dso_local i32 @fsl_mc_msi_free_descs(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
