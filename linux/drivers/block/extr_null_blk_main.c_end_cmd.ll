; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_end_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_end_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_cmd = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nullb_cmd*)* @end_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_cmd(%struct.nullb_cmd* %0) #0 {
  %2 = alloca %struct.nullb_cmd*, align 8
  %3 = alloca i32, align 4
  store %struct.nullb_cmd* %0, %struct.nullb_cmd** %2, align 8
  %4 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %4, i32 0, i32 3
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %32 [
    i32 128, label %12
    i32 129, label %20
  ]

12:                                               ; preds = %1
  %13 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @blk_mq_end_request(i32 %15, i32 %18)
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @bio_endio(%struct.TYPE_6__* %30)
  br label %32

32:                                               ; preds = %1, %20
  %33 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  %34 = call i32 @free_cmd(%struct.nullb_cmd* %33)
  br label %35

35:                                               ; preds = %32, %12
  ret void
}

declare dso_local i32 @blk_mq_end_request(i32, i32) #1

declare dso_local i32 @bio_endio(%struct.TYPE_6__*) #1

declare dso_local i32 @free_cmd(%struct.nullb_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
