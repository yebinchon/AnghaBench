; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_cmd_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_cregs.c_creg_cmd_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.rsxx_cardinfo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__, %struct.creg_cmd* }
%struct.TYPE_4__ = type { i32 }
%struct.creg_cmd = type { i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)* }
%struct.timer_list = type { i32 }

@creg_ctrl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c"No active command associated with timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@creg_cmd_pool = common dso_local global i32 0, align 4
@card = common dso_local global %struct.rsxx_cardinfo* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @creg_cmd_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creg_cmd_timed_out(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca %struct.creg_cmd*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %6 = ptrtoint %struct.rsxx_cardinfo* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @creg_ctrl, i32 0, i32 0), align 4
  %9 = call %struct.rsxx_cardinfo* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.rsxx_cardinfo* %9, %struct.rsxx_cardinfo** %3, align 8
  %10 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %11 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %15 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load %struct.creg_cmd*, %struct.creg_cmd** %16, align 8
  store %struct.creg_cmd* %17, %struct.creg_cmd** %4, align 8
  %18 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %19 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store %struct.creg_cmd* null, %struct.creg_cmd** %20, align 8
  %21 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %22 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %26 = icmp eq %struct.creg_cmd* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %29 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %35 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %34)
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %68

37:                                               ; preds = %1
  %38 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %38, i32 0, i32 0
  %40 = load i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)*, i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %43, i32 0, i32 0
  %45 = load i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)*, i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)** %44, align 8
  %46 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %47 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 %45(%struct.rsxx_cardinfo* %46, %struct.creg_cmd* %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load i32, i32* @creg_cmd_pool, align 4
  %53 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %54 = call i32 @kmem_cache_free(i32 %52, %struct.creg_cmd* %53)
  %55 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %56 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %60 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %63 = call i32 @creg_kick_queue(%struct.rsxx_cardinfo* %62)
  %64 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %65 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  br label %68

68:                                               ; preds = %51, %27
  ret void
}

declare dso_local %struct.rsxx_cardinfo* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.creg_cmd*) #1

declare dso_local i32 @creg_kick_queue(%struct.rsxx_cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
