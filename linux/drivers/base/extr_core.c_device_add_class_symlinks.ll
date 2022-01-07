; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_add_class_symlinks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_add_class_symlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"of_node\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error %d creating of_node link\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@block_class = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@sysfs_deprecated = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @device_add_class_symlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_add_class_symlinks(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.device_node* @dev_of_node(%struct.device* %6)
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i32* @of_node_kobj(%struct.device_node* %13)
  %15 = call i32 @sysfs_create_link(i32* %12, i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_warn(%struct.device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %10
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %94

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @sysfs_create_link(i32* %31, i32* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %89

43:                                               ; preds = %29
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i64 @device_is_not_partition(%struct.device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @sysfs_create_link(i32* %54, i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %85

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %48, %43
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = call i8* @dev_name(%struct.device* %74)
  %76 = call i32 @sysfs_create_link(i32* %71, i32* %73, i8* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %81

80:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %94

81:                                               ; preds = %79
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = getelementptr inbounds %struct.device, %struct.device* %82, i32 0, i32 0
  %84 = call i32 @sysfs_remove_link(i32* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %62
  %86 = load %struct.device*, %struct.device** %3, align 8
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 0
  %88 = call i32 @sysfs_remove_link(i32* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %42
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = call i32 @sysfs_remove_link(i32* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %80, %28
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.device_node* @dev_of_node(%struct.device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32* @of_node_kobj(%struct.device_node*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @device_is_not_partition(%struct.device*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
