; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.pktcdvd_device = type { i32, i32 }

@pktcdvd_mutex = common dso_local global i32 0, align 4
@ctl_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@PACKET_WRITABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CD_FRAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @pkt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pktcdvd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pktcdvd_device* null, %struct.pktcdvd_device** %6, align 8
  %8 = call i32 @mutex_lock(i32* @pktcdvd_mutex)
  %9 = call i32 @mutex_lock(i32* @ctl_mutex)
  %10 = load %struct.block_device*, %struct.block_device** %4, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MINOR(i32 %12)
  %14 = call %struct.pktcdvd_device* @pkt_find_dev_from_minor(i32 %13)
  store %struct.pktcdvd_device* %14, %struct.pktcdvd_device** %6, align 8
  %15 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %16 = icmp ne %struct.pktcdvd_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %71

20:                                               ; preds = %2
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %22 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %28 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %32 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %50

35:                                               ; preds = %20
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FMODE_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* @PACKET_WRITABLE, align 4
  %42 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %43 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %66

49:                                               ; preds = %40, %35
  br label %63

50:                                               ; preds = %20
  %51 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @FMODE_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @pkt_open_dev(%struct.pktcdvd_device* %51, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %66

59:                                               ; preds = %50
  %60 = load %struct.block_device*, %struct.block_device** %4, align 8
  %61 = load i32, i32* @CD_FRAMESIZE, align 4
  %62 = call i32 @set_blocksize(%struct.block_device* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %49
  %64 = call i32 @mutex_unlock(i32* @ctl_mutex)
  %65 = call i32 @mutex_unlock(i32* @pktcdvd_mutex)
  store i32 0, i32* %3, align 4
  br label %75

66:                                               ; preds = %58, %46
  %67 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %68 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %17
  %72 = call i32 @mutex_unlock(i32* @ctl_mutex)
  %73 = call i32 @mutex_unlock(i32* @pktcdvd_mutex)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %63
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pktcdvd_device* @pkt_find_dev_from_minor(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pkt_open_dev(%struct.pktcdvd_device*, i32) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
