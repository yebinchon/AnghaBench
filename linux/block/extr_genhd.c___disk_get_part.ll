; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c___disk_get_part.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c___disk_get_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i32, i32* }
%struct.gendisk = type { i32 }
%struct.disk_part_tbl = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hd_struct* @__disk_get_part(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.hd_struct*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk_part_tbl*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hd_struct* @rcu_dereference(i32 %9)
  %11 = bitcast %struct.hd_struct* %10 to %struct.disk_part_tbl*
  store %struct.disk_part_tbl* %11, %struct.disk_part_tbl** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %17 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.hd_struct* null, %struct.hd_struct** %3, align 8
  br label %35

26:                                               ; preds = %20
  %27 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %28 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.hd_struct* @rcu_dereference(i32 %33)
  store %struct.hd_struct* %34, %struct.hd_struct** %3, align 8
  br label %35

35:                                               ; preds = %26, %25
  %36 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  ret %struct.hd_struct* %36
}

declare dso_local %struct.hd_struct* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
