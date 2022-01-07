; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_apply_periodic_ad_state.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_apply_periodic_ad_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32, i32 }

@ADF_PERIODIC = common dso_local global i32 0, align 4
@log_last_ts = common dso_local global i32 0, align 4
@RETARGET_AD_TIMEOUT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"inserting ad #%d (%p) into retarget queue, retarget_time=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.advert*)* @apply_periodic_ad_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_periodic_ad_state(%struct.advert* %0) #0 {
  %2 = alloca %struct.advert*, align 8
  store %struct.advert* %0, %struct.advert** %2, align 8
  %3 = load %struct.advert*, %struct.advert** %2, align 8
  %4 = getelementptr inbounds %struct.advert, %struct.advert* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ADF_PERIODIC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load %struct.advert*, %struct.advert** %2, align 8
  %11 = call i32 @reinsert_retarget_ad_last(%struct.advert* %10)
  %12 = load i32, i32* @log_last_ts, align 4
  %13 = load i32, i32* @RETARGET_AD_TIMEOUT, align 4
  %14 = icmp slt i32 %13, 3600
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @RETARGET_AD_TIMEOUT, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ 3600, %15 ], [ %17, %16 ]
  %20 = add nsw i32 %12, %19
  %21 = sdiv i32 %20, 3600
  %22 = mul nsw i32 %21, 3600
  %23 = load %struct.advert*, %struct.advert** %2, align 8
  %24 = getelementptr inbounds %struct.advert, %struct.advert* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.advert*, %struct.advert** %2, align 8
  %30 = getelementptr inbounds %struct.advert, %struct.advert* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.advert*, %struct.advert** %2, align 8
  %33 = load %struct.advert*, %struct.advert** %2, align 8
  %34 = getelementptr inbounds %struct.advert, %struct.advert* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %31, %struct.advert* %32, i32 %35)
  br label %37

37:                                               ; preds = %27, %18
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @reinsert_retarget_ad_last(%struct.advert*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, %struct.advert*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
