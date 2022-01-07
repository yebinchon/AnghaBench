; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_apply_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_apply_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_config = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cpuinfo_x86 = type { i64, i32, i32 }
%struct.mce_bank = type { i64, i64 }

@mce_banks_array = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.mca_config zeroinitializer, align 8
@X86_VENDOR_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"unknown CPU type - not enabling MCE support\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@X86_VENDOR_AMD = common dso_local global i64 0, align 8
@mce_num_banks = common dso_local global i32 0, align 4
@mce_flags = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@quirk_sandybridge_ifu = common dso_local global i32 0, align 4
@quirk_no_way_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_x86*)* @__mcheck_cpu_apply_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mcheck_cpu_apply_quirks(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_x86*, align 8
  %4 = alloca %struct.mce_bank*, align 8
  %5 = alloca %struct.mca_config*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %3, align 8
  %6 = load i32, i32* @mce_banks_array, align 4
  %7 = call %struct.mce_bank* @this_cpu_ptr(i32 %6)
  store %struct.mce_bank* %7, %struct.mce_bank** %4, align 8
  store %struct.mca_config* @mca_cfg, %struct.mca_config** %5, align 8
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %9 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @X86_VENDOR_UNKNOWN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %171

17:                                               ; preds = %1
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @X86_VENDOR_AMD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %17
  %24 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %25 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 15
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* @mce_num_banks, align 4
  %30 = call i32 @this_cpu_read(i32 %29)
  %31 = icmp sgt i32 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.mce_bank*, %struct.mce_bank** %4, align 8
  %34 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %33, i64 4
  %35 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %34, i32 0, i32 1
  %36 = call i32 @clear_bit(i32 10, i64* %35)
  br label %37

37:                                               ; preds = %32, %28, %23
  %38 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %39 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 17
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %44 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %49 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %42, %37
  %51 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %52 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @mce_num_banks, align 4
  %57 = call i32 @this_cpu_read(i32 %56)
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.mce_bank*, %struct.mce_bank** %4, align 8
  %61 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %60, i64 0
  %62 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %55, %50
  %64 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %65 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 21
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %70 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %71, 15
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mce_flags, i32 0, i32 0), align 4
  br label %74

74:                                               ; preds = %73, %68, %63
  br label %75

75:                                               ; preds = %74, %17
  %76 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %77 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %154

81:                                               ; preds = %75
  %82 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %83 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %88 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 26
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* @mce_num_banks, align 4
  %93 = call i32 @this_cpu_read(i32 %92)
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.mce_bank*, %struct.mce_bank** %4, align 8
  %97 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %96, i64 0
  %98 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %91, %86, %81
  %100 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %101 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 6
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %106 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 6
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %111 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 14
  br i1 %113, label %114, label %123

114:                                              ; preds = %109, %99
  %115 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %116 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i64, i64* @USEC_PER_SEC, align 8
  %121 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %122 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %114, %109, %104
  %124 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %125 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 6
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %130 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %131, 13
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %135 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %140 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %133, %128, %123
  %142 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %143 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 6
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %148 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 45
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @quirk_sandybridge_ifu, align 4
  store i32 %152, i32* @quirk_no_way_out, align 4
  br label %153

153:                                              ; preds = %151, %146, %141
  br label %154

154:                                              ; preds = %153, %75
  %155 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %156 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %161 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %154
  %163 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %164 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load %struct.mca_config*, %struct.mca_config** %5, align 8
  %169 = getelementptr inbounds %struct.mca_config, %struct.mca_config* %168, i32 0, i32 2
  store i32 30, i32* %169, align 8
  br label %170

170:                                              ; preds = %167, %162
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %13
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.mce_bank* @this_cpu_ptr(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
