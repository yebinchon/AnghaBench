; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_get_limit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_get_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@REQ_OP_MASK = common dso_local global i64 0, align 8
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_HIPRIO = common dso_local global i64 0, align 8
@REQ_BACKGROUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rq_wb*, i64)* @get_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_limit(%struct.rq_wb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rq_wb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rq_wb* %0, %struct.rq_wb** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %8 = call i32 @rwb_enabled(%struct.rq_wb* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @UINT_MAX, align 4
  store i32 %11, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @REQ_OP_MASK, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* @REQ_OP_DISCARD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %20 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %12
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @REQ_HIPRIO, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %29 = call i64 @wb_recent_wait(%struct.rq_wb* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i64 (...) @current_is_kswapd()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %27, %22
  %35 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %36 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @REQ_BACKGROUND, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %46 = call i64 @close_io(%struct.rq_wb* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44, %39
  %49 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %50 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %56

52:                                               ; preds = %44
  %53 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %54 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %18, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @rwb_enabled(%struct.rq_wb*) #1

declare dso_local i64 @wb_recent_wait(%struct.rq_wb*) #1

declare dso_local i64 @current_is_kswapd(...) #1

declare dso_local i64 @close_io(%struct.rq_wb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
