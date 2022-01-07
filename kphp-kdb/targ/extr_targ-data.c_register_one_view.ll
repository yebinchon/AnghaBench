; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_register_one_view.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_register_one_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclic_views_entry = type { i32, i32, i32 }
%struct.advert = type { i32, i32 }

@CV_w = common dso_local global %struct.cyclic_views_entry* null, align 8
@log_last_ts = common dso_local global i32 0, align 4
@CViews = common dso_local global %struct.cyclic_views_entry* null, align 8
@CYCLIC_VIEWS_BUFFER_SIZE = common dso_local global i32 0, align 4
@CV_r = common dso_local global %struct.cyclic_views_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_one_view(%struct.advert* %0, i32 %1) #0 {
  %3 = alloca %struct.advert*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyclic_views_entry*, align 8
  store %struct.advert* %0, %struct.advert** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  store %struct.cyclic_views_entry* %6, %struct.cyclic_views_entry** %5, align 8
  %7 = load %struct.advert*, %struct.advert** %3, align 8
  %8 = getelementptr inbounds %struct.advert, %struct.advert* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %5, align 8
  %11 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %5, align 8
  %14 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @log_last_ts, align 4
  %16 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** %5, align 8
  %17 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.advert*, %struct.advert** %3, align 8
  %19 = getelementptr inbounds %struct.advert, %struct.advert* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %23 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %22, i32 1
  store %struct.cyclic_views_entry* %23, %struct.cyclic_views_entry** @CV_w, align 8
  %24 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  %25 = load i32, i32* @CYCLIC_VIEWS_BUFFER_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cyclic_views_entry, %struct.cyclic_views_entry* %24, i64 %26
  %28 = icmp eq %struct.cyclic_views_entry* %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CViews, align 8
  store %struct.cyclic_views_entry* %30, %struct.cyclic_views_entry** @CV_w, align 8
  br label %31

31:                                               ; preds = %29, %2
  %32 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_w, align 8
  %33 = load %struct.cyclic_views_entry*, %struct.cyclic_views_entry** @CV_r, align 8
  %34 = icmp eq %struct.cyclic_views_entry* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @forget_one_view()
  br label %37

37:                                               ; preds = %35, %31
  %38 = call i32 (...) @forget_old_views()
  ret void
}

declare dso_local i32 @forget_one_view(...) #1

declare dso_local i32 @forget_old_views(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
