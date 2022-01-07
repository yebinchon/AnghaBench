; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_kernfs_to_rdtgroup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_kernfs_to_rdtgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.rdtgroup*, %struct.kernfs_node* }
%struct.rdtgroup = type { i32 }

@KERNFS_DIR = common dso_local global i64 0, align 8
@kn_info = common dso_local global %struct.kernfs_node* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rdtgroup* (%struct.kernfs_node*)* @kernfs_to_rdtgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rdtgroup* @kernfs_to_rdtgroup(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.rdtgroup*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %5 = call i64 @kernfs_type(%struct.kernfs_node* %4)
  %6 = load i64, i64* @KERNFS_DIR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** @kn_info, align 8
  %11 = icmp eq %struct.kernfs_node* %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %14 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %13, i32 0, i32 1
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %14, align 8
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** @kn_info, align 8
  %17 = icmp eq %struct.kernfs_node* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %8
  store %struct.rdtgroup* null, %struct.rdtgroup** %2, align 8
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %21 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %20, i32 0, i32 0
  %22 = load %struct.rdtgroup*, %struct.rdtgroup** %21, align 8
  store %struct.rdtgroup* %22, %struct.rdtgroup** %2, align 8
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %25 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %24, i32 0, i32 1
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %25, align 8
  %27 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %26, i32 0, i32 0
  %28 = load %struct.rdtgroup*, %struct.rdtgroup** %27, align 8
  store %struct.rdtgroup* %28, %struct.rdtgroup** %2, align 8
  br label %29

29:                                               ; preds = %23, %19, %18
  %30 = load %struct.rdtgroup*, %struct.rdtgroup** %2, align 8
  ret %struct.rdtgroup* %30
}

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
