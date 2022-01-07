; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-settings.c_blk_set_stacking_limits.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-settings.c_blk_set_stacking_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_limits = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@USHRT_MAX = common dso_local global i8* null, align 8
@UINT_MAX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_set_stacking_limits(%struct.queue_limits* %0) #0 {
  %2 = alloca %struct.queue_limits*, align 8
  store %struct.queue_limits* %0, %struct.queue_limits** %2, align 8
  %3 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %4 = call i32 @blk_set_default_limits(%struct.queue_limits* %3)
  %5 = load i8*, i8** @USHRT_MAX, align 8
  %6 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %7 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %6, i32 0, i32 7
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @USHRT_MAX, align 8
  %9 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %10 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %9, i32 0, i32 6
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @UINT_MAX, align 8
  %12 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %13 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %12, i32 0, i32 5
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @UINT_MAX, align 8
  %15 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %16 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @UINT_MAX, align 8
  %18 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %19 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @UINT_MAX, align 8
  %21 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %22 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @UINT_MAX, align 8
  %24 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %25 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @UINT_MAX, align 8
  %27 = load %struct.queue_limits*, %struct.queue_limits** %2, align 8
  %28 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  ret void
}

declare dso_local i32 @blk_set_default_limits(%struct.queue_limits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
