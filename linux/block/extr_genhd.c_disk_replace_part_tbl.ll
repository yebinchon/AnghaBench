; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_replace_part_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_replace_part_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.disk_part_tbl = type { i32 }

@rcu_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, %struct.disk_part_tbl*)* @disk_replace_part_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_replace_part_tbl(%struct.gendisk* %0, %struct.disk_part_tbl* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.disk_part_tbl*, align 8
  %5 = alloca %struct.disk_part_tbl*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store %struct.disk_part_tbl* %1, %struct.disk_part_tbl** %4, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.disk_part_tbl* @rcu_dereference_protected(i32 %8, i32 1)
  store %struct.disk_part_tbl* %9, %struct.disk_part_tbl** %5, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %4, align 8
  %14 = call i32 @rcu_assign_pointer(i32 %12, %struct.disk_part_tbl* %13)
  %15 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %16 = icmp ne %struct.disk_part_tbl* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %19 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rcu_assign_pointer(i32 %20, %struct.disk_part_tbl* null)
  %22 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %23 = load i32, i32* @rcu_head, align 4
  %24 = call i32 @kfree_rcu(%struct.disk_part_tbl* %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.disk_part_tbl* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.disk_part_tbl*) #1

declare dso_local i32 @kfree_rcu(%struct.disk_part_tbl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
