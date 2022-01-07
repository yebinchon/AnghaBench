; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_parse_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_parse_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { %struct.TYPE_2__*, %struct.nbd_config* }
%struct.TYPE_2__ = type { i32 }
%struct.nbd_config = type { i32 }

@NBD_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@NBD_FLAG_SEND_TRIM = common dso_local global i32 0, align 4
@QUEUE_FLAG_DISCARD = common dso_local global i32 0, align 4
@NBD_FLAG_SEND_FLUSH = common dso_local global i32 0, align 4
@NBD_FLAG_SEND_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*)* @nbd_parse_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_parse_flags(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  %3 = alloca %struct.nbd_config*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %4 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %5 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %4, i32 0, i32 1
  %6 = load %struct.nbd_config*, %struct.nbd_config** %5, align 8
  store %struct.nbd_config* %6, %struct.nbd_config** %3, align 8
  %7 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %8 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NBD_FLAG_READ_ONLY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %15 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @set_disk_ro(%struct.TYPE_2__* %16, i32 1)
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %20 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @set_disk_ro(%struct.TYPE_2__* %21, i32 0)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %25 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NBD_FLAG_SEND_TRIM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* @QUEUE_FLAG_DISCARD, align 4
  %32 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %33 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @blk_queue_flag_set(i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %23
  %39 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %40 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NBD_FLAG_SEND_FLUSH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %47 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NBD_FLAG_SEND_FUA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %54 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @blk_queue_write_cache(i32 %57, i32 1, i32 1)
  br label %66

59:                                               ; preds = %45
  %60 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %61 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @blk_queue_write_cache(i32 %64, i32 1, i32 0)
  br label %66

66:                                               ; preds = %59, %52
  br label %74

67:                                               ; preds = %38
  %68 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %69 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @blk_queue_write_cache(i32 %72, i32 0, i32 0)
  br label %74

74:                                               ; preds = %67, %66
  ret void
}

declare dso_local i32 @set_disk_ro(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, i32) #1

declare dso_local i32 @blk_queue_write_cache(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
