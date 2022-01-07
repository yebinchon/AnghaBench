; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_create_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_create_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_resource = type { %struct.drbd_resource*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WO_BDEV_FLUSH = common dso_local global i32 0, align 4
@drbd_resources = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drbd_resource* @drbd_create_resource(i8* %0) #0 {
  %2 = alloca %struct.drbd_resource*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drbd_resource*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.drbd_resource* @kzalloc(i32 48, i32 %5)
  store %struct.drbd_resource* %6, %struct.drbd_resource** %4, align 8
  %7 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %8 = icmp ne %struct.drbd_resource* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %64

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.drbd_resource* @kstrdup(i8* %11, i32 %12)
  %14 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %15 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %14, i32 0, i32 0
  store %struct.drbd_resource* %13, %struct.drbd_resource** %15, align 8
  %16 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %17 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %16, i32 0, i32 0
  %18 = load %struct.drbd_resource*, %struct.drbd_resource** %17, align 8
  %19 = icmp ne %struct.drbd_resource* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %61

21:                                               ; preds = %10
  %22 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %23 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %22, i32 0, i32 9
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @zalloc_cpumask_var(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %56

28:                                               ; preds = %21
  %29 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %30 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %29, i32 0, i32 8
  %31 = call i32 @kref_init(i32* %30)
  %32 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %33 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %32, i32 0, i32 7
  %34 = call i32 @idr_init(i32* %33)
  %35 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %36 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %35, i32 0, i32 6
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load i32, i32* @WO_BDEV_FLUSH, align 4
  %39 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %40 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %42 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %41, i32 0, i32 4
  %43 = call i32 @list_add_tail_rcu(i32* %42, i32* @drbd_resources)
  %44 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %45 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %44, i32 0, i32 3
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %48 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %47, i32 0, i32 2
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %51 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %54 = call i32 @drbd_debugfs_resource_add(%struct.drbd_resource* %53)
  %55 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  store %struct.drbd_resource* %55, %struct.drbd_resource** %2, align 8
  br label %65

56:                                               ; preds = %27
  %57 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %58 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %57, i32 0, i32 0
  %59 = load %struct.drbd_resource*, %struct.drbd_resource** %58, align 8
  %60 = call i32 @kfree(%struct.drbd_resource* %59)
  br label %61

61:                                               ; preds = %56, %20
  %62 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %63 = call i32 @kfree(%struct.drbd_resource* %62)
  br label %64

64:                                               ; preds = %61, %9
  store %struct.drbd_resource* null, %struct.drbd_resource** %2, align 8
  br label %65

65:                                               ; preds = %64, %28
  %66 = load %struct.drbd_resource*, %struct.drbd_resource** %2, align 8
  ret %struct.drbd_resource* %66
}

declare dso_local %struct.drbd_resource* @kzalloc(i32, i32) #1

declare dso_local %struct.drbd_resource* @kstrdup(i8*, i32) #1

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @drbd_debugfs_resource_add(%struct.drbd_resource*) #1

declare dso_local i32 @kfree(%struct.drbd_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
