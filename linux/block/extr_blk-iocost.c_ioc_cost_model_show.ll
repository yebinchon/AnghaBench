; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_cost_model_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_cost_model_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkcg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ioc_cost_model_prfill = common dso_local global i32 0, align 4
@blkcg_policy_iocost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ioc_cost_model_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc_cost_model_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.blkcg*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = call i32 @seq_css(%struct.seq_file* %6)
  %8 = call %struct.blkcg* @css_to_blkcg(i32 %7)
  store %struct.blkcg* %8, %struct.blkcg** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.blkcg*, %struct.blkcg** %5, align 8
  %11 = load i32, i32* @ioc_cost_model_prfill, align 4
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call %struct.TYPE_2__* @seq_cft(%struct.seq_file* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @blkcg_print_blkgs(%struct.seq_file* %9, %struct.blkcg* %10, i32 %11, i32* @blkcg_policy_iocost, i32 %15, i32 0)
  ret i32 0
}

declare dso_local %struct.blkcg* @css_to_blkcg(i32) #1

declare dso_local i32 @seq_css(%struct.seq_file*) #1

declare dso_local i32 @blkcg_print_blkgs(%struct.seq_file*, %struct.blkcg*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @seq_cft(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
