; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_debugfs_dev_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_debugfs_dev_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.dentry*, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@debugfs_stats_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"pci_regs\00", align 1
@debugfs_pci_regs_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"cram\00", align 1
@debugfs_cram_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsxx_cardinfo*)* @rsxx_debugfs_dev_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_debugfs_dev_new(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca %struct.rsxx_cardinfo*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %2, align 8
  %6 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %7 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dentry* @debugfs_create_dir(i32 %10, i32* null)
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 0
  store %struct.dentry* %11, %struct.dentry** %13, align 8
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  %17 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %62

20:                                               ; preds = %1
  %21 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %22 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %21, i32 0, i32 0
  %23 = load %struct.dentry*, %struct.dentry** %22, align 8
  %24 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %25 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 292, %struct.dentry* %23, %struct.rsxx_cardinfo* %24, i32* @debugfs_stats_fops)
  store %struct.dentry* %25, %struct.dentry** %3, align 8
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %57

30:                                               ; preds = %20
  %31 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %32 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %31, i32 0, i32 0
  %33 = load %struct.dentry*, %struct.dentry** %32, align 8
  %34 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %35 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %33, %struct.rsxx_cardinfo* %34, i32* @debugfs_pci_regs_fops)
  store %struct.dentry* %35, %struct.dentry** %4, align 8
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %54

40:                                               ; preds = %30
  %41 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %42 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %41, i32 0, i32 0
  %43 = load %struct.dentry*, %struct.dentry** %42, align 8
  %44 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %45 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 420, %struct.dentry* %43, %struct.rsxx_cardinfo* %44, i32* @debugfs_cram_fops)
  store %struct.dentry* %45, %struct.dentry** %5, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %51

50:                                               ; preds = %40
  br label %65

51:                                               ; preds = %49
  %52 = load %struct.dentry*, %struct.dentry** %4, align 8
  %53 = call i32 @debugfs_remove(%struct.dentry* %52)
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.dentry*, %struct.dentry** %3, align 8
  %56 = call i32 @debugfs_remove(%struct.dentry* %55)
  br label %57

57:                                               ; preds = %54, %29
  %58 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %59 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %58, i32 0, i32 0
  %60 = load %struct.dentry*, %struct.dentry** %59, align 8
  %61 = call i32 @debugfs_remove(%struct.dentry* %60)
  br label %62

62:                                               ; preds = %57, %19
  %63 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %2, align 8
  %64 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %63, i32 0, i32 0
  store %struct.dentry* null, %struct.dentry** %64, align 8
  br label %65

65:                                               ; preds = %62, %50
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.rsxx_cardinfo*, i32*) #1

declare dso_local i32 @debugfs_remove(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
