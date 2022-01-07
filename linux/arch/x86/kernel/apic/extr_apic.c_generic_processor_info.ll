; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_generic_processor_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_apic.c_generic_processor_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@nr_cpu_ids = common dso_local global i32 0, align 4
@boot_cpu_physical_apicid = common dso_local global i32 0, align 4
@phys_cpu_present_map = common dso_local global i32 0, align 4
@disabled_cpu_apicid = common dso_local global i32 0, align 4
@BAD_APICID = common dso_local global i32 0, align 4
@num_processors = common dso_local global i32 0, align 4
@disabled_cpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"APIC: Disabling requested cpu. Processor %d/0x%x ignored.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [116 x i8] c"APIC: NR_CPUS/possible_cpus limit of %i almost reached. Keeping one slot for boot cpu.  Processor %d/0x%x ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"APIC: NR_CPUS/possible_cpus limit of %i reached. Processor %d/0x%x ignored.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cpuid_to_apicid = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"BIOS bug: APIC version is 0 for CPU %d/0x%x, fixing up to 0x10\0A\00", align 1
@boot_cpu_apic_version = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"BIOS bug: APIC version mismatch, boot CPU: %x, CPU %d: version %x\0A\00", align 1
@max_physical_apicid = common dso_local global i32 0, align 4
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@x86_bios_cpu_apicid = common dso_local global i32 0, align 4
@x86_cpu_to_apicid = common dso_local global i32 0, align 4
@x86_cpu_to_logical_apicid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_processor_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @nr_cpu_ids, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @boot_cpu_physical_apicid, align 4
  %14 = load i32, i32* @phys_cpu_present_map, align 4
  %15 = call i32 @physid_isset(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @disabled_cpu_apicid, align 4
  %17 = load i32, i32* @BAD_APICID, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* @disabled_cpu_apicid, align 4
  %21 = call i32 (...) @read_apic_id()
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32, i32* @disabled_cpu_apicid, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* @num_processors, align 4
  %29 = load i32, i32* @disabled_cpus, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @disabled_cpus, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @disabled_cpus, align 4
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %131

38:                                               ; preds = %23, %19, %2
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @num_processors, align 4
  %43 = load i32, i32* @nr_cpu_ids, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @boot_cpu_physical_apicid, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @disabled_cpus, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @disabled_cpus, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @disabled_cpus, align 4
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %131

63:                                               ; preds = %46, %41, %38
  %64 = load i32, i32* @num_processors, align 4
  %65 = load i32, i32* @nr_cpu_ids, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @disabled_cpus, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @disabled_cpus, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @disabled_cpus, align 4
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %131

79:                                               ; preds = %63
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @boot_cpu_physical_apicid, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32*, i32** @cpuid_to_apicid, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  br label %98

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @allocate_logical_cpuid(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @disabled_cpus, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @disabled_cpus, align 4
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %131

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %83
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %103)
  store i32 16, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @boot_cpu_apic_version, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* @boot_cpu_apic_version, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (i8*, i32, i32, ...) @pr_warning(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @max_physical_apicid, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* @max_physical_apicid, align 4
  br label %120

120:                                              ; preds = %118, %114
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @set_cpu_possible(i32 %121, i32 1)
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @phys_cpu_present_map, align 4
  %125 = call i32 @physid_set(i32 %123, i32 %124)
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @set_cpu_present(i32 %126, i32 1)
  %128 = load i32, i32* @num_processors, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @num_processors, align 4
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %120, %92, %67, %50, %27
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @physid_isset(i32, i32) #1

declare dso_local i32 @read_apic_id(...) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, ...) #1

declare dso_local i32 @allocate_logical_cpuid(i32) #1

declare dso_local i32 @set_cpu_possible(i32, i32) #1

declare dso_local i32 @physid_set(i32, i32) #1

declare dso_local i32 @set_cpu_present(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
