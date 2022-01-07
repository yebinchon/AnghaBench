; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_cpus_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_cpus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.rdtgroup = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Directory was removed\0A\00", align 1
@RDT_MODE_PSEUDO_LOCKED = common dso_local global i64 0, align 8
@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Pseudo-locking in progress\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad CPU list/mask\0A\00", align 1
@cpu_online_mask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Can only assign online CPUs\0A\00", align 1
@RDTCTRL_GROUP = common dso_local global i64 0, align 8
@RDTMON_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @rdtgroup_cpus_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rdtgroup_cpus_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rdtgroup*, align 8
  %14 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %154

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @zalloc_cpumask_var(i32* %10, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %154

27:                                               ; preds = %20
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @zalloc_cpumask_var(i32* %11, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @free_cpumask_var(i32 %32)
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %154

36:                                               ; preds = %27
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @zalloc_cpumask_var(i32* %12, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @free_cpumask_var(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @free_cpumask_var(i32 %43)
  %45 = load i64, i64* @ENOMEM, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %5, align 8
  br label %154

47:                                               ; preds = %36
  %48 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %49 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(i32 %50)
  store %struct.rdtgroup* %51, %struct.rdtgroup** %13, align 8
  %52 = call i32 (...) @rdt_last_cmd_clear()
  %53 = load %struct.rdtgroup*, %struct.rdtgroup** %13, align 8
  %54 = icmp ne %struct.rdtgroup* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %14, align 4
  %58 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %135

59:                                               ; preds = %47
  %60 = load %struct.rdtgroup*, %struct.rdtgroup** %13, align 8
  %61 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RDT_MODE_PSEUDO_LOCKED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.rdtgroup*, %struct.rdtgroup** %13, align 8
  %67 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RDT_MODE_PSEUDO_LOCKSETUP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65, %59
  %72 = load i64, i64* @EINVAL, align 8
  %73 = sub i64 0, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %135

76:                                               ; preds = %65
  %77 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %78 = call i64 @is_cpu_list(%struct.kernfs_open_file* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @cpulist_parse(i8* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  br label %88

84:                                               ; preds = %76
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @cpumask_parse(i8* %85, i32 %86)
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %135

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @cpu_online_mask, align 4
  %97 = call i32 @cpumask_andnot(i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @cpumask_weight(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i64, i64* @EINVAL, align 8
  %103 = sub i64 0, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  %105 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %135

106:                                              ; preds = %93
  %107 = load %struct.rdtgroup*, %struct.rdtgroup** %13, align 8
  %108 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RDTCTRL_GROUP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.rdtgroup*, %struct.rdtgroup** %13, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @cpus_ctrl_write(%struct.rdtgroup* %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %14, align 4
  br label %134

118:                                              ; preds = %106
  %119 = load %struct.rdtgroup*, %struct.rdtgroup** %13, align 8
  %120 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @RDTMON_GROUP, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load %struct.rdtgroup*, %struct.rdtgroup** %13, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @cpus_mon_write(%struct.rdtgroup* %125, i32 %126, i32 %127)
  store i32 %128, i32* %14, align 4
  br label %133

129:                                              ; preds = %118
  %130 = load i64, i64* @EINVAL, align 8
  %131 = sub i64 0, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %129, %124
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134, %101, %91, %71, %55
  %136 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %137 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rdtgroup_kn_unlock(i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @free_cpumask_var(i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @free_cpumask_var(i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @free_cpumask_var(i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = sext i32 %146 to i64
  br label %152

150:                                              ; preds = %135
  %151 = load i64, i64* %8, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i64 [ %149, %148 ], [ %151, %150 ]
  store i64 %153, i64* %5, align 8
  br label %154

154:                                              ; preds = %152, %40, %31, %24, %17
  %155 = load i64, i64* %5, align 8
  ret i64 %155
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(i32) #1

declare dso_local i32 @rdt_last_cmd_clear(...) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i64 @is_cpu_list(%struct.kernfs_open_file*) #1

declare dso_local i32 @cpulist_parse(i8*, i32) #1

declare dso_local i32 @cpumask_parse(i8*, i32) #1

declare dso_local i32 @cpumask_andnot(i32, i32, i32) #1

declare dso_local i64 @cpumask_weight(i32) #1

declare dso_local i32 @cpus_ctrl_write(%struct.rdtgroup*, i32, i32, i32) #1

declare dso_local i32 @cpus_mon_write(%struct.rdtgroup*, i32, i32) #1

declare dso_local i32 @rdtgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
