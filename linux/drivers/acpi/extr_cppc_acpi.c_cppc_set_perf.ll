; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_cppc_set_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_cppc_set_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_pcc_data = type { i32, i64, i32, i32, i64 }
%struct.cppc_perf_ctrls = type { i32 }
%struct.cpc_desc = type { i64, i32, %struct.cpc_register_resource* }
%struct.cpc_register_resource = type { i32 }

@cpc_desc_ptr = common dso_local global i32 0, align 4
@cpu_pcc_subspace_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No CPC descriptor for CPU:%d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DESIRED_PERF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid pcc_ss_id\0A\00", align 1
@pcc_data = common dso_local global %struct.cppc_pcc_data** null, align 8
@CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cppc_set_perf(i32 %0, %struct.cppc_perf_ctrls* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cppc_perf_ctrls*, align 8
  %6 = alloca %struct.cpc_desc*, align 8
  %7 = alloca %struct.cpc_register_resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cppc_pcc_data*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cppc_perf_ctrls* %1, %struct.cppc_perf_ctrls** %5, align 8
  %11 = load i32, i32* @cpc_desc_ptr, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.cpc_desc* @per_cpu(i32 %11, i32 %12)
  store %struct.cpc_desc* %13, %struct.cpc_desc** %6, align 8
  %14 = load i32, i32* @cpu_pcc_subspace_idx, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.cpc_desc* @per_cpu(i32 %14, i32 %15)
  %17 = ptrtoint %struct.cpc_desc* %16 to i32
  store i32 %17, i32* %8, align 4
  store %struct.cppc_pcc_data* null, %struct.cppc_pcc_data** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %19 = icmp ne %struct.cpc_desc* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %130

25:                                               ; preds = %2
  %26 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %27 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %26, i32 0, i32 2
  %28 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %27, align 8
  %29 = load i64, i64* @DESIRED_PERF, align 8
  %30 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %28, i64 %29
  store %struct.cpc_register_resource* %30, %struct.cpc_register_resource** %7, align 8
  %31 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %7, align 8
  %32 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %130

41:                                               ; preds = %34
  %42 = load %struct.cppc_pcc_data**, %struct.cppc_pcc_data*** @pcc_data, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %42, i64 %44
  %46 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %45, align 8
  store %struct.cppc_pcc_data* %46, %struct.cppc_pcc_data** %9, align 8
  %47 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %48 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %47, i32 0, i32 3
  %49 = call i32 @down_read(i32* %48)
  %50 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %51 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @check_pcc_chan(i32 %55, i32 0)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %61 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %60, i32 0, i32 3
  %62 = call i32 @up_read(i32* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %130

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %67 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %69 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %72 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %74 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %73, i32 0, i32 1
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %65, %25
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %7, align 8
  %78 = load %struct.cppc_perf_ctrls*, %struct.cppc_perf_ctrls** %5, align 8
  %79 = getelementptr inbounds %struct.cppc_perf_ctrls, %struct.cppc_perf_ctrls* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpc_write(i32 %76, %struct.cpc_register_resource* %77, i32 %80)
  %82 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %7, align 8
  %83 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %87 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %86, i32 0, i32 3
  %88 = call i32 @up_read(i32* %87)
  br label %89

89:                                               ; preds = %85, %75
  %90 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %7, align 8
  %91 = call i64 @CPC_IN_PCC(%struct.cpc_register_resource* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %128

93:                                               ; preds = %89
  %94 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %95 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %94, i32 0, i32 3
  %96 = call i64 @down_write_trylock(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %100 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @CMD_WRITE, align 4
  %106 = call i32 @send_pcc_cmd(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %109 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %108, i32 0, i32 3
  %110 = call i32 @up_write(i32* %109)
  br label %124

111:                                              ; preds = %93
  %112 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %113 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %116 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %9, align 8
  %119 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @wait_event(i32 %114, i32 %122)
  br label %124

124:                                              ; preds = %111, %107
  %125 = load %struct.cpc_desc*, %struct.cpc_desc** %6, align 8
  %126 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %124, %89
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %59, %37, %20
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.cpc_desc* @per_cpu(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @CPC_IN_PCC(%struct.cpc_register_resource*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @check_pcc_chan(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @cpc_write(i32, %struct.cpc_register_resource*, i32) #1

declare dso_local i64 @down_write_trylock(i32*) #1

declare dso_local i32 @send_pcc_cmd(i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
