; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_root_group.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_init_root_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_group = type { %struct.TYPE_3__, i32, %struct.bfq_data*, i32*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.bfq_data = type { i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@BFQ_IOPRIO_CLASSES = common dso_local global i32 0, align 4
@BFQ_SERVICE_TREE_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_group*, %struct.bfq_data*)* @bfq_init_root_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_init_root_group(%struct.bfq_group* %0, %struct.bfq_data* %1) #0 {
  %3 = alloca %struct.bfq_group*, align 8
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.bfq_group* %0, %struct.bfq_group** %3, align 8
  store %struct.bfq_data* %1, %struct.bfq_data** %4, align 8
  %6 = load i32, i32* @RB_ROOT, align 4
  %7 = load %struct.bfq_group*, %struct.bfq_group** %3, align 8
  %8 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @BFQ_IOPRIO_CLASSES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32, i32* @BFQ_SERVICE_TREE_INIT, align 4
  %15 = load %struct.bfq_group*, %struct.bfq_group** %3, align 8
  %16 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %14, i32* %21, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load i32, i32* @jiffies, align 4
  %27 = load %struct.bfq_group*, %struct.bfq_group** %3, align 8
  %28 = getelementptr inbounds %struct.bfq_group, %struct.bfq_group* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
