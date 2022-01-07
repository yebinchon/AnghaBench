; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mkdir_info_resdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mkdir_info_resdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.rdt_resource = type { i32 }
%struct.kernfs_node = type { i32 }

@kn_info = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdt_resource*, i8*, i64)* @rdtgroup_mkdir_info_resdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_mkdir_info_resdir(%struct.rdt_resource* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rdt_resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca i32, align 4
  store %struct.rdt_resource* %0, %struct.rdt_resource** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kn_info, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kn_info, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rdt_resource*, %struct.rdt_resource** %5, align 8
  %16 = call %struct.kernfs_node* @kernfs_create_dir(%struct.TYPE_3__* %10, i8* %11, i32 %14, %struct.rdt_resource* %15)
  store %struct.kernfs_node* %16, %struct.kernfs_node** %8, align 8
  %17 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %18 = call i64 @IS_ERR(%struct.kernfs_node* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.kernfs_node* %21)
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %3
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %25 = call i32 @kernfs_get(%struct.kernfs_node* %24)
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %27 = call i32 @rdtgroup_kn_set_ugid(%struct.kernfs_node* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @rdtgroup_add_files(%struct.kernfs_node* %33, i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %40 = call i32 @kernfs_activate(%struct.kernfs_node* %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %30, %20
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.kernfs_node* @kernfs_create_dir(%struct.TYPE_3__*, i8*, i32, %struct.rdt_resource*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @rdtgroup_kn_set_ugid(%struct.kernfs_node*) #1

declare dso_local i32 @rdtgroup_add_files(%struct.kernfs_node*, i64) #1

declare dso_local i32 @kernfs_activate(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
