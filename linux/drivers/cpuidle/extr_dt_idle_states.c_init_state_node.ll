; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_dt_idle_states.c_init_state_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_dt_idle_states.c_init_state_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_state = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.of_device_id = type { i32 }
%struct.device_node = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"wakeup-latency-us\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"entry-latency-us\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c" * %pOF missing entry-latency-us property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"exit-latency-us\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c" * %pOF missing exit-latency-us property\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"min-residency-us\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c" * %pOF missing min-residency-us property\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"idle-state-name\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"local-timer-stop\00", align 1
@CPUIDLE_FLAG_TIMER_STOP = common dso_local global i32 0, align 4
@CPUIDLE_NAME_LEN = common dso_local global i64 0, align 8
@CPUIDLE_DESC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_state*, %struct.of_device_id*, %struct.device_node*)* @init_state_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_state_node(%struct.cpuidle_state* %0, %struct.of_device_id* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_state*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cpuidle_state* %0, %struct.cpuidle_state** %5, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %12 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %13 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %16 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %18 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %21 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %24 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %23, i32 0, i32 4
  %25 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %3
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @of_property_read_u32(%struct.device_node* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %104

38:                                               ; preds = %28
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64* %11)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %104

48:                                               ; preds = %38
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %53 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %3
  %55 = load %struct.device_node*, %struct.device_node** %7, align 8
  %56 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %57 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %56, i32 0, i32 3
  %58 = call i32 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.device_node*, %struct.device_node** %7, align 8
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %104

66:                                               ; preds = %54
  %67 = load %struct.device_node*, %struct.device_node** %7, align 8
  %68 = call i32 @of_property_read_string(%struct.device_node* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.device_node*, %struct.device_node** %7, align 8
  %73 = getelementptr inbounds %struct.device_node, %struct.device_node* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %77 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  %78 = load %struct.device_node*, %struct.device_node** %7, align 8
  %79 = call i64 @of_property_read_bool(%struct.device_node* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* @CPUIDLE_FLAG_TIMER_STOP, align 4
  %83 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %84 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %89 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.device_node*, %struct.device_node** %7, align 8
  %92 = getelementptr inbounds %struct.device_node, %struct.device_node* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i64, i64* @CPUIDLE_NAME_LEN, align 8
  %95 = sub nsw i64 %94, 1
  %96 = call i32 @strncpy(i32 %90, i8* %93, i64 %95)
  %97 = load %struct.cpuidle_state*, %struct.cpuidle_state** %5, align 8
  %98 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* @CPUIDLE_DESC_LEN, align 8
  %102 = sub nsw i64 %101, 1
  %103 = call i32 @strncpy(i32 %99, i8* %100, i64 %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %87, %61, %43, %33
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @pr_debug(i8*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
