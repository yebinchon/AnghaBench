; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_cppc_get_transition_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_cppc_get_transition_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppc_pcc_data = type { i32, i32, i32 }
%struct.cpc_desc = type { %struct.cpc_register_resource* }
%struct.cpc_register_resource = type { i32 }

@cpu_pcc_subspace_idx = common dso_local global i32 0, align 4
@cpc_desc_ptr = common dso_local global i32 0, align 4
@CPUFREQ_ETERNAL = common dso_local global i32 0, align 4
@DESIRED_PERF = common dso_local global i64 0, align 8
@pcc_data = common dso_local global %struct.cppc_pcc_data** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cppc_get_transition_latency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpc_desc*, align 8
  %6 = alloca %struct.cpc_register_resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cppc_pcc_data*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @cpu_pcc_subspace_idx, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i8* @per_cpu(i32 %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @cpc_desc_ptr, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @per_cpu(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.cpc_desc*
  store %struct.cpc_desc* %16, %struct.cpc_desc** %5, align 8
  %17 = load %struct.cpc_desc*, %struct.cpc_desc** %5, align 8
  %18 = icmp ne %struct.cpc_desc* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load %struct.cpc_desc*, %struct.cpc_desc** %5, align 8
  %23 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %22, i32 0, i32 0
  %24 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %23, align 8
  %25 = load i64, i64* @DESIRED_PERF, align 8
  %26 = getelementptr inbounds %struct.cpc_register_resource, %struct.cpc_register_resource* %24, i64 %25
  store %struct.cpc_register_resource* %26, %struct.cpc_register_resource** %6, align 8
  %27 = load %struct.cpc_register_resource*, %struct.cpc_register_resource** %6, align 8
  %28 = call i32 @CPC_IN_PCC(%struct.cpc_register_resource* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  store i32 %36, i32* %2, align 4
  br label %67

37:                                               ; preds = %32
  %38 = load %struct.cppc_pcc_data**, %struct.cppc_pcc_data*** @pcc_data, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %38, i64 %40
  %42 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %41, align 8
  store %struct.cppc_pcc_data* %42, %struct.cppc_pcc_data** %8, align 8
  %43 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %8, align 8
  %44 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %8, align 8
  %49 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 1000000000, %50
  %52 = mul nsw i32 60, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %37
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %8, align 8
  %56 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 1000
  %59 = call i32 @max(i32 %54, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.cppc_pcc_data*, %struct.cppc_pcc_data** %8, align 8
  %62 = getelementptr inbounds %struct.cppc_pcc_data, %struct.cppc_pcc_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 1000
  %65 = call i32 @max(i32 %60, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %53, %35, %30, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @per_cpu(i32, i32) #1

declare dso_local i32 @CPC_IN_PCC(%struct.cpc_register_resource*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
