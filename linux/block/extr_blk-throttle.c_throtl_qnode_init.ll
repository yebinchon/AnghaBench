; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_qnode_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_qnode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_qnode = type { %struct.throtl_grp*, i32, i32 }
%struct.throtl_grp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_qnode*, %struct.throtl_grp*)* @throtl_qnode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_qnode_init(%struct.throtl_qnode* %0, %struct.throtl_grp* %1) #0 {
  %3 = alloca %struct.throtl_qnode*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  store %struct.throtl_qnode* %0, %struct.throtl_qnode** %3, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %4, align 8
  %5 = load %struct.throtl_qnode*, %struct.throtl_qnode** %3, align 8
  %6 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %5, i32 0, i32 2
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.throtl_qnode*, %struct.throtl_qnode** %3, align 8
  %9 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %8, i32 0, i32 1
  %10 = call i32 @bio_list_init(i32* %9)
  %11 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %12 = load %struct.throtl_qnode*, %struct.throtl_qnode** %3, align 8
  %13 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %12, i32 0, i32 0
  store %struct.throtl_grp* %11, %struct.throtl_grp** %13, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
