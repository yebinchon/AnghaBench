; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_dt_idle_states.c_dt_init_idle_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_dt_idle_states.c_dt_init_idle_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.cpuidle_state*, i32 }
%struct.cpuidle_state = type { i32 }
%struct.of_device_id = type { i32 }
%struct.device_node = type { i32 }

@CPUIDLE_STATE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"cpu-idle-states\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%pOF idle state not valid, bailing out\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"State index reached static CPU idle driver states array size\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Parsing idle state node %pOF failed with err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_init_idle_driver(%struct.cpuidle_driver* %0, %struct.of_device_id* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpuidle_state*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %5, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* @CPUIDLE_STATE_MAX, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %122

23:                                               ; preds = %3
  %24 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %25 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = sext i32 %26 to i64
  %30 = inttoptr i64 %29 to i32*
  br label %33

31:                                               ; preds = %23
  %32 = load i32*, i32** @cpu_possible_mask, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32* [ %30, %28 ], [ %32, %31 ]
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @cpumask_first(i32* %35)
  %37 = call %struct.device_node* @of_cpu_device_node_get(i32 %36)
  store %struct.device_node* %37, %struct.device_node** %10, align 8
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %101, %33
  %39 = load %struct.device_node*, %struct.device_node** %10, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %40)
  store %struct.device_node* %41, %struct.device_node** %9, align 8
  %42 = load %struct.device_node*, %struct.device_node** %9, align 8
  %43 = icmp ne %struct.device_node* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %104

45:                                               ; preds = %38
  %46 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %47 = load %struct.device_node*, %struct.device_node** %9, align 8
  %48 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* %46, %struct.device_node* %47)
  store %struct.of_device_id* %48, %struct.of_device_id** %11, align 8
  %49 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %50 = icmp ne %struct.of_device_id* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %104

54:                                               ; preds = %45
  %55 = load %struct.device_node*, %struct.device_node** %9, align 8
  %56 = call i32 @of_device_is_available(%struct.device_node* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load %struct.device_node*, %struct.device_node** %9, align 8
  %60 = call i32 @of_node_put(%struct.device_node* %59)
  br label %101

61:                                               ; preds = %54
  %62 = load %struct.device_node*, %struct.device_node** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @idle_state_valid(%struct.device_node* %62, i32 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.device_node*, %struct.device_node** %9, align 8
  %69 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %104

72:                                               ; preds = %61
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @CPUIDLE_STATE_MAX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %104

78:                                               ; preds = %72
  %79 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %80 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %79, i32 0, i32 1
  %81 = load %struct.cpuidle_state*, %struct.cpuidle_state** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %81, i64 %84
  store %struct.cpuidle_state* %85, %struct.cpuidle_state** %8, align 8
  %86 = load %struct.cpuidle_state*, %struct.cpuidle_state** %8, align 8
  %87 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %88 = load %struct.device_node*, %struct.device_node** %9, align 8
  %89 = call i32 @init_state_node(%struct.cpuidle_state* %86, %struct.of_device_id* %87, %struct.device_node* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = load %struct.device_node*, %struct.device_node** %9, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %93, i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %13, align 4
  br label %104

98:                                               ; preds = %78
  %99 = load %struct.device_node*, %struct.device_node** %9, align 8
  %100 = call i32 @of_node_put(%struct.device_node* %99)
  br label %101

101:                                              ; preds = %98, %58
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %38

104:                                              ; preds = %92, %76, %67, %51, %44
  %105 = load %struct.device_node*, %struct.device_node** %9, align 8
  %106 = call i32 @of_node_put(%struct.device_node* %105)
  %107 = load %struct.device_node*, %struct.device_node** %10, align 8
  %108 = call i32 @of_node_put(%struct.device_node* %107)
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %122

113:                                              ; preds = %104
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %119 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %111, %20
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(%struct.of_device_id*, %struct.device_node*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @idle_state_valid(%struct.device_node*, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @init_state_node(%struct.cpuidle_state*, %struct.of_device_id*, %struct.device_node*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
