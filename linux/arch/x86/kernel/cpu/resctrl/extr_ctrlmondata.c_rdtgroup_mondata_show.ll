; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_rdtgroup_mondata_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_ctrlmondata.c_rdtgroup_mondata_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_resource = type { i32 }
%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rdtgroup = type { i32 }
%union.mon_data_bits = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.rdt_domain = type { i32 }
%struct.rmid_read = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@rdt_resources_all = common dso_local global %struct.rdt_resource* null, align 8
@RMID_VAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Error\0A\00", align 1
@RMID_VAL_UNAVAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Unavailable\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdtgroup_mondata_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rdtgroup*, align 8
  %10 = alloca %struct.rdt_resource*, align 8
  %11 = alloca %union.mon_data_bits, align 8
  %12 = alloca %struct.rdt_domain*, align 8
  %13 = alloca %struct.rmid_read, align 4
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %16, align 8
  store %struct.kernfs_open_file* %17, %struct.kernfs_open_file** %5, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %19 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(%struct.TYPE_5__* %20)
  store %struct.rdtgroup* %21, %struct.rdtgroup** %9, align 8
  %22 = load %struct.rdtgroup*, %struct.rdtgroup** %9, align 8
  %23 = icmp ne %struct.rdtgroup* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  br label %88

27:                                               ; preds = %2
  %28 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %29 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = bitcast %union.mon_data_bits* %11 to i32*
  store i32 %32, i32* %33, align 8
  %34 = bitcast %union.mon_data_bits* %11 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = bitcast %union.mon_data_bits* %11 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = bitcast %union.mon_data_bits* %11 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load %struct.rdt_resource*, %struct.rdt_resource** @rdt_resources_all, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %43, i64 %44
  store %struct.rdt_resource* %45, %struct.rdt_resource** %10, align 8
  %46 = load %struct.rdt_resource*, %struct.rdt_resource** %10, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource* %46, i64 %47, i32* null)
  store %struct.rdt_domain* %48, %struct.rdt_domain** %12, align 8
  %49 = load %struct.rdt_domain*, %struct.rdt_domain** %12, align 8
  %50 = call i64 @IS_ERR_OR_NULL(%struct.rdt_domain* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %27
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %88

55:                                               ; preds = %27
  %56 = load %struct.rdt_domain*, %struct.rdt_domain** %12, align 8
  %57 = load %struct.rdtgroup*, %struct.rdtgroup** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @mon_event_read(%struct.rmid_read* %13, %struct.rdt_domain* %56, %struct.rdtgroup* %57, i64 %58, i32 0)
  %60 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RMID_VAL_ERROR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 @seq_puts(%struct.seq_file* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %87

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %13, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RMID_VAL_UNAVAIL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = call i32 @seq_puts(%struct.seq_file* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %86

77:                                               ; preds = %68
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rdt_resource*, %struct.rdt_resource** %10, align 8
  %82 = getelementptr inbounds %struct.rdt_resource, %struct.rdt_resource* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %77, %74
  br label %87

87:                                               ; preds = %86, %65
  br label %88

88:                                               ; preds = %87, %52, %24
  %89 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %90 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = call i32 @rdtgroup_kn_unlock(%struct.TYPE_5__* %91)
  %93 = load i32, i32* %14, align 4
  ret i32 %93
}

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(%struct.TYPE_5__*) #1

declare dso_local %struct.rdt_domain* @rdt_find_domain(%struct.rdt_resource*, i64, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.rdt_domain*) #1

declare dso_local i32 @mon_event_read(%struct.rmid_read*, %struct.rdt_domain*, %struct.rdtgroup*, i64, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @rdtgroup_kn_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
