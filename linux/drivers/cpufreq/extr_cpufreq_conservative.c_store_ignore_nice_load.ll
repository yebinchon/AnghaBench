; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_store_ignore_nice_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_store_ignore_nice_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gov_attr_set = type { i32 }
%struct.dbs_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gov_attr_set*, i8*, i64)* @store_ignore_nice_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_ignore_nice_load(%struct.gov_attr_set* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gov_attr_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dbs_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gov_attr_set* %0, %struct.gov_attr_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gov_attr_set*, %struct.gov_attr_set** %5, align 8
  %12 = call %struct.dbs_data* @to_dbs_data(%struct.gov_attr_set* %11)
  store %struct.dbs_data* %12, %struct.dbs_data** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %39

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.dbs_data*, %struct.dbs_data** %8, align 8
  %27 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %4, align 8
  br label %39

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.dbs_data*, %struct.dbs_data** %8, align 8
  %35 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dbs_data*, %struct.dbs_data** %8, align 8
  %37 = call i32 @gov_update_cpu_data(%struct.dbs_data* %36)
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %32, %30, %17
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local %struct.dbs_data* @to_dbs_data(%struct.gov_attr_set*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @gov_update_cpu_data(%struct.dbs_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
