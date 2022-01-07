; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mkdir_ctrl_mon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mkdir_ctrl_mon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.rdtgroup = type { i32, i32, %struct.kernfs_node* }

@RDTCTRL_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of CLOSIDs\0A\00", align 1
@rdt_all_groups = common dso_local global i32 0, align 4
@rdt_mon_capable = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"mon_groups\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"kernfs subdir error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*, i32)* @rdtgroup_mkdir_ctrl_mon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_mkdir_ctrl_mon(%struct.kernfs_node* %0, %struct.kernfs_node* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdtgroup*, align 8
  %11 = alloca %struct.kernfs_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @RDTCTRL_GROUP, align 4
  %19 = call i32 @mkdir_rdt_prepare(%struct.kernfs_node* %14, %struct.kernfs_node* %15, i8* %16, i32 %17, i32 %18, %struct.rdtgroup** %10)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %72

24:                                               ; preds = %4
  %25 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %26 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %25, i32 0, i32 2
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %26, align 8
  store %struct.kernfs_node* %27, %struct.kernfs_node** %11, align 8
  %28 = call i32 (...) @closid_alloc()
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %65

33:                                               ; preds = %24
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %37 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %39 = call i32 @rdtgroup_init_alloc(%struct.rdtgroup* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %62

43:                                               ; preds = %33
  %44 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %45 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %44, i32 0, i32 1
  %46 = call i32 @list_add(i32* %45, i32* @rdt_all_groups)
  %47 = load i64, i64* @rdt_mon_capable, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %51 = call i32 @mongroup_create_dir(%struct.kernfs_node* %50, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %58

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %43
  br label %68

58:                                               ; preds = %54
  %59 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %60 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %59, i32 0, i32 1
  %61 = call i32 @list_del(i32* %60)
  br label %62

62:                                               ; preds = %58, %42
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @closid_free(i32 %63)
  br label %65

65:                                               ; preds = %62, %31
  %66 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %67 = call i32 @mkdir_rdt_prepare_clean(%struct.rdtgroup* %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %70 = call i32 @rdtgroup_kn_unlock(%struct.kernfs_node* %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %22
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @mkdir_rdt_prepare(%struct.kernfs_node*, %struct.kernfs_node*, i8*, i32, i32, %struct.rdtgroup**) #1

declare dso_local i32 @closid_alloc(...) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @rdtgroup_init_alloc(%struct.rdtgroup*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mongroup_create_dir(%struct.kernfs_node*, i32*, i8*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @closid_free(i32) #1

declare dso_local i32 @mkdir_rdt_prepare_clean(%struct.rdtgroup*) #1

declare dso_local i32 @rdtgroup_kn_unlock(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
