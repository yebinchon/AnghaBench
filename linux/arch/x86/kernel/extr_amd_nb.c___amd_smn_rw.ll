; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_nb.c___amd_smn_rw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_nb.c___amd_smn_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }

@ENODEV = common dso_local global i32 0, align 4
@amd_northbridges = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@smn_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error programming SMN address 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error %s SMN address 0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"writing to\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"reading from\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32*, i32)* @__amd_smn_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__amd_smn_rw(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd_northbridges, i32 0, i32 0), align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %63

17:                                               ; preds = %4
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.TYPE_3__* @node_to_amd_nb(i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %9, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %63

25:                                               ; preds = %17
  %26 = call i32 @mutex_lock(i32* @smn_mutex)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pci_write_config_dword(%struct.pci_dev* %27, i32 96, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %61

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_write_config_dword(%struct.pci_dev* %41, i32 100, i32 %43)
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @pci_read_config_dword(%struct.pci_dev* %46, i32 100, i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i32 [ %44, %40 ], [ %48, %45 ]
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %49
  br label %61

61:                                               ; preds = %60, %32
  %62 = call i32 @mutex_unlock(i32* @smn_mutex)
  br label %63

63:                                               ; preds = %61, %24, %16
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_3__* @node_to_amd_nb(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
