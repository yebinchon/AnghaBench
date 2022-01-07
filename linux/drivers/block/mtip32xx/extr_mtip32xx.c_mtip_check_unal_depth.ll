; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_check_unal_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_check_unal_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.driver_data* }
%struct.driver_data = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }
%struct.mtip_cmd = type { i32 }

@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.request*)* @mtip_check_unal_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_check_unal_depth(%struct.blk_mq_hw_ctx* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca %struct.mtip_cmd*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.driver_data*, %struct.driver_data** %11, align 8
  store %struct.driver_data* %12, %struct.driver_data** %6, align 8
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = call %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request* %13)
  store %struct.mtip_cmd* %14, %struct.mtip_cmd** %7, align 8
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = call i64 @rq_data_dir(%struct.request* %15)
  %17 = load i64, i64* @READ, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %57

25:                                               ; preds = %19
  %26 = load %struct.request*, %struct.request** %5, align 8
  %27 = call i32 @blk_rq_sectors(%struct.request* %26)
  %28 = icmp sle i32 %27, 64
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = call i32 @blk_rq_pos(%struct.request* %30)
  %32 = and i32 %31, 7
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @blk_rq_sectors(%struct.request* %35)
  %37 = and i32 %36, 7
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %29
  %40 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.mtip_cmd*, %struct.mtip_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %50 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i64 @atomic_dec_if_positive(i32* %52)
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %48, %43
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %24
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.mtip_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @atomic_dec_if_positive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
