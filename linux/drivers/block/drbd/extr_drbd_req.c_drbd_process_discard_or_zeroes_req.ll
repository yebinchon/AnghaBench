; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_process_discard_or_zeroes_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_process_discard_or_zeroes_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_request*, i32)* @drbd_process_discard_or_zeroes_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_process_discard_or_zeroes_req(%struct.drbd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %14 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 9
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @drbd_issue_discard_or_zero_out(i32 %8, i32 %12, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @BLK_STS_IOERR, align 4
  %24 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %25 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %30 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @bio_endio(%struct.TYPE_4__* %31)
  ret void
}

declare dso_local i32 @drbd_issue_discard_or_zero_out(i32, i32, i32, i32) #1

declare dso_local i32 @bio_endio(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
