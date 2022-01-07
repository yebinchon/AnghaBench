; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_upgrade_check.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_upgrade_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@LIMIT_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*)* @throtl_upgrade_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_upgrade_check(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %6 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LIMIT_LOW, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %15 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %18 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %16, %21
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %54

27:                                               ; preds = %13
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %30 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %33 = call i64 @__tg_last_low_overflow_time(%struct.throtl_grp* %32)
  %34 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %35 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  %40 = call i32 @time_after_eq(i64 %31, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %54

43:                                               ; preds = %27
  %44 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %45 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i64 @throtl_can_upgrade(%struct.TYPE_3__* %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %51 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @throtl_upgrade_state(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %12, %26, %42, %49, %43
  ret void
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i64 @__tg_last_low_overflow_time(%struct.throtl_grp*) #1

declare dso_local i64 @throtl_can_upgrade(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @throtl_upgrade_state(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
