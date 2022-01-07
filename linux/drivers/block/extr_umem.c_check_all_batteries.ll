; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_check_all_batteries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_check_all_batteries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { i32, i64, i32, i32 }
%struct.timer_list = type { i32 }

@num_cards = common dso_local global i32 0, align 4
@cards = common dso_local global %struct.cardinfo* null, align 8
@UM_FLAG_NO_BATT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @check_all_batteries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_all_batteries(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cardinfo*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @num_cards, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = load %struct.cardinfo*, %struct.cardinfo** @cards, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %10, i64 %12
  %14 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @UM_FLAG_NO_BATT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %9
  %20 = load %struct.cardinfo*, %struct.cardinfo** @cards, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %20, i64 %22
  store %struct.cardinfo* %23, %struct.cardinfo** %4, align 8
  %24 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %25 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %28 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %33 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  br label %37

34:                                               ; preds = %19
  %35 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %36 = call i32 @check_batteries(%struct.cardinfo* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.cardinfo*, %struct.cardinfo** %4, align 8
  %39 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %38, i32 0, i32 3
  %40 = call i32 @spin_unlock_bh(i32* %39)
  br label %41

41:                                               ; preds = %37, %9
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5

45:                                               ; preds = %5
  %46 = call i32 (...) @init_battery_timer()
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @check_batteries(%struct.cardinfo*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @init_battery_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
