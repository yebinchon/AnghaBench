; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_account_io_done.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_account_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i64, %struct.hd_struct* }
%struct.hd_struct = type { i32 }

@RQF_FLUSH_SEQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ios = common dso_local global i32* null, align 8
@nsecs = common dso_local global i32* null, align 8
@time_in_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_account_io_done(%struct.request* %0, i64 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hd_struct*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = call i64 @blk_do_io_stat(%struct.request* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %2
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RQF_FLUSH_SEQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %66, label %17

17:                                               ; preds = %10
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = call i32 @req_op(%struct.request* %18)
  %20 = call i32 @op_stat_group(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = call i32 (...) @part_stat_lock()
  %22 = load %struct.request*, %struct.request** %3, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 3
  %24 = load %struct.hd_struct*, %struct.hd_struct** %23, align 8
  store %struct.hd_struct* %24, %struct.hd_struct** %6, align 8
  %25 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %26 = load i32, i32* @jiffies, align 4
  %27 = call i32 @update_io_ticks(%struct.hd_struct* %25, i32 %26)
  %28 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %29 = load i32*, i32** @ios, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @part_stat_inc(%struct.hd_struct* %28, i32 %33)
  %35 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %36 = load i32*, i32** @nsecs, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.request*, %struct.request** %3, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = call i32 @part_stat_add(%struct.hd_struct* %35, i32 %40, i64 %45)
  %47 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %48 = load i32, i32* @time_in_queue, align 4
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.request*, %struct.request** %3, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = call i64 @nsecs_to_jiffies64(i64 %53)
  %55 = call i32 @part_stat_add(%struct.hd_struct* %47, i32 %48, i64 %54)
  %56 = load %struct.request*, %struct.request** %3, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %60 = load %struct.request*, %struct.request** %3, align 8
  %61 = call i32 @rq_data_dir(%struct.request* %60)
  %62 = call i32 @part_dec_in_flight(i32 %58, %struct.hd_struct* %59, i32 %61)
  %63 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %64 = call i32 @hd_struct_put(%struct.hd_struct* %63)
  %65 = call i32 (...) @part_stat_unlock()
  br label %66

66:                                               ; preds = %17, %10, %2
  ret void
}

declare dso_local i64 @blk_do_io_stat(%struct.request*) #1

declare dso_local i32 @op_stat_group(i32) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @update_io_ticks(%struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_inc(%struct.hd_struct*, i32) #1

declare dso_local i32 @part_stat_add(%struct.hd_struct*, i32, i64) #1

declare dso_local i64 @nsecs_to_jiffies64(i64) #1

declare dso_local i32 @part_dec_in_flight(i32, %struct.hd_struct*, i32) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @hd_struct_put(%struct.hd_struct*) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
