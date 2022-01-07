; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@rdt_alloc_capable = common dso_local global i64 0, align 8
@rdtgroup_default = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@rdt_mon_capable = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, i8*, i32)* @rdtgroup_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_mkdir(%struct.kernfs_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @strchr(i8* %8, i8 signext 10)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %46

14:                                               ; preds = %3
  %15 = load i64, i64* @rdt_alloc_capable, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rdtgroup_default, i32 0, i32 0), align 8
  %20 = icmp eq %struct.kernfs_node* %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @rdtgroup_mkdir_ctrl_mon(%struct.kernfs_node* %22, %struct.kernfs_node* %23, i8* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %17, %14
  %28 = load i64, i64* @rdt_mon_capable, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @is_mon_groups(%struct.kernfs_node* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %38 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rdtgroup_mkdir_mon(%struct.kernfs_node* %36, i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %30, %27
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %35, %21, %11
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @rdtgroup_mkdir_ctrl_mon(%struct.kernfs_node*, %struct.kernfs_node*, i8*, i32) #1

declare dso_local i64 @is_mon_groups(%struct.kernfs_node*, i8*) #1

declare dso_local i32 @rdtgroup_mkdir_mon(%struct.kernfs_node*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
