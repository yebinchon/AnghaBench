; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_lparcfg_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_lparcfg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@MODULE_VERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"system-id\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ibm,partition-no\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"serial_number=%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"system_type=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"partition_id=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @lparcfg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lparcfg_data(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load i32, i32* @MODULE_NAME, align 4
  %13 = load i32, i32* @MODULE_VERS, align 4
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13)
  %15 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i8* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i8* @of_get_property(%struct.device_node* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %30, %25
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i8* @of_get_property(%struct.device_node* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @be32_to_cpup(i32* %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call i32 @of_node_put(%struct.device_node* %42)
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @pseries_lparcfg_data(%struct.seq_file* %54, i8* %55)
  ret i32 %56
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @pseries_lparcfg_data(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
