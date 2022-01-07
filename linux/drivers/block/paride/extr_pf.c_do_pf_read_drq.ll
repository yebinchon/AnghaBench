; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pf.c_do_pf_read_drq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pf.c_do_pf_read_drq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@pf_current = common dso_local global %struct.TYPE_4__* null, align 8
@STAT_BUSY = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@STAT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"read block\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@pf_retries = common dso_local global i64 0, align 8
@PF_MAX_RETRIES = common dso_local global i64 0, align 8
@do_pf_read_start = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@pf_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_pf_read_drq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pf_read_drq() #0 {
  br label %1

1:                                                ; preds = %0, %41
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %3 = load i32, i32* @STAT_BUSY, align 4
  %4 = load i32, i32* @STAT_DRQ, align 4
  %5 = load i32, i32* @STAT_ERR, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @pf_wait(%struct.TYPE_4__* %2, i32 %3, i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @STAT_ERR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pi_disconnect(i32 %14)
  %16 = load i64, i64* @pf_retries, align 8
  %17 = load i64, i64* @PF_MAX_RETRIES, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %21 = call i32 @pf_req_sense(%struct.TYPE_4__* %20, i32 0)
  %22 = load i64, i64* @pf_retries, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @pf_retries, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @do_pf_read_start, align 4
  %28 = call i32 @pi_do_claimed(i32 %26, i32 %27)
  br label %48

29:                                               ; preds = %11
  %30 = load i32, i32* @BLK_STS_IOERR, align 4
  %31 = call i32 @next_request(i32 %30)
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @pf_buf, align 4
  %37 = call i32 @pi_read_block(i32 %35, i32 %36, i32 512)
  %38 = call i64 (...) @pf_next_buf()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %42

41:                                               ; preds = %32
  br label %1

42:                                               ; preds = %40
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pf_current, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pi_disconnect(i32 %45)
  %47 = call i32 @next_request(i32 0)
  br label %48

48:                                               ; preds = %42, %29, %19
  ret void
}

declare dso_local i32 @pf_wait(%struct.TYPE_4__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @pi_disconnect(i32) #1

declare dso_local i32 @pf_req_sense(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pi_do_claimed(i32, i32) #1

declare dso_local i32 @next_request(i32) #1

declare dso_local i32 @pi_read_block(i32, i32, i32) #1

declare dso_local i64 @pf_next_buf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
