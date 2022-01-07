; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_tg_can_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_tg_can_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { %struct.throtl_data* }
%struct.throtl_data = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_grp*)* @throtl_tg_can_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_tg_can_downgrade(%struct.throtl_grp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca %struct.throtl_data*, align 8
  %5 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %3, align 8
  %6 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %7 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %6, i32 0, i32 0
  %8 = load %struct.throtl_data*, %struct.throtl_data** %7, align 8
  store %struct.throtl_data* %8, %struct.throtl_data** %4, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %12 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %15 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i64 @time_after_eq(i64 %10, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %23 = call i64 @tg_last_low_overflow_time(%struct.throtl_grp* %22)
  %24 = load %struct.throtl_data*, %struct.throtl_data** %4, align 8
  %25 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i64 @time_after_eq(i64 %21, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %20
  %31 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %32 = call i32 @throtl_tg_is_idle(%struct.throtl_grp* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %36 = call %struct.TYPE_6__* @tg_to_blkg(%struct.throtl_grp* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @list_empty(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34, %30
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %34, %20, %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i64 @tg_last_low_overflow_time(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_tg_is_idle(%struct.throtl_grp*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_6__* @tg_to_blkg(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
