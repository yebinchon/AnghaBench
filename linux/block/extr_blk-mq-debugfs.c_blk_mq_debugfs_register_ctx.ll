; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_register_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_mq_debugfs_register_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32 }
%struct.blk_mq_ctx = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"cpu%u\00", align 1
@blk_mq_debugfs_ctx_attrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, %struct.blk_mq_ctx*)* @blk_mq_debugfs_register_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_debugfs_register_ctx(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_ctx* %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca %struct.blk_mq_ctx*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca [20 x i8], align 16
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store %struct.blk_mq_ctx* %1, %struct.blk_mq_ctx** %4, align 8
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %8 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @snprintf(i8* %7, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %13 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dentry* @debugfs_create_dir(i8* %12, i32 %15)
  store %struct.dentry* %16, %struct.dentry** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %4, align 8
  %19 = load i32, i32* @blk_mq_debugfs_ctx_attrs, align 4
  %20 = call i32 @debugfs_create_files(%struct.dentry* %17, %struct.blk_mq_ctx* %18, i32 %19)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_files(%struct.dentry*, %struct.blk_mq_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
