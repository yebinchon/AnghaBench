; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_send_special.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sx8.c_carm_send_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i32 }
%struct.request = type { i32 }
%struct.carm_request = type { i64, i32, i32 }
%struct.carm_msg_ioctl = type { i32, i32 }

@REQ_OP_DRV_OUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"blk_execute_rq_nowait, tag == %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, i32 (%struct.carm_host*, i32, i8*)*)* @carm_send_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_send_special(%struct.carm_host* %0, i32 (%struct.carm_host*, i32, i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca i32 (%struct.carm_host*, i32, i8*)*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.carm_request*, align 8
  %8 = alloca %struct.carm_msg_ioctl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store i32 (%struct.carm_host*, i32, i8*)* %1, i32 (%struct.carm_host*, i32, i8*)** %5, align 8
  %12 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %13 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REQ_OP_DRV_OUT, align 4
  %16 = call %struct.request* @blk_mq_alloc_request(i32 %14, i32 %15, i32 0)
  store %struct.request* %16, %struct.request** %6, align 8
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = call i64 @IS_ERR(%struct.request* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.request*, %struct.request** %6, align 8
  %25 = call %struct.carm_request* @blk_mq_rq_to_pdu(%struct.request* %24)
  store %struct.carm_request* %25, %struct.carm_request** %7, align 8
  %26 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @carm_ref_msg(%struct.carm_host* %26, i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i32 (%struct.carm_host*, i32, i8*)*, i32 (%struct.carm_host*, i32, i8*)** %5, align 8
  %32 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %33 = load %struct.request*, %struct.request** %6, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 %31(%struct.carm_host* %32, i32 %35, i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to %struct.carm_msg_ioctl*
  store %struct.carm_msg_ioctl* %39, %struct.carm_msg_ioctl** %8, align 8
  %40 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %8, align 8
  %41 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.carm_request*, %struct.carm_request** %7, align 8
  %44 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.carm_msg_ioctl*, %struct.carm_msg_ioctl** %8, align 8
  %46 = getelementptr inbounds %struct.carm_msg_ioctl, %struct.carm_msg_ioctl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.carm_request*, %struct.carm_request** %7, align 8
  %49 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @carm_lookup_bucket(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.carm_request*, %struct.carm_request** %7, align 8
  %59 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.request*, %struct.request** %6, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %65 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.request*, %struct.request** %6, align 8
  %68 = call i32 @blk_execute_rq_nowait(i32 %66, i32* null, %struct.request* %67, i32 1, i32* null)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %23, %20
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.request* @blk_mq_alloc_request(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local %struct.carm_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i8* @carm_ref_msg(%struct.carm_host*, i32) #1

declare dso_local i32 @carm_lookup_bucket(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32*, %struct.request*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
