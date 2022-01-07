; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_mongroup_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_mongroup_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.rdtgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.rdtgroup*, i8*, %struct.kernfs_node**)* @mongroup_create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongroup_create_dir(%struct.kernfs_node* %0, %struct.rdtgroup* %1, i8* %2, %struct.kernfs_node** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.rdtgroup*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kernfs_node**, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %6, align 8
  store %struct.rdtgroup* %1, %struct.rdtgroup** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.kernfs_node** %3, %struct.kernfs_node*** %9, align 8
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %15 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rdtgroup*, %struct.rdtgroup** %7, align 8
  %18 = call %struct.kernfs_node* @kernfs_create_dir(%struct.kernfs_node* %12, i8* %13, i32 %16, %struct.rdtgroup* %17)
  store %struct.kernfs_node* %18, %struct.kernfs_node** %10, align 8
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %20 = call i64 @IS_ERR(%struct.kernfs_node* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %24 = call i32 @PTR_ERR(%struct.kernfs_node* %23)
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %4
  %26 = load %struct.kernfs_node**, %struct.kernfs_node*** %9, align 8
  %27 = icmp ne %struct.kernfs_node** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %30 = load %struct.kernfs_node**, %struct.kernfs_node*** %9, align 8
  store %struct.kernfs_node* %29, %struct.kernfs_node** %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %33 = call i32 @kernfs_get(%struct.kernfs_node* %32)
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %35 = call i32 @rdtgroup_kn_set_ugid(%struct.kernfs_node* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %41 = call i32 @kernfs_activate(%struct.kernfs_node* %40)
  store i32 0, i32* %5, align 4
  br label %46

42:                                               ; preds = %38
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %44 = call i32 @kernfs_remove(%struct.kernfs_node* %43)
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %39, %22
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.kernfs_node* @kernfs_create_dir(%struct.kernfs_node*, i8*, i32, %struct.rdtgroup*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @rdtgroup_kn_set_ugid(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_activate(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_remove(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
