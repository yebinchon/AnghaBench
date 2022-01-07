; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_process_blocks.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_process_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_block = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@num_blocks = common dso_local global i32 0, align 4
@blocks = common dso_local global %struct.fw_block* null, align 8
@board = common dso_local global %struct.TYPE_4__* null, align 8
@bootext_block = common dso_local global %struct.TYPE_3__* null, align 8
@BLOCK_TYPE_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_blocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fw_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %22, %0
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @num_blocks, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.fw_block*, %struct.fw_block** @blocks, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %11, i64 %13
  store %struct.fw_block* %14, %struct.fw_block** %2, align 8
  %15 = load %struct.fw_block*, %struct.fw_block** %2, align 8
  %16 = call i32 @block_stat_file(%struct.fw_block* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %1, align 4
  br label %36

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @board, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bootext_block, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %3, align 8
  %33 = load i32, i32* @BLOCK_TYPE_RAW, align 4
  %34 = call i32 @calc_block_offsets(i32 %33, i64* %3)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %25, %19
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @block_stat_file(%struct.fw_block*) #1

declare dso_local i32 @calc_block_offsets(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
