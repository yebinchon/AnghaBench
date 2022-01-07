; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_pseries_lparcfg_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_pseries_lparcfg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/rtas\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ibm,lrdr-capacity\00", align 1
@vdso_data = common dso_local global %struct.TYPE_2__* null, align 8
@FW_FEATURE_SPLPAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"purr=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tbr=%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"system_active_processors=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"system_potential_processors=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"partition_max_entitled_capacity=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"partition_entitled_capacity=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"partition_active_processors=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"partition_potential_processors=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"shared_processor_mode=%d\0A\00", align 1
@mmu_slb_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pseries_lparcfg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_lparcfg_data(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %8, align 8
  %9 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %9, %struct.device_node** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %7, align 8
  %11 = icmp ne %struct.device_node* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = call i32* @of_get_property(%struct.device_node* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %14, i32** %8, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vdso_data, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = call i32 @be32_to_cpup(i32* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = call i32 @of_node_put(%struct.device_node* %27)
  %29 = call i32 (...) @lparcfg_count_active_processors()
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @FW_FEATURE_SPLPAR, align 4
  %31 = call i64 @firmware_has_feature(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = call i32 @parse_system_parameter_string(%struct.seq_file* %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 @parse_ppp_data(%struct.seq_file* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = call i32 @parse_mpp_data(%struct.seq_file* %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = call i32 @parse_mpp_x_data(%struct.seq_file* %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @pseries_cmo_data(%struct.seq_file* %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = call i32 @splpar_dispatch_data(%struct.seq_file* %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 (...) @get_purr()
  %48 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = call i32 (...) @mftb()
  %51 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %67

52:                                               ; preds = %26
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 %60, 100
  %62 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %64, 100
  %66 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %52, %33
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = call i32 (...) @get_lppaca()
  %76 = call i32 @lppaca_shared_proc(i32 %75)
  %77 = call i32 @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = call i32 @parse_em_data(%struct.seq_file* %78)
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = call i32 @maxmem_data(%struct.seq_file* %80)
  ret i32 0
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @lparcfg_count_active_processors(...) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @parse_system_parameter_string(%struct.seq_file*) #1

declare dso_local i32 @parse_ppp_data(%struct.seq_file*) #1

declare dso_local i32 @parse_mpp_data(%struct.seq_file*) #1

declare dso_local i32 @parse_mpp_x_data(%struct.seq_file*) #1

declare dso_local i32 @pseries_cmo_data(%struct.seq_file*) #1

declare dso_local i32 @splpar_dispatch_data(%struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @get_purr(...) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @lppaca_shared_proc(i32) #1

declare dso_local i32 @get_lppaca(...) #1

declare dso_local i32 @parse_em_data(%struct.seq_file*) #1

declare dso_local i32 @maxmem_data(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
