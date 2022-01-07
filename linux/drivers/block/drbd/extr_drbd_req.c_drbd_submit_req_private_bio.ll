; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_submit_req_private_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_submit_req_private_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { %struct.bio*, %struct.drbd_device* }
%struct.bio = type { i32 }
%struct.drbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REQ_OP_READ = common dso_local global i64 0, align 8
@DRBD_FAULT_DT_WR = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@DRBD_FAULT_DT_RA = common dso_local global i32 0, align 4
@DRBD_FAULT_DT_RD = common dso_local global i32 0, align 4
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@EE_ZEROOUT = common dso_local global i32 0, align 4
@REQ_NOUNMAP = common dso_local global i32 0, align 4
@EE_TRIM = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_request*)* @drbd_submit_req_private_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_submit_req_private_bio(%struct.drbd_request* %0) #0 {
  %2 = alloca %struct.drbd_request*, align 8
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %2, align 8
  %6 = load %struct.drbd_request*, %struct.drbd_request** %2, align 8
  %7 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %6, i32 0, i32 1
  %8 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  store %struct.drbd_device* %8, %struct.drbd_device** %3, align 8
  %9 = load %struct.drbd_request*, %struct.drbd_request** %2, align 8
  %10 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %9, i32 0, i32 0
  %11 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %11, %struct.bio** %4, align 8
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = call i64 @bio_op(%struct.bio* %12)
  %14 = load i64, i64* @REQ_OP_READ, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @DRBD_FAULT_DT_WR, align 4
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @REQ_RAHEAD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @DRBD_FAULT_DT_RA, align 4
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @DRBD_FAULT_DT_RD, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %16
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bio_set_dev(%struct.bio* %31, i32 %36)
  %38 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %39 = call i64 @get_ldev(%struct.drbd_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %30
  %42 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @drbd_insert_fault(%struct.drbd_device* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = call i32 @bio_io_error(%struct.bio* %47)
  br label %84

49:                                               ; preds = %41
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = call i64 @bio_op(%struct.bio* %50)
  %52 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.drbd_request*, %struct.drbd_request** %2, align 8
  %56 = load i32, i32* @EE_ZEROOUT, align 4
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @REQ_NOUNMAP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @EE_TRIM, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 0, %63 ], [ %65, %64 ]
  %68 = or i32 %56, %67
  %69 = call i32 @drbd_process_discard_or_zeroes_req(%struct.drbd_request* %55, i32 %68)
  br label %83

70:                                               ; preds = %49
  %71 = load %struct.bio*, %struct.bio** %4, align 8
  %72 = call i64 @bio_op(%struct.bio* %71)
  %73 = load i64, i64* @REQ_OP_DISCARD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.drbd_request*, %struct.drbd_request** %2, align 8
  %77 = load i32, i32* @EE_TRIM, align 4
  %78 = call i32 @drbd_process_discard_or_zeroes_req(%struct.drbd_request* %76, i32 %77)
  br label %82

79:                                               ; preds = %70
  %80 = load %struct.bio*, %struct.bio** %4, align 8
  %81 = call i32 @generic_make_request(%struct.bio* %80)
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %46
  %85 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %86 = call i32 @put_ldev(%struct.drbd_device* %85)
  br label %90

87:                                               ; preds = %30
  %88 = load %struct.bio*, %struct.bio** %4, align 8
  %89 = call i32 @bio_io_error(%struct.bio* %88)
  br label %90

90:                                               ; preds = %87, %84
  ret void
}

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local i64 @drbd_insert_fault(%struct.drbd_device*, i32) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @drbd_process_discard_or_zeroes_req(%struct.drbd_request*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
