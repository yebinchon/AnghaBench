; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_next_sg.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_next_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.scatterlist**, %struct.scatterlist*)* @blk_next_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @blk_next_sg(%struct.scatterlist** %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca %struct.scatterlist**, align 8
  %5 = alloca %struct.scatterlist*, align 8
  store %struct.scatterlist** %0, %struct.scatterlist*** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  %6 = load %struct.scatterlist**, %struct.scatterlist*** %4, align 8
  %7 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %8 = icmp ne %struct.scatterlist* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  store %struct.scatterlist* %10, %struct.scatterlist** %3, align 8
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.scatterlist**, %struct.scatterlist*** %4, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %14 = call i32 @sg_unmark_end(%struct.scatterlist* %13)
  %15 = load %struct.scatterlist**, %struct.scatterlist*** %4, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %17 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %16)
  store %struct.scatterlist* %17, %struct.scatterlist** %3, align 8
  br label %18

18:                                               ; preds = %11, %9
  %19 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  ret %struct.scatterlist* %19
}

declare dso_local i32 @sg_unmark_end(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
