; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_node.c_register_memory_node_under_compute_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_node.c_register_memory_node_under_compute_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.node_access_nodes = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@node_devices = common dso_local global %struct.node** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"targets\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"initiators\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_memory_node_under_compute_node(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node_access_nodes*, align 8
  %11 = alloca %struct.node_access_nodes*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @node_online(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @node_online(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %16
  %24 = load %struct.node**, %struct.node*** @node_devices, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.node*, %struct.node** %24, i64 %26
  %28 = load %struct.node*, %struct.node** %27, align 8
  store %struct.node* %28, %struct.node** %8, align 8
  %29 = load %struct.node**, %struct.node*** @node_devices, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.node*, %struct.node** %29, i64 %31
  %33 = load %struct.node*, %struct.node** %32, align 8
  store %struct.node* %33, %struct.node** %9, align 8
  %34 = load %struct.node*, %struct.node** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.node_access_nodes* @node_init_node_access(%struct.node* %34, i32 %35)
  store %struct.node_access_nodes* %36, %struct.node_access_nodes** %10, align 8
  %37 = load %struct.node*, %struct.node** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.node_access_nodes* @node_init_node_access(%struct.node* %37, i32 %38)
  store %struct.node_access_nodes* %39, %struct.node_access_nodes** %11, align 8
  %40 = load %struct.node_access_nodes*, %struct.node_access_nodes** %10, align 8
  %41 = icmp ne %struct.node_access_nodes* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load %struct.node_access_nodes*, %struct.node_access_nodes** %11, align 8
  %44 = icmp ne %struct.node_access_nodes* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42, %23
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %87

48:                                               ; preds = %42
  %49 = load %struct.node_access_nodes*, %struct.node_access_nodes** %10, align 8
  %50 = getelementptr inbounds %struct.node_access_nodes, %struct.node_access_nodes* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.node*, %struct.node** %9, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.node*, %struct.node** %9, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 0
  %57 = call i32 @dev_name(%struct.TYPE_4__* %56)
  %58 = call i32 @sysfs_add_link_to_group(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %54, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %87

63:                                               ; preds = %48
  %64 = load %struct.node_access_nodes*, %struct.node_access_nodes** %11, align 8
  %65 = getelementptr inbounds %struct.node_access_nodes, %struct.node_access_nodes* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.node*, %struct.node** %8, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.node*, %struct.node** %8, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 0
  %72 = call i32 @dev_name(%struct.TYPE_4__* %71)
  %73 = call i32 @sysfs_add_link_to_group(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %69, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  br label %78

77:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %87

78:                                               ; preds = %76
  %79 = load %struct.node_access_nodes*, %struct.node_access_nodes** %10, align 8
  %80 = getelementptr inbounds %struct.node_access_nodes, %struct.node_access_nodes* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load %struct.node*, %struct.node** %9, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 0
  %84 = call i32 @dev_name(%struct.TYPE_4__* %83)
  %85 = call i32 @sysfs_remove_link_from_group(i32* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %78, %77, %61, %45, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @node_online(i32) #1

declare dso_local %struct.node_access_nodes* @node_init_node_access(%struct.node*, i32) #1

declare dso_local i32 @sysfs_add_link_to_group(i32*, i8*, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @sysfs_remove_link_from_group(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
