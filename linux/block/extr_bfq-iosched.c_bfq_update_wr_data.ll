; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_wr_data.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_update_wr_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i64 }
%struct.bfq_queue = type { i32, i64, i64, i64, i64, %struct.bfq_entity }
%struct.bfq_entity = type { i64, i64, i32 }

@.str = private unnamed_addr constant [54 x i8] c"raising period dur %u/%u msec, old coeff %u, w %d(%d)\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"WARN: pending prio change\00", align 1
@max_service_from_wr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.bfq_queue*)* @bfq_update_wr_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_update_wr_data(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  %5 = alloca %struct.bfq_entity*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %7 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %6, i32 0, i32 5
  store %struct.bfq_entity* %7, %struct.bfq_entity** %5, align 8
  %8 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %9 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %114

12:                                               ; preds = %2
  %13 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %14 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %17 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = call i32 @jiffies_to_msecs(i64 %19)
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %22 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @jiffies_to_msecs(i64 %23)
  %25 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %26 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %29 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %33 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %13, %struct.bfq_queue* %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %27, i64 %31, i64 %35)
  %37 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %38 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %12
  %42 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %43 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %44 = call i32 (%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) @bfq_log_bfqq(%struct.bfq_data* %42, %struct.bfq_queue* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %12
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %47 = call i64 @bfq_bfqq_in_large_burst(%struct.bfq_queue* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %51 = call i32 @bfq_bfqq_end_wr(%struct.bfq_queue* %50)
  br label %91

52:                                               ; preds = %45
  %53 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %54 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %57 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = call i64 @time_is_before_jiffies(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %52
  %63 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %64 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %67 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %62
  %71 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %72 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %75 = call i64 @bfq_wr_duration(%struct.bfq_data* %74)
  %76 = add nsw i64 %73, %75
  %77 = call i64 @time_is_before_jiffies(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70, %62
  %80 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %81 = call i32 @bfq_bfqq_end_wr(%struct.bfq_queue* %80)
  br label %89

82:                                               ; preds = %70
  %83 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %84 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %85 = call i32 @switch_back_to_interactive_wr(%struct.bfq_queue* %83, %struct.bfq_data* %84)
  %86 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %87 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %82, %79
  br label %90

90:                                               ; preds = %89, %52
  br label %91

91:                                               ; preds = %90, %49
  %92 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %93 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %98 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %101 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %106 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @max_service_from_wr, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %112 = call i32 @bfq_bfqq_end_wr(%struct.bfq_queue* %111)
  br label %113

113:                                              ; preds = %110, %104, %96, %91
  br label %114

114:                                              ; preds = %113, %2
  %115 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %116 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %119 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %124 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = icmp ne i32 %122, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %114
  %130 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %131 = call i32 @bfq_entity_service_tree(%struct.bfq_entity* %130)
  %132 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %133 = call i32 @__bfq_entity_update_weight_prio(i32 %131, %struct.bfq_entity* %132, i32 0)
  br label %134

134:                                              ; preds = %129, %114
  ret void
}

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @bfq_bfqq_in_large_burst(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_end_wr(%struct.bfq_queue*) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i64 @bfq_wr_duration(%struct.bfq_data*) #1

declare dso_local i32 @switch_back_to_interactive_wr(%struct.bfq_queue*, %struct.bfq_data*) #1

declare dso_local i32 @__bfq_entity_update_weight_prio(i32, %struct.bfq_entity*, i32) #1

declare dso_local i32 @bfq_entity_service_tree(%struct.bfq_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
