; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_nb.c_amd_cache_northbridges.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_amd_nb.c_amd_cache_northbridges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.amd_northbridge* }
%struct.amd_northbridge = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev* }

@amd_nb_misc_ids = common dso_local global %struct.pci_device_id* null, align 8
@amd_nb_link_ids = common dso_local global %struct.pci_device_id* null, align 8
@amd_root_ids = common dso_local global %struct.pci_device_id* null, align 8
@amd_northbridges = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@boot_cpu_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@X86_VENDOR_HYGON = common dso_local global i64 0, align 8
@hygon_root_ids = common dso_local global %struct.pci_device_id* null, align 8
@hygon_nb_misc_ids = common dso_local global %struct.pci_device_id* null, align 8
@hygon_nb_link_ids = common dso_local global %struct.pci_device_id* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unsupported AMD DF/PCI configuration found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMD_NB_GART = common dso_local global i32 0, align 4
@AMD_NB_L3_INDEX_DISABLE = common dso_local global i32 0, align 4
@AMD_NB_L3_PARTITIONING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_cache_northbridges() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_device_id*, align 8
  %3 = alloca %struct.pci_device_id*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.amd_northbridge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load %struct.pci_device_id*, %struct.pci_device_id** @amd_nb_misc_ids, align 8
  store %struct.pci_device_id* %14, %struct.pci_device_id** %2, align 8
  %15 = load %struct.pci_device_id*, %struct.pci_device_id** @amd_nb_link_ids, align 8
  store %struct.pci_device_id* %15, %struct.pci_device_id** %3, align 8
  %16 = load %struct.pci_device_id*, %struct.pci_device_id** @amd_root_ids, align 8
  store %struct.pci_device_id* %16, %struct.pci_device_id** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 0), align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %163

20:                                               ; preds = %0
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 0), align 8
  %22 = load i64, i64* @X86_VENDOR_HYGON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.pci_device_id*, %struct.pci_device_id** @hygon_root_ids, align 8
  store %struct.pci_device_id* %25, %struct.pci_device_id** %4, align 8
  %26 = load %struct.pci_device_id*, %struct.pci_device_id** @hygon_nb_misc_ids, align 8
  store %struct.pci_device_id* %26, %struct.pci_device_id** %2, align 8
  %27 = load %struct.pci_device_id*, %struct.pci_device_id** @hygon_nb_link_ids, align 8
  store %struct.pci_device_id* %27, %struct.pci_device_id** %3, align 8
  br label %28

28:                                               ; preds = %24, %20
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  br label %29

29:                                               ; preds = %34, %28
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = load %struct.pci_device_id*, %struct.pci_device_id** %2, align 8
  %32 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %30, %struct.pci_device_id* %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %6, align 8
  %33 = icmp ne %struct.pci_dev* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %29

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %1, align 4
  br label %163

43:                                               ; preds = %37
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  br label %44

44:                                               ; preds = %49, %43
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %47 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %45, %struct.pci_device_id* %46)
  store %struct.pci_dev* %47, %struct.pci_dev** %5, align 8
  %48 = icmp ne %struct.pci_dev* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %44

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = srem i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %55
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %1, align 4
  br label %163

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %52
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.amd_northbridge* @kcalloc(i32 %72, i32 4, i32 %73)
  store %struct.amd_northbridge* %74, %struct.amd_northbridge** %8, align 8
  %75 = load %struct.amd_northbridge*, %struct.amd_northbridge** %8, align 8
  %76 = icmp ne %struct.amd_northbridge* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %1, align 4
  br label %163

80:                                               ; preds = %71
  %81 = load %struct.amd_northbridge*, %struct.amd_northbridge** %8, align 8
  store %struct.amd_northbridge* %81, %struct.amd_northbridge** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 2), align 8
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 0), align 8
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %118, %80
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 0), align 8
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %90 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %88, %struct.pci_device_id* %89)
  store %struct.pci_dev* %90, %struct.pci_dev** %5, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call %struct.TYPE_4__* @node_to_amd_nb(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store %struct.pci_dev* %90, %struct.pci_dev** %93, align 8
  %94 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %95 = load %struct.pci_device_id*, %struct.pci_device_id** %2, align 8
  %96 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %94, %struct.pci_device_id* %95)
  store %struct.pci_dev* %96, %struct.pci_dev** %6, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call %struct.TYPE_4__* @node_to_amd_nb(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store %struct.pci_dev* %96, %struct.pci_dev** %99, align 8
  %100 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %101 = load %struct.pci_device_id*, %struct.pci_device_id** %3, align 8
  %102 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %100, %struct.pci_device_id* %101)
  store %struct.pci_dev* %102, %struct.pci_dev** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call %struct.TYPE_4__* @node_to_amd_nb(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store %struct.pci_dev* %102, %struct.pci_dev** %105, align 8
  store i32 1, i32* %13, align 4
  br label %106

106:                                              ; preds = %114, %87
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %112 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %113 = call %struct.pci_dev* @next_northbridge(%struct.pci_dev* %111, %struct.pci_device_id* %112)
  store %struct.pci_dev* %113, %struct.pci_dev** %5, align 8
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %106

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %83

121:                                              ; preds = %83
  %122 = call i64 (...) @amd_gart_present()
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* @AMD_NB_GART, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = call i32 @cpuid_edx(i32 -2147483642)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  store i32 0, i32* %1, align 4
  br label %163

132:                                              ; preds = %128
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 1), align 8
  %134 = icmp eq i32 %133, 16
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 2), align 4
  %137 = icmp sge i32 %136, 8
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 2), align 4
  %140 = icmp sgt i32 %139, 9
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 3), align 8
  %143 = icmp sge i32 %142, 1
  br i1 %143, label %144, label %148

144:                                              ; preds = %141, %138
  %145 = load i32, i32* @AMD_NB_L3_INDEX_DISABLE, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %148

148:                                              ; preds = %144, %141, %135, %132
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 1), align 8
  %150 = icmp eq i32 %149, 21
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* @AMD_NB_L3_INDEX_DISABLE, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @boot_cpu_data, i32 0, i32 1), align 8
  %157 = icmp eq i32 %156, 21
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* @AMD_NB_L3_PARTITIONING, align 4
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @amd_northbridges, i32 0, i32 1), align 4
  br label %162

162:                                              ; preds = %158, %155
  store i32 0, i32* %1, align 4
  br label %163

163:                                              ; preds = %162, %131, %77, %66, %40, %19
  %164 = load i32, i32* %1, align 4
  ret i32 %164
}

declare dso_local %struct.pci_dev* @next_northbridge(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.amd_northbridge* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @node_to_amd_nb(i32) #1

declare dso_local i64 @amd_gart_present(...) #1

declare dso_local i32 @cpuid_edx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
