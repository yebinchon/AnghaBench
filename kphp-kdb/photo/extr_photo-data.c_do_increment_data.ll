; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_increment_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_increment_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_increm_data = type { i32, i32, i32 }

@MAX_FIELDS = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@increm_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_increment_data(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_photo_increm_data*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 0, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MAX_FIELDS, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ false, %5 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i32 12, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @mode, align 4
  %25 = shl i32 %24, 16
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.lev_photo_increm_data* @alloc_log_event(i32 %28, i32 %29, i32 %30)
  store %struct.lev_photo_increm_data* %31, %struct.lev_photo_increm_data** %12, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %12, align 8
  %34 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %12, align 8
  %37 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %12, align 8
  %40 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @increm_data, align 4
  %42 = call i32 @MY_LOG_EVENT_HANDLER(i32 %41, i32 0)
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.lev_photo_increm_data* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
