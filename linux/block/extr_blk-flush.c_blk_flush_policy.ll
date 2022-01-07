; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_flush_policy.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_flush_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }

@REQ_FSEQ_DATA = common dso_local global i32 0, align 4
@QUEUE_FLAG_WC = common dso_local global i64 0, align 8
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FSEQ_PREFLUSH = common dso_local global i32 0, align 4
@QUEUE_FLAG_FUA = common dso_local global i64 0, align 8
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_FSEQ_POSTFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.request*)* @blk_flush_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_flush_policy(i64 %0, %struct.request* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i64 @blk_rq_sectors(%struct.request* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @REQ_FSEQ_DATA, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @QUEUE_FLAG_WC, align 8
  %16 = shl i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @REQ_PREFLUSH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @REQ_FSEQ_PREFLUSH, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @QUEUE_FLAG_FUA, align 8
  %33 = shl i64 1, %32
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @REQ_FUA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @REQ_FSEQ_POSTFLUSH, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %36, %30
  br label %48

48:                                               ; preds = %47, %13
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
