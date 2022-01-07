; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_end_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@current_count_sectors = common dso_local global i32 0, align 4
@current_req = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i64)* @floppy_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floppy_end_request(%struct.request* %0, i64 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @current_count_sectors, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = call i32 @blk_rq_cur_sectors(%struct.request* %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 9
  %24 = call i64 @blk_update_request(%struct.request* %20, i64 %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @__blk_mq_end_request(%struct.request* %28, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @floppy_off(i32 %31)
  store i32* null, i32** @current_req, align 8
  br label %33

33:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @blk_rq_cur_sectors(%struct.request*) #1

declare dso_local i64 @blk_update_request(%struct.request*, i64, i32) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i64) #1

declare dso_local i32 @floppy_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
