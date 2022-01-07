; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_qnode_add_bio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_qnode_add_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.throtl_qnode = type { i32, i32, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.throtl_qnode*, %struct.list_head*)* @throtl_qnode_add_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_qnode_add_bio(%struct.bio* %0, %struct.throtl_qnode* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.throtl_qnode*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.bio* %0, %struct.bio** %4, align 8
  store %struct.throtl_qnode* %1, %struct.throtl_qnode** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.throtl_qnode*, %struct.throtl_qnode** %5, align 8
  %8 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %7, i32 0, i32 2
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = call i32 @bio_list_add(i32* %8, %struct.bio* %9)
  %11 = load %struct.throtl_qnode*, %struct.throtl_qnode** %5, align 8
  %12 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %11, i32 0, i32 1
  %13 = call i64 @list_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.throtl_qnode*, %struct.throtl_qnode** %5, align 8
  %17 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %16, i32 0, i32 1
  %18 = load %struct.list_head*, %struct.list_head** %6, align 8
  %19 = call i32 @list_add_tail(i32* %17, %struct.list_head* %18)
  %20 = load %struct.throtl_qnode*, %struct.throtl_qnode** %5, align 8
  %21 = getelementptr inbounds %struct.throtl_qnode, %struct.throtl_qnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tg_to_blkg(i32 %22)
  %24 = call i32 @blkg_get(i32 %23)
  br label %25

25:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @blkg_get(i32) #1

declare dso_local i32 @tg_to_blkg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
