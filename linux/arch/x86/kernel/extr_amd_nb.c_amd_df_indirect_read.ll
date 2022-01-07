; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_nb.c_amd_df_indirect_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_nb.c_amd_df_indirect_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }

@ENODEV = common dso_local global i32 0, align 4
@amd_northbridges = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@smn_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error writing DF Indirect FICAA, FICAA=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Error reading DF Indirect FICAD LO, FICAA=0x%x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_df_indirect_read(i64 %0, i32 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_northbridges, i32 0, i32 0), align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %65

20:                                               ; preds = %5
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.TYPE_3__* @node_to_amd_nb(i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %11, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %26 = icmp ne %struct.pci_dev* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %65

28:                                               ; preds = %20
  store i64 1, i64* %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = and i64 %29, 1020
  %31 = load i64, i64* %12, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 7
  %35 = shl i32 %34, 11
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %12, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 16
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %12, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %12, align 8
  %44 = call i32 @mutex_lock(i32* @smn_mutex)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @pci_write_config_dword(%struct.pci_dev* %45, i32 92, i64 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %28
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %63

53:                                               ; preds = %28
  %54 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = call i32 @pci_read_config_dword(%struct.pci_dev* %54, i32 152, i64* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %50
  %64 = call i32 @mutex_unlock(i32* @smn_mutex)
  br label %65

65:                                               ; preds = %63, %27, %19
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_3__* @node_to_amd_nb(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
