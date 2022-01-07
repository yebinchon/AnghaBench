; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_mkdir_rdt_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_mkdir_rdt_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.rdtgroup = type { i64, i32, %struct.kernfs_node*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.rdtgroup* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Directory was removed\0A\00", align 1
@RDTMON_GROUP = common dso_local global i32 0, align 4
@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i64 0, align 8
@RDT_MODE_PSEUDO_LOCKED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Pseudo-locking in progress\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Kernel out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"kernfs create error\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"kernfs perm error\0A\00", align 1
@RFTYPE_BASE = common dso_local global i32 0, align 4
@RF_CTRLSHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"kernfs fill error\0A\00", align 1
@rdt_mon_capable = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"Out of RMIDs\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"kernfs subdir error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*, i32, i32, %struct.rdtgroup**)* @mkdir_rdt_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkdir_rdt_prepare(%struct.kernfs_node* %0, %struct.kernfs_node* %1, i8* %2, i32 %3, i32 %4, %struct.rdtgroup** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rdtgroup**, align 8
  %14 = alloca %struct.rdtgroup*, align 8
  %15 = alloca %struct.rdtgroup*, align 8
  %16 = alloca %struct.kernfs_node*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %8, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.rdtgroup** %5, %struct.rdtgroup*** %13, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %20 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(%struct.kernfs_node* %19)
  store %struct.rdtgroup* %20, %struct.rdtgroup** %14, align 8
  %21 = call i32 (...) @rdt_last_cmd_clear()
  %22 = load %struct.rdtgroup*, %struct.rdtgroup** %14, align 8
  %23 = icmp ne %struct.rdtgroup* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %18, align 4
  %27 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %151

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @RDTMON_GROUP, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load %struct.rdtgroup*, %struct.rdtgroup** %14, align 8
  %34 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.rdtgroup*, %struct.rdtgroup** %14, align 8
  %40 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RDT_MODE_PSEUDO_LOCKED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %18, align 4
  %47 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %151

48:                                               ; preds = %38, %28
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.rdtgroup* @kzalloc(i32 48, i32 %49)
  store %struct.rdtgroup* %50, %struct.rdtgroup** %15, align 8
  %51 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %52 = icmp ne %struct.rdtgroup* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOSPC, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %18, align 4
  %56 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %151

57:                                               ; preds = %48
  %58 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %59 = load %struct.rdtgroup**, %struct.rdtgroup*** %13, align 8
  store %struct.rdtgroup* %58, %struct.rdtgroup** %59, align 8
  %60 = load %struct.rdtgroup*, %struct.rdtgroup** %14, align 8
  %61 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %62 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store %struct.rdtgroup* %60, %struct.rdtgroup** %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %66 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %68 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %75 = call %struct.kernfs_node* @kernfs_create_dir(%struct.kernfs_node* %71, i8* %72, i32 %73, %struct.rdtgroup* %74)
  store %struct.kernfs_node* %75, %struct.kernfs_node** %16, align 8
  %76 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %77 = call i64 @IS_ERR(%struct.kernfs_node* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %57
  %80 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %81 = call i32 @PTR_ERR(%struct.kernfs_node* %80)
  store i32 %81, i32* %18, align 4
  %82 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %148

83:                                               ; preds = %57
  %84 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %85 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %86 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %85, i32 0, i32 2
  store %struct.kernfs_node* %84, %struct.kernfs_node** %86, align 8
  %87 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %88 = call i32 @kernfs_get(%struct.kernfs_node* %87)
  %89 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %90 = call i32 @rdtgroup_kn_set_ugid(%struct.kernfs_node* %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %143

95:                                               ; preds = %83
  %96 = load i32, i32* @RFTYPE_BASE, align 4
  %97 = load i32, i32* @RF_CTRLSHIFT, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %97, %98
  %100 = call i32 @BIT(i32 %99)
  %101 = or i32 %96, %100
  store i32 %101, i32* %17, align 4
  %102 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @rdtgroup_add_files(%struct.kernfs_node* %102, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %143

109:                                              ; preds = %95
  %110 = load i64, i64* @rdt_mon_capable, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = call i32 (...) @alloc_rmid()
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %143

118:                                              ; preds = %112
  %119 = load i32, i32* %18, align 4
  %120 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %121 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %124 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %125 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %126 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = call i32 @mkdir_mondata_all(%struct.kernfs_node* %123, %struct.rdtgroup* %124, i32* %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %118
  %132 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %137

133:                                              ; preds = %118
  br label %134

134:                                              ; preds = %133, %109
  %135 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %136 = call i32 @kernfs_activate(%struct.kernfs_node* %135)
  store i32 0, i32* %7, align 4
  br label %155

137:                                              ; preds = %131
  %138 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %139 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @free_rmid(i32 %141)
  br label %143

143:                                              ; preds = %137, %116, %107, %93
  %144 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %145 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %144, i32 0, i32 2
  %146 = load %struct.kernfs_node*, %struct.kernfs_node** %145, align 8
  %147 = call i32 @kernfs_remove(%struct.kernfs_node* %146)
  br label %148

148:                                              ; preds = %143, %79
  %149 = load %struct.rdtgroup*, %struct.rdtgroup** %15, align 8
  %150 = call i32 @kfree(%struct.rdtgroup* %149)
  br label %151

151:                                              ; preds = %148, %53, %44, %24
  %152 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %153 = call i32 @rdtgroup_kn_unlock(%struct.kernfs_node* %152)
  %154 = load i32, i32* %18, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %151, %134
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(%struct.kernfs_node*) #1

declare dso_local i32 @rdt_last_cmd_clear(...) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local %struct.rdtgroup* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_create_dir(%struct.kernfs_node*, i8*, i32, %struct.rdtgroup*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @rdtgroup_kn_set_ugid(%struct.kernfs_node*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rdtgroup_add_files(%struct.kernfs_node*, i32) #1

declare dso_local i32 @alloc_rmid(...) #1

declare dso_local i32 @mkdir_mondata_all(%struct.kernfs_node*, %struct.rdtgroup*, i32*) #1

declare dso_local i32 @kernfs_activate(%struct.kernfs_node*) #1

declare dso_local i32 @free_rmid(i32) #1

declare dso_local i32 @kernfs_remove(%struct.kernfs_node*) #1

declare dso_local i32 @kfree(%struct.rdtgroup*) #1

declare dso_local i32 @rdtgroup_kn_unlock(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
