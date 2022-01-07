; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_get_vdev_port_node_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_mdesc.c_get_vdev_port_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { i32 }
%union.md_node_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdesc_handle*, i32, %union.md_node_info*)* @get_vdev_port_node_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vdev_port_node_info(%struct.mdesc_handle* %0, i32 %1, %union.md_node_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdesc_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.md_node_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.mdesc_handle* %0, %struct.mdesc_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.md_node_info* %2, %union.md_node_info** %7, align 8
  %11 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @mdesc_get_property(%struct.mdesc_handle* %11, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %10, align 8
  %15 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @mdesc_get_property(%struct.mdesc_handle* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @parent_cfg_handle(%struct.mdesc_handle* %18, i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %23, %3
  store i32 -1, i32* %4, align 4
  br label %54

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %union.md_node_info*, %union.md_node_info** %7, align 8
  %34 = bitcast %union.md_node_info* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @kstrdup_const(i8* %36, i32 %37)
  %39 = load %union.md_node_info*, %union.md_node_info** %7, align 8
  %40 = bitcast %union.md_node_info* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %union.md_node_info*, %union.md_node_info** %7, align 8
  %43 = bitcast %union.md_node_info* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %54

48:                                               ; preds = %30
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %union.md_node_info*, %union.md_node_info** %7, align 8
  %52 = bitcast %union.md_node_info* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %47, %29
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i8* @mdesc_get_property(%struct.mdesc_handle*, i32, i8*, i32*) #1

declare dso_local i32* @parent_cfg_handle(%struct.mdesc_handle*, i32) #1

declare dso_local i32 @kstrdup_const(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
