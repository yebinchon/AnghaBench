; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_setup_cooperator.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_setup_cooperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, %struct.bfq_queue, i32, %struct.bfq_queue* }
%struct.bfq_queue = type { %struct.TYPE_2__, %struct.bfq_queue* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfq_queue* (%struct.bfq_data*, %struct.bfq_queue*, i8*, i32)* @bfq_setup_cooperator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfq_queue* @bfq_setup_cooperator(%struct.bfq_data* %0, %struct.bfq_queue* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca %struct.bfq_data*, align 8
  %7 = alloca %struct.bfq_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfq_queue*, align 8
  %11 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %6, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %13 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store %struct.bfq_queue* null, %struct.bfq_queue** %5, align 8
  br label %126

18:                                               ; preds = %4
  %19 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %20 = call i64 @bfq_too_late_for_merging(%struct.bfq_queue* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.bfq_queue* null, %struct.bfq_queue** %5, align 8
  br label %126

23:                                               ; preds = %18
  %24 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %25 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %24, i32 0, i32 1
  %26 = load %struct.bfq_queue*, %struct.bfq_queue** %25, align 8
  %27 = icmp ne %struct.bfq_queue* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %30 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %29, i32 0, i32 1
  %31 = load %struct.bfq_queue*, %struct.bfq_queue** %30, align 8
  store %struct.bfq_queue* %31, %struct.bfq_queue** %5, align 8
  br label %126

32:                                               ; preds = %23
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %37 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %38 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %37, i32 0, i32 1
  %39 = icmp eq %struct.bfq_queue* %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35, %32
  store %struct.bfq_queue* null, %struct.bfq_queue** %5, align 8
  br label %126

44:                                               ; preds = %35
  %45 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %46 = call i32 @bfq_tot_busy_queues(%struct.bfq_data* %45)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store %struct.bfq_queue* null, %struct.bfq_queue** %5, align 8
  br label %126

49:                                               ; preds = %44
  %50 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %51 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %50, i32 0, i32 3
  %52 = load %struct.bfq_queue*, %struct.bfq_queue** %51, align 8
  store %struct.bfq_queue* %52, %struct.bfq_queue** %10, align 8
  %53 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %54 = icmp ne %struct.bfq_queue* %53, null
  br i1 %54, label %55, label %99

55:                                               ; preds = %49
  %56 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %57 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %58 = icmp ne %struct.bfq_queue* %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %55
  %60 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %61 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %62 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %61, i32 0, i32 1
  %63 = icmp ne %struct.bfq_queue* %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %59
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %71 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @bfq_rq_close_to_sector(i8* %68, i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %67
  %76 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %77 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %81 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %79, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %75
  %86 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %87 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %88 = call i64 @bfq_may_be_close_cooperator(%struct.bfq_queue* %86, %struct.bfq_queue* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %92 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %93 = call %struct.bfq_queue* @bfq_setup_merge(%struct.bfq_queue* %91, %struct.bfq_queue* %92)
  store %struct.bfq_queue* %93, %struct.bfq_queue** %11, align 8
  %94 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  %95 = icmp ne %struct.bfq_queue* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  store %struct.bfq_queue* %97, %struct.bfq_queue** %5, align 8
  br label %126

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %85, %75, %67, %59, %55, %49
  %100 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %101 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @bfq_io_struct_pos(i8* %102, i32 %103)
  %105 = call %struct.bfq_queue* @bfq_find_close_cooperator(%struct.bfq_data* %100, %struct.bfq_queue* %101, i32 %104)
  store %struct.bfq_queue* %105, %struct.bfq_queue** %11, align 8
  %106 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  %107 = icmp ne %struct.bfq_queue* %106, null
  br i1 %107, label %108, label %125

108:                                              ; preds = %99
  %109 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  %110 = load %struct.bfq_data*, %struct.bfq_data** %6, align 8
  %111 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %110, i32 0, i32 1
  %112 = icmp ne %struct.bfq_queue* %109, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @likely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %118 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  %119 = call i64 @bfq_may_be_close_cooperator(%struct.bfq_queue* %117, %struct.bfq_queue* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %123 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  %124 = call %struct.bfq_queue* @bfq_setup_merge(%struct.bfq_queue* %122, %struct.bfq_queue* %123)
  store %struct.bfq_queue* %124, %struct.bfq_queue** %5, align 8
  br label %126

125:                                              ; preds = %116, %108, %99
  store %struct.bfq_queue* null, %struct.bfq_queue** %5, align 8
  br label %126

126:                                              ; preds = %125, %121, %96, %48, %43, %28, %22, %17
  %127 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  ret %struct.bfq_queue* %127
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @bfq_too_late_for_merging(%struct.bfq_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bfq_tot_busy_queues(%struct.bfq_data*) #1

declare dso_local i64 @bfq_rq_close_to_sector(i8*, i32, i32) #1

declare dso_local i64 @bfq_may_be_close_cooperator(%struct.bfq_queue*, %struct.bfq_queue*) #1

declare dso_local %struct.bfq_queue* @bfq_setup_merge(%struct.bfq_queue*, %struct.bfq_queue*) #1

declare dso_local %struct.bfq_queue* @bfq_find_close_cooperator(%struct.bfq_data*, %struct.bfq_queue*, i32) #1

declare dso_local i32 @bfq_io_struct_pos(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
