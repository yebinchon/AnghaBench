; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_hctx_flags_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_hctx_flags_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blk_mq_hw_ctx = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"alloc_policy=\00", align 1
@alloc_policy_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@hctx_flag_name = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.seq_file*)* @hctx_flags_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hctx_flags_show(i8* %0, %struct.seq_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.blk_mq_hw_ctx*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.blk_mq_hw_ctx*
  store %struct.blk_mq_hw_ctx* %8, %struct.blk_mq_hw_ctx** %5, align 8
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BLK_MQ_FLAG_TO_ALLOC_POLICY(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  %16 = load i8**, i8*** @alloc_policy_name, align 8
  %17 = call i32 @ARRAY_SIZE(i8** %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load i8**, i8*** @alloc_policy_name, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load i8**, i8*** @alloc_policy_name, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @seq_puts(%struct.seq_file* %27, i8* %32)
  br label %38

34:                                               ; preds = %19, %2
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @BLK_ALLOC_POLICY_TO_MQ_FLAG(i32 %45)
  %47 = xor i32 %44, %46
  %48 = load i8**, i8*** @hctx_flag_name, align 8
  %49 = load i8**, i8*** @hctx_flag_name, align 8
  %50 = call i32 @ARRAY_SIZE(i8** %49)
  %51 = call i32 @blk_flags_show(%struct.seq_file* %41, i32 %47, i8** %48, i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = call i32 @seq_puts(%struct.seq_file* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @BLK_MQ_FLAG_TO_ALLOC_POLICY(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @blk_flags_show(%struct.seq_file*, i32, i8**, i32) #1

declare dso_local i32 @BLK_ALLOC_POLICY_TO_MQ_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
