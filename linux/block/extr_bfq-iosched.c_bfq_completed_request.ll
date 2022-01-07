; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_completed_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_completed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_queue = type { i64, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.bfq_data = type { i8*, i64, i64, i32, %struct.bfq_queue*, %struct.bfq_queue* }

@jiffies = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@BFQ_MIN_TT = common dso_local global i64 0, align 8
@BFQ_RATE_SHIFT = common dso_local global i64 0, align 8
@BFQQE_BUDGET_TIMEOUT = common dso_local global i32 0, align 4
@BFQQE_NO_MORE_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_queue*, %struct.bfq_data*)* @bfq_completed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_completed_request(%struct.bfq_queue* %0, %struct.bfq_data* %1) #0 {
  %3 = alloca %struct.bfq_queue*, align 8
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.bfq_queue* %0, %struct.bfq_queue** %3, align 8
  store %struct.bfq_data* %1, %struct.bfq_data** %4, align 8
  %7 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %8 = call i32 @bfq_update_hw_tag(%struct.bfq_data* %7)
  %9 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %10 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %14 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %18 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %23 = call i32 @bfq_bfqq_busy(%struct.bfq_queue* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %28 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %30 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %31 = call i32 @bfq_weights_tree_remove(%struct.bfq_data* %29, %struct.bfq_queue* %30)
  br label %32

32:                                               ; preds = %25, %21, %2
  %33 = call i8* (...) @ktime_get_ns()
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %36 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %40 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %38 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = inttoptr i64 %44 to i8*
  %46 = load i64, i64* @NSEC_PER_USEC, align 8
  %47 = call i64 @div_u64(i8* %45, i64 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @BFQ_MIN_TT, align 8
  %50 = load i64, i64* @NSEC_PER_USEC, align 8
  %51 = udiv i64 %49, %50
  %52 = icmp ugt i64 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %32
  %54 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %55 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BFQ_RATE_SHIFT, align 8
  %58 = shl i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = udiv i64 %58, %59
  %61 = load i64, i64* @BFQ_RATE_SHIFT, align 8
  %62 = sub i64 %61, 10
  %63 = shl i64 1, %62
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %67 = call i32 @bfq_update_rate_reset(%struct.bfq_data* %66, i32* null)
  br label %68

68:                                               ; preds = %65, %53, %32
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %71 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %73 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %74 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %73, i32 0, i32 5
  store %struct.bfq_queue* %72, %struct.bfq_queue** %74, align 8
  %75 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %76 = call i64 @bfq_bfqq_softrt_update(%struct.bfq_queue* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %68
  %79 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %80 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %85 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %84, i32 0, i32 2
  %86 = call i64 @RB_EMPTY_ROOT(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %90 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %93 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %98 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %99 = call i32 @bfq_bfqq_softrt_next_start(%struct.bfq_data* %97, %struct.bfq_queue* %98)
  %100 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %101 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %88, %83, %78, %68
  %103 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %104 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %103, i32 0, i32 4
  %105 = load %struct.bfq_queue*, %struct.bfq_queue** %104, align 8
  %106 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %107 = icmp eq %struct.bfq_queue* %105, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %102
  %109 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %110 = call i64 @bfq_bfqq_must_idle(%struct.bfq_queue* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %114 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %119 = call i32 @bfq_arm_slice_timer(%struct.bfq_data* %118)
  br label %120

120:                                              ; preds = %117, %112
  br label %160

121:                                              ; preds = %108
  %122 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %123 = call i64 @bfq_may_expire_for_budg_timeout(%struct.bfq_queue* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %127 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %128 = load i32, i32* @BFQQE_BUDGET_TIMEOUT, align 4
  %129 = call i32 @bfq_bfqq_expire(%struct.bfq_data* %126, %struct.bfq_queue* %127, i32 0, i32 %128)
  br label %150

130:                                              ; preds = %121
  %131 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %132 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %131, i32 0, i32 2
  %133 = call i64 @RB_EMPTY_ROOT(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %137 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  %141 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %142 = call i32 @bfq_better_to_idle(%struct.bfq_queue* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %140, %135
  %145 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %146 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %147 = load i32, i32* @BFQQE_NO_MORE_REQUESTS, align 4
  %148 = call i32 @bfq_bfqq_expire(%struct.bfq_data* %145, %struct.bfq_queue* %146, i32 0, i32 %147)
  br label %149

149:                                              ; preds = %144, %140, %130
  br label %150

150:                                              ; preds = %149, %125
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %102
  %153 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %154 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %159 = call i32 @bfq_schedule_dispatch(%struct.bfq_data* %158)
  br label %160

160:                                              ; preds = %120, %157, %152
  ret void
}

declare dso_local i32 @bfq_update_hw_tag(%struct.bfq_data*) #1

declare dso_local i32 @bfq_bfqq_busy(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_weights_tree_remove(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i8* @ktime_get_ns(...) #1

declare dso_local i64 @div_u64(i8*, i64) #1

declare dso_local i32 @bfq_update_rate_reset(%struct.bfq_data*, i32*) #1

declare dso_local i64 @bfq_bfqq_softrt_update(%struct.bfq_queue*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @bfq_bfqq_softrt_next_start(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i64 @bfq_bfqq_must_idle(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_arm_slice_timer(%struct.bfq_data*) #1

declare dso_local i64 @bfq_may_expire_for_budg_timeout(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_bfqq_expire(%struct.bfq_data*, %struct.bfq_queue*, i32, i32) #1

declare dso_local i32 @bfq_better_to_idle(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_schedule_dispatch(%struct.bfq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
