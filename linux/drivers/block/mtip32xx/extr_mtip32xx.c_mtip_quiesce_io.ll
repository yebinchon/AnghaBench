; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_quiesce_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_quiesce_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@MTIP_PF_SVC_THD_ACTIVE_BIT = common dso_local global i32 0, align 4
@MTIP_PF_ISSUE_CMDS_BIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*, i64)* @mtip_quiesce_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_quiesce_io(%struct.mtip_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtip_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %9 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @blk_mq_quiesce_queue(i32 %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @msecs_to_jiffies(i64 %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %49, %2
  %19 = load i32, i32* @MTIP_PF_SVC_THD_ACTIVE_BIT, align 4
  %20 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %21 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @MTIP_PF_ISSUE_CMDS_BIT, align 4
  %26 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %27 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @msleep(i32 20)
  br label %49

32:                                               ; preds = %24, %18
  %33 = call i32 @msleep(i32 100)
  %34 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %35 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @mtip_check_surprise_removal(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %69

42:                                               ; preds = %32
  %43 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %44 = call i32 @mtip_commands_active(%struct.mtip_port* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @time_before(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %18, label %54

54:                                               ; preds = %49, %47
  %55 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %56 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @blk_mq_unquiesce_queue(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  br label %67

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi i32 [ %65, %63 ], [ 0, %66 ]
  store i32 %68, i32* %3, align 4
  br label %78

69:                                               ; preds = %41
  %70 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %71 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @blk_mq_unquiesce_queue(i32 %74)
  %76 = load i32, i32* @EFAULT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %67
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @blk_mq_quiesce_queue(i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @mtip_check_surprise_removal(i32) #1

declare dso_local i32 @mtip_commands_active(%struct.mtip_port*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
