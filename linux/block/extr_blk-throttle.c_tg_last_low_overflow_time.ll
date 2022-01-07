; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_last_low_overflow_time.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_last_low_overflow_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32**, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.throtl_service_queue* }
%struct.throtl_service_queue = type { i32 }

@READ = common dso_local global i64 0, align 8
@LIMIT_LOW = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.throtl_grp*)* @tg_last_low_overflow_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tg_last_low_overflow_time(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_service_queue*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %6 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  store %struct.throtl_grp* %6, %struct.throtl_grp** %4, align 8
  %7 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %8 = call i64 @__tg_last_low_overflow_time(%struct.throtl_grp* %7)
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %1, %63, %73
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %11 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %12, align 8
  store %struct.throtl_service_queue* %13, %struct.throtl_service_queue** %3, align 8
  %14 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %15 = call %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue* %14)
  store %struct.throtl_grp* %15, %struct.throtl_grp** %4, align 8
  %16 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %17 = icmp ne %struct.throtl_grp* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %74

19:                                               ; preds = %9
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %21 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* @READ, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @LIMIT_LOW, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %19
  %31 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %32 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* @READ, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @LIMIT_LOW, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %30
  %42 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %43 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* @WRITE, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @LIMIT_LOW, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %41
  %53 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %54 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* @WRITE, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @LIMIT_LOW, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  br label %9

64:                                               ; preds = %52, %41, %30, %19
  %65 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %66 = call i64 @__tg_last_low_overflow_time(%struct.throtl_grp* %65)
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @time_after(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %72 = call i64 @__tg_last_low_overflow_time(%struct.throtl_grp* %71)
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %70, %64
  br label %9

74:                                               ; preds = %18
  %75 = load i64, i64* %5, align 8
  ret i64 %75
}

declare dso_local i64 @__tg_last_low_overflow_time(%struct.throtl_grp*) #1

declare dso_local %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue*) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
