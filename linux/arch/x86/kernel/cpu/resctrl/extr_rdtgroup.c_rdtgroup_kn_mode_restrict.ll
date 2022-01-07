; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_mode_restrict.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_kn_mode_restrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.kernfs_node = type { i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdtgroup_kn_mode_restrict(%struct.rdtgroup* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdtgroup*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iattr, align 4
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i32, align 4
  store %struct.rdtgroup* %0, %struct.rdtgroup** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 1
  %11 = load i32, i32* @ATTR_MODE, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %13 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.kernfs_node* @kernfs_find_and_get_ns(i32 %14, i8* %15, i32* null)
  store %struct.kernfs_node* %16, %struct.kernfs_node** %7, align 8
  %17 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %18 = icmp ne %struct.kernfs_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %24 = call i32 @kernfs_type(%struct.kernfs_node* %23)
  switch i32 %24, label %34 [
    i32 130, label %25
    i32 129, label %28
    i32 128, label %31
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* @S_IFDIR, align 4
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  br label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @S_IFREG, align 4
  %30 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @S_IFLNK, align 4
  %33 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %22, %31, %28, %25
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %36 = call i32 @kernfs_setattr(%struct.kernfs_node* %35, %struct.iattr* %6)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %38 = call i32 @kernfs_put(%struct.kernfs_node* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(i32, i8*, i32*) #1

declare dso_local i32 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_setattr(%struct.kernfs_node*, %struct.iattr*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
