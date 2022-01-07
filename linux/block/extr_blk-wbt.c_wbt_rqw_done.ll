; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_rqw_done.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_rqw_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i32, i32, i64 }
%struct.rq_wait = type { i32, i32 }

@WBT_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_wb*, %struct.rq_wait*, i32)* @wbt_rqw_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbt_rqw_done(%struct.rq_wb* %0, %struct.rq_wait* %1, i32 %2) #0 {
  %4 = alloca %struct.rq_wb*, align 8
  %5 = alloca %struct.rq_wait*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rq_wb* %0, %struct.rq_wb** %4, align 8
  store %struct.rq_wait* %1, %struct.rq_wait** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.rq_wait*, %struct.rq_wait** %5, align 8
  %11 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %10, i32 0, i32 1
  %12 = call i32 @atomic_dec_return(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %14 = call i32 @rwb_enabled(%struct.rq_wb* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %22 = call i32 @rwb_wake_all(%struct.rq_wb* %21)
  br label %78

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @WBT_DISCARD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %30 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  br label %47

32:                                               ; preds = %23
  %33 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %34 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %39 = call i32 @wb_recent_wait(%struct.rq_wb* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %46

42:                                               ; preds = %37, %32
  %43 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %44 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %78

55:                                               ; preds = %50, %47
  %56 = load %struct.rq_wait*, %struct.rq_wait** %5, align 8
  %57 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %56, i32 0, i32 0
  %58 = call i64 @wq_has_sleeper(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %69 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sdiv i32 %70, 2
  %72 = icmp sge i32 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66, %60
  %74 = load %struct.rq_wait*, %struct.rq_wait** %5, align 8
  %75 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %74, i32 0, i32 0
  %76 = call i32 @wake_up_all(i32* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %78

78:                                               ; preds = %20, %54, %77, %55
  ret void
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rwb_enabled(%struct.rq_wb*) #1

declare dso_local i32 @rwb_wake_all(%struct.rq_wb*) #1

declare dso_local i32 @wb_recent_wait(%struct.rq_wb*) #1

declare dso_local i64 @wq_has_sleeper(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
