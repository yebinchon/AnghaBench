; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_do_req_filebacked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_do_req_filebacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, i32 }
%struct.request = type { i32 }
%struct.loop_cmd = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.request*)* @do_req_filebacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_req_filebacked(%struct.loop_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.loop_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call %struct.loop_cmd* @blk_mq_rq_to_pdu(%struct.request* %8)
  store %struct.loop_cmd* %9, %struct.loop_cmd** %6, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = call i64 @blk_rq_pos(%struct.request* %10)
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 9
  %14 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %15 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call i32 @req_op(%struct.request* %18)
  switch i32 %19, label %81 [
    i32 131, label %20
    i32 132, label %24
    i32 128, label %24
    i32 129, label %29
    i32 130, label %55
  ]

20:                                               ; preds = %2
  %21 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @lo_req_flush(%struct.loop_device* %21, %struct.request* %22)
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %2, %2
  %25 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %26 = load %struct.request*, %struct.request** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @lo_discard(%struct.loop_device* %25, %struct.request* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %85

29:                                               ; preds = %2
  %30 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %31 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %36 = load %struct.request*, %struct.request** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @lo_write_transfer(%struct.loop_device* %35, %struct.request* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %29
  %40 = load %struct.loop_cmd*, %struct.loop_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %46 = load %struct.loop_cmd*, %struct.loop_cmd** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @WRITE, align 4
  %49 = call i32 @lo_rw_aio(%struct.loop_device* %45, %struct.loop_cmd* %46, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %85

50:                                               ; preds = %39
  %51 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %52 = load %struct.request*, %struct.request** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @lo_write_simple(%struct.loop_device* %51, %struct.request* %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %85

55:                                               ; preds = %2
  %56 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %57 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %62 = load %struct.request*, %struct.request** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @lo_read_transfer(%struct.loop_device* %61, %struct.request* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %85

65:                                               ; preds = %55
  %66 = load %struct.loop_cmd*, %struct.loop_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %72 = load %struct.loop_cmd*, %struct.loop_cmd** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @READ, align 4
  %75 = call i32 @lo_rw_aio(%struct.loop_device* %71, %struct.loop_cmd* %72, i32 %73, i32 %74)
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %65
  %77 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %78 = load %struct.request*, %struct.request** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @lo_read_simple(%struct.loop_device* %77, %struct.request* %78, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %85

81:                                               ; preds = %2
  %82 = call i32 @WARN_ON_ONCE(i32 1)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %76, %70, %60, %50, %44, %34, %24, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.loop_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @lo_req_flush(%struct.loop_device*, %struct.request*) #1

declare dso_local i32 @lo_discard(%struct.loop_device*, %struct.request*, i32) #1

declare dso_local i32 @lo_write_transfer(%struct.loop_device*, %struct.request*, i32) #1

declare dso_local i32 @lo_rw_aio(%struct.loop_device*, %struct.loop_cmd*, i32, i32) #1

declare dso_local i32 @lo_write_simple(%struct.loop_device*, %struct.request*, i32) #1

declare dso_local i32 @lo_read_transfer(%struct.loop_device*, %struct.request*, i32) #1

declare dso_local i32 @lo_read_simple(%struct.loop_device*, %struct.request*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
