; ModuleID = '/home/carl/AnghaBench/linux/block/extr_partition-generic.c_delete_partition.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_partition-generic.c_delete_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.disk_part_tbl = type { i32, i32, i32* }
%struct.hd_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_partition(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.disk_part_tbl*, align 8
  %6 = alloca %struct.hd_struct*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @rcu_dereference_protected(i32 %9, i32 1)
  %11 = bitcast i8* %10 to %struct.disk_part_tbl*
  store %struct.disk_part_tbl* %11, %struct.disk_part_tbl** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %14 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %20 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @rcu_dereference_protected(i32 %25, i32 1)
  %27 = bitcast i8* %26 to %struct.hd_struct*
  store %struct.hd_struct* %27, %struct.hd_struct** %6, align 8
  %28 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %29 = icmp ne %struct.hd_struct* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %56

31:                                               ; preds = %18
  %32 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %33 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rcu_assign_pointer(i32 %38, i32* null)
  %40 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %5, align 8
  %41 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rcu_assign_pointer(i32 %42, i32* null)
  %44 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %45 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kobject_put(i32 %46)
  %48 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %49 = call i32 @part_to_dev(%struct.hd_struct* %48)
  %50 = call i32 @device_del(i32 %49)
  %51 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %52 = call i32 @part_devt(%struct.hd_struct* %51)
  %53 = call i32 @blk_invalidate_devt(i32 %52)
  %54 = load %struct.hd_struct*, %struct.hd_struct** %6, align 8
  %55 = call i32 @hd_struct_kill(%struct.hd_struct* %54)
  br label %56

56:                                               ; preds = %31, %30, %17
  ret void
}

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @device_del(i32) #1

declare dso_local i32 @part_to_dev(%struct.hd_struct*) #1

declare dso_local i32 @blk_invalidate_devt(i32) #1

declare dso_local i32 @part_devt(%struct.hd_struct*) #1

declare dso_local i32 @hd_struct_kill(%struct.hd_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
