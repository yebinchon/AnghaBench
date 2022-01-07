; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_account_io_start.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_account_io_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.hd_struct*, i32, %struct.TYPE_2__* }
%struct.hd_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.hd_struct }

@merges = common dso_local global i32* null, align 8
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_account_io_start(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = call i32 @rq_data_dir(%struct.request* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = call i32 @blk_do_io_stat(%struct.request* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %60

13:                                               ; preds = %2
  %14 = call i32 (...) @part_stat_lock()
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 0
  %20 = load %struct.hd_struct*, %struct.hd_struct** %19, align 8
  store %struct.hd_struct* %20, %struct.hd_struct** %5, align 8
  %21 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %22 = load i32*, i32** @merges, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @part_stat_inc(%struct.hd_struct* %21, i32 %26)
  br label %55

28:                                               ; preds = %13
  %29 = load %struct.request*, %struct.request** %3, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.request*, %struct.request** %3, align 8
  %33 = call i32 @blk_rq_pos(%struct.request* %32)
  %34 = call %struct.hd_struct* @disk_map_sector_rcu(%struct.TYPE_2__* %31, i32 %33)
  store %struct.hd_struct* %34, %struct.hd_struct** %5, align 8
  %35 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %36 = call i32 @hd_struct_try_get(%struct.hd_struct* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %28
  %39 = load %struct.request*, %struct.request** %3, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.hd_struct* %42, %struct.hd_struct** %5, align 8
  %43 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %44 = call i32 @hd_struct_get(%struct.hd_struct* %43)
  br label %45

45:                                               ; preds = %38, %28
  %46 = load %struct.request*, %struct.request** %3, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @part_inc_in_flight(i32 %48, %struct.hd_struct* %49, i32 %50)
  %52 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %53 = load %struct.request*, %struct.request** %3, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 0
  store %struct.hd_struct* %52, %struct.hd_struct** %54, align 8
  br label %55

55:                                               ; preds = %45, %17
  %56 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %57 = load i32, i32* @jiffies, align 4
  %58 = call i32 @update_io_ticks(%struct.hd_struct* %56, i32 %57)
  %59 = call i32 (...) @part_stat_unlock()
  br label %60

60:                                               ; preds = %55, %12
  ret void
}

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @blk_do_io_stat(%struct.request*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @part_stat_inc(%struct.hd_struct*, i32) #1

declare dso_local %struct.hd_struct* @disk_map_sector_rcu(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @hd_struct_try_get(%struct.hd_struct*) #1

declare dso_local i32 @hd_struct_get(%struct.hd_struct*) #1

declare dso_local i32 @part_inc_in_flight(i32, %struct.hd_struct*, i32) #1

declare dso_local i32 @update_io_ticks(%struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
