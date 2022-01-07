; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_cc_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_parse_cc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.cc_workarea = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.cc_workarea*)* @dlpar_parse_cc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @dlpar_parse_cc_node(%struct.cc_workarea* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.cc_workarea*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  store %struct.cc_workarea* %0, %struct.cc_workarea** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.device_node* @kzalloc(i32 4, i32 %6)
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %13 = bitcast %struct.cc_workarea* %12 to i8*
  %14 = load %struct.cc_workarea*, %struct.cc_workarea** %3, align 8
  %15 = getelementptr inbounds %struct.cc_workarea, %struct.cc_workarea* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %13, i64 %18
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kstrdup(i8* %20, i32 %21)
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %11
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i32 @kfree(%struct.device_node* %30)
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %39

32:                                               ; preds = %11
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = load i32, i32* @OF_DYNAMIC, align 4
  %35 = call i32 @of_node_set_flag(%struct.device_node* %33, i32 %34)
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = call i32 @of_node_init(%struct.device_node* %36)
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %38, %struct.device_node** %2, align 8
  br label %39

39:                                               ; preds = %32, %29, %10
  %40 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %40
}

declare dso_local %struct.device_node* @kzalloc(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.device_node*) #1

declare dso_local i32 @of_node_set_flag(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_init(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
