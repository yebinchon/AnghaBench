; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_ppp_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_ppp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hvcall_ppp_data = type { i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"partition_entitled_capacity=%lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"group=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"system_active_processors=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pool=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"pool_capacity=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"pool_idle_time=%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"pool_num_procs=%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"unallocated_capacity_weight=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"capacity_weight=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"capped=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"unallocated_capacity=%lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"ibm,partition-performance-parameters-level\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"physical_procs_allocated_to_virtualization=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"max_proc_capacity_available=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"entitled_proc_capacity_available=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @parse_ppp_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ppp_data(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.hvcall_ppp_data, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %9 = call i32 @h_get_ppp(%struct.hvcall_ppp_data* %3)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %92

13:                                               ; preds = %1
  %14 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %15 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %19 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %23 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  %26 = call i32 (...) @get_lppaca()
  %27 = call i64 @lppaca_shared_proc(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %13
  %30 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %31 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %35 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 100
  %38 = sext i32 %37 to i64
  %39 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  %40 = call i32 @h_pic(i64* %7, i64* %8)
  %41 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %45)
  br label %47

47:                                               ; preds = %29, %13
  %48 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %49 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %53 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %57 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %61 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64 %62)
  %64 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct.device_node* %64, %struct.device_node** %4, align 8
  %65 = load %struct.device_node*, %struct.device_node** %4, align 8
  %66 = icmp ne %struct.device_node* %65, null
  br i1 %66, label %67, label %92

67:                                               ; preds = %47
  %68 = load %struct.device_node*, %struct.device_node** %4, align 8
  %69 = call i32* @of_get_property(%struct.device_node* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32* null)
  store i32* %69, i32** %5, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @be32_to_cpup(i32* %73)
  %75 = icmp sge i32 %74, 1
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %78 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i64 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %82 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i64 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %86 = getelementptr inbounds %struct.hvcall_ppp_data, %struct.hvcall_ppp_data* %3, i32 0, i32 11
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %76, %72, %67
  %90 = load %struct.device_node*, %struct.device_node** %4, align 8
  %91 = call i32 @of_node_put(%struct.device_node* %90)
  br label %92

92:                                               ; preds = %12, %89, %47
  ret void
}

declare dso_local i32 @h_get_ppp(%struct.hvcall_ppp_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @lppaca_shared_proc(i32) #1

declare dso_local i32 @get_lppaca(...) #1

declare dso_local i32 @h_pic(i64*, i64*) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
