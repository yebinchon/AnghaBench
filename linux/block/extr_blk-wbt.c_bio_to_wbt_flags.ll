; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_bio_to_wbt_flags.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_bio_to_wbt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i32 }
%struct.bio = type { i32 }

@REQ_OP_READ = common dso_local global i64 0, align 8
@WBT_READ = common dso_local global i32 0, align 4
@WBT_KSWAPD = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@WBT_DISCARD = common dso_local global i32 0, align 4
@WBT_TRACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rq_wb*, %struct.bio*)* @bio_to_wbt_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_to_wbt_flags(%struct.rq_wb* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rq_wb*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.rq_wb* %0, %struct.rq_wb** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %8 = call i32 @rwb_enabled(%struct.rq_wb* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = call i64 @bio_op(%struct.bio* %12)
  %14 = load i64, i64* @REQ_OP_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @WBT_READ, align 4
  store i32 %17, i32* %6, align 4
  br label %44

18:                                               ; preds = %11
  %19 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = call i64 @wbt_should_throttle(%struct.rq_wb* %19, %struct.bio* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = call i64 (...) @current_is_kswapd()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @WBT_KSWAPD, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = call i64 @bio_op(%struct.bio* %31)
  %33 = load i64, i64* @REQ_OP_DISCARD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @WBT_DISCARD, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* @WBT_TRACKED, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %39, %18
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %10
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @rwb_enabled(%struct.rq_wb*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @wbt_should_throttle(%struct.rq_wb*, %struct.bio*) #1

declare dso_local i64 @current_is_kswapd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
