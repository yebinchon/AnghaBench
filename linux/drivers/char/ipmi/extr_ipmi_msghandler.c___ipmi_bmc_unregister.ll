; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___ipmi_bmc_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___ipmi_bmc_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i8*, %struct.bmc_device, %struct.bmc_device*, i32, %struct.TYPE_4__* }
%struct.bmc_device = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"bmc\00", align 1
@cleanup_bmc_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*)* @__ipmi_bmc_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipmi_bmc_unregister(%struct.ipmi_smi* %0) #0 {
  %2 = alloca %struct.ipmi_smi*, align 8
  %3 = alloca %struct.bmc_device*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %2, align 8
  %4 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %5 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %4, i32 0, i32 3
  %6 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  store %struct.bmc_device* %6, %struct.bmc_device** %3, align 8
  %7 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %8 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %14 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @sysfs_remove_link(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %19 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %23 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @sysfs_remove_link(i32* %21, i8* %24)
  %26 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %27 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @kfree(i8* %28)
  %30 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %31 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %30, i32 0, i32 1
  store i8* null, i8** %31, align 8
  %32 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %33 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %36 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %35, i32 0, i32 4
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %39 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %42 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %41, i32 0, i32 2
  %43 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %44 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %43, i32 0, i32 3
  store %struct.bmc_device* %42, %struct.bmc_device** %44, align 8
  %45 = load %struct.bmc_device*, %struct.bmc_device** %3, align 8
  %46 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %45, i32 0, i32 0
  %47 = load i32, i32* @cleanup_bmc_device, align 4
  %48 = call i32 @kref_put(i32* %46, i32 %47)
  %49 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %50 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
