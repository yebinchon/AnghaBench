; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_do_fd_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_do_fd_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"do_fd_action\0A\00", align 1
@UseTrackbuffer = common dso_local global i64 0, align 8
@IsFormatting = common dso_local global i64 0, align 8
@ReqSide = common dso_local global i32 0, align 4
@ReqTrack = common dso_local global i32 0, align 4
@ReqCmd = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@ReqSector = common dso_local global i32 0, align 4
@ReqData = common dso_local global i32 0, align 4
@ReqCnt = common dso_local global i64 0, align 8
@fd_request = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@SelectedDrive = common dso_local global i32 0, align 4
@UD = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@UDT = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_fd_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fd_action(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* @UseTrackbuffer, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = load i64, i64* @IsFormatting, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %30, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @ReqSide, align 4
  %13 = load i32, i32* @ReqTrack, align 4
  %14 = call i64 @IS_BUFFERED(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load i64, i64* @ReqCmd, align 8
  %18 = load i64, i64* @READ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* @ReqSector, align 4
  %22 = call i32 @SECTOR_BUFFER(i32 %21)
  %23 = load i32, i32* @ReqData, align 4
  %24 = call i32 @copy_buffer(i32 %22, i32 %23)
  %25 = load i64, i64* @ReqCnt, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @ReqCnt, align 8
  %27 = load i32, i32* @fd_request, align 4
  %28 = call i64 @blk_rq_cur_sectors(i32 %27)
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @setup_req_params(i32 %31)
  br label %10

33:                                               ; preds = %20
  %34 = load i32, i32* @BLK_STS_OK, align 4
  %35 = call i32 @fd_end_request_cur(i32 %34)
  br label %74

36:                                               ; preds = %16
  %37 = load i32, i32* @ReqData, align 4
  %38 = load i32, i32* @ReqSector, align 4
  %39 = call i32 @SECTOR_BUFFER(i32 %38)
  %40 = call i32 @copy_buffer(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %10
  br label %43

43:                                               ; preds = %42, %6, %1
  %44 = load i32, i32* @SelectedDrive, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @fd_select_drive(i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @UD, i32 0, i32 0), align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @fd_calibrate()
  br label %74

55:                                               ; preds = %50
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @UD, i32 0, i32 0), align 4
  %57 = load i32, i32* @ReqTrack, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @UDT, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %57, %60
  %62 = icmp ne i32 %56, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = call i32 (...) @fd_seek()
  br label %73

65:                                               ; preds = %55
  %66 = load i64, i64* @IsFormatting, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (...) @fd_writetrack()
  br label %72

70:                                               ; preds = %65
  %71 = call i32 (...) @fd_rwsec()
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %33, %73, %53
  ret void
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @IS_BUFFERED(i32, i32, i32) #1

declare dso_local i32 @copy_buffer(i32, i32) #1

declare dso_local i32 @SECTOR_BUFFER(i32) #1

declare dso_local i64 @blk_rq_cur_sectors(i32) #1

declare dso_local i32 @setup_req_params(i32) #1

declare dso_local i32 @fd_end_request_cur(i32) #1

declare dso_local i32 @fd_select_drive(i32) #1

declare dso_local i32 @fd_calibrate(...) #1

declare dso_local i32 @fd_seek(...) #1

declare dso_local i32 @fd_writetrack(...) #1

declare dso_local i32 @fd_rwsec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
