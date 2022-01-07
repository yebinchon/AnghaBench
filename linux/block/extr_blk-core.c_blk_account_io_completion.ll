; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_account_io_completion.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_account_io_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.hd_struct* }
%struct.hd_struct = type { i32 }

@sectors = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_account_io_completion(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hd_struct*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = call i64 @blk_do_io_stat(%struct.request* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = call i32 @req_op(%struct.request* %11)
  %13 = call i32 @op_stat_group(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = call i32 (...) @part_stat_lock()
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 0
  %17 = load %struct.hd_struct*, %struct.hd_struct** %16, align 8
  store %struct.hd_struct* %17, %struct.hd_struct** %6, align 8
  %18 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %19 = load i32*, i32** @sectors, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = lshr i32 %24, 9
  %26 = call i32 @part_stat_add(%struct.hd_struct* %18, i32 %23, i32 %25)
  %27 = call i32 (...) @part_stat_unlock()
  br label %28

28:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @blk_do_io_stat(%struct.request*) #1

declare dso_local i32 @op_stat_group(i32) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @part_stat_add(%struct.hd_struct*, i32, i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
