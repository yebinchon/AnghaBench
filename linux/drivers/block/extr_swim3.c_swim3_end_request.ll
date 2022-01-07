; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_swim3_end_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_swim3_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floppy_state = type { %struct.request* }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"  end request, err=%d nr_bytes=%d, cur_req=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.floppy_state*, i32, i32)* @swim3_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swim3_end_request(%struct.floppy_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.floppy_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.request*, align 8
  store %struct.floppy_state* %0, %struct.floppy_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %10 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %9, i32 0, i32 0
  %11 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %11, %struct.request** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.request*, %struct.request** %8, align 8
  %15 = call i32 @swim3_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, %struct.request* %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.request*, %struct.request** %8, align 8
  %20 = call i32 @blk_rq_cur_bytes(%struct.request* %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.request*, %struct.request** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @blk_update_request(%struct.request* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %34

28:                                               ; preds = %21
  %29 = load %struct.request*, %struct.request** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @__blk_mq_end_request(%struct.request* %29, i32 %30)
  %32 = load %struct.floppy_state*, %struct.floppy_state** %5, align 8
  %33 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %32, i32 0, i32 0
  store %struct.request* null, %struct.request** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @swim3_dbg(i8*, i32, i32, %struct.request*) #1

declare dso_local i32 @blk_rq_cur_bytes(%struct.request*) #1

declare dso_local i64 @blk_update_request(%struct.request*, i32, i32) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
