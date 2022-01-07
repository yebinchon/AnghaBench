; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_lo_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.bio* }
%struct.bio = type { %struct.bio* }
%struct.loop_cmd = type { i64, i64 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @lo_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_complete_rq(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.loop_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = call %struct.loop_cmd* @blk_mq_rq_to_pdu(%struct.request* %6)
  store %struct.loop_cmd* %7, %struct.loop_cmd** %3, align 8
  %8 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.request*, %struct.request** %2, align 8
  %23 = call i64 @blk_rq_bytes(%struct.request* %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.request*, %struct.request** %2, align 8
  %27 = call i64 @req_op(%struct.request* %26)
  %28 = load i64, i64* @REQ_OP_READ, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %18, %13, %1
  %31 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %75

38:                                               ; preds = %25
  %39 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.request*, %struct.request** %2, align 8
  %45 = load i32, i32* @BLK_STS_OK, align 4
  %46 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @blk_update_request(%struct.request* %44, i32 %45, i64 %48)
  %50 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.request*, %struct.request** %2, align 8
  %53 = call i32 @blk_mq_requeue_request(%struct.request* %52, i32 1)
  br label %79

54:                                               ; preds = %38
  %55 = load %struct.loop_cmd*, %struct.loop_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.loop_cmd, %struct.loop_cmd* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.request*, %struct.request** %2, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = load %struct.bio*, %struct.bio** %61, align 8
  store %struct.bio* %62, %struct.bio** %5, align 8
  br label %63

63:                                               ; preds = %66, %59
  %64 = load %struct.bio*, %struct.bio** %5, align 8
  %65 = icmp ne %struct.bio* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.bio*, %struct.bio** %5, align 8
  %68 = call i32 @zero_fill_bio(%struct.bio* %67)
  %69 = load %struct.bio*, %struct.bio** %5, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 0
  %71 = load %struct.bio*, %struct.bio** %70, align 8
  store %struct.bio* %71, %struct.bio** %5, align 8
  br label %63

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %54
  %74 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %37
  %76 = load %struct.request*, %struct.request** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @blk_mq_end_request(%struct.request* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %43
  ret void
}

declare dso_local %struct.loop_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i32 @blk_update_request(%struct.request*, i32, i64) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

declare dso_local i32 @zero_fill_bio(%struct.bio*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
