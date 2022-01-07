; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_map_sector_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_map_sector_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i32 }
%struct.gendisk = type { %struct.hd_struct, i32 }
%struct.disk_part_tbl = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hd_struct* @disk_map_sector_rcu(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.hd_struct*, align 8
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk_part_tbl*, align 8
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %10 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @rcu_dereference(i32 %11)
  %13 = bitcast i8* %12 to %struct.disk_part_tbl*
  store %struct.disk_part_tbl* %13, %struct.disk_part_tbl** %6, align 8
  %14 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %15 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @rcu_dereference(i32 %16)
  %18 = bitcast i8* %17 to %struct.hd_struct*
  store %struct.hd_struct* %18, %struct.hd_struct** %7, align 8
  %19 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %20 = icmp ne %struct.hd_struct* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @sector_in_part(%struct.hd_struct* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  store %struct.hd_struct* %27, %struct.hd_struct** %3, align 8
  br label %66

28:                                               ; preds = %21, %2
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %32 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %37 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @rcu_dereference(i32 %42)
  %44 = bitcast i8* %43 to %struct.hd_struct*
  store %struct.hd_struct* %44, %struct.hd_struct** %7, align 8
  %45 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %46 = icmp ne %struct.hd_struct* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @sector_in_part(%struct.hd_struct* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %54 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %57 = call i32 @rcu_assign_pointer(i32 %55, %struct.hd_struct* %56)
  %58 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  store %struct.hd_struct* %58, %struct.hd_struct** %3, align 8
  br label %66

59:                                               ; preds = %47, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %29

63:                                               ; preds = %29
  %64 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 0
  store %struct.hd_struct* %65, %struct.hd_struct** %3, align 8
  br label %66

66:                                               ; preds = %63, %52, %26
  %67 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  ret %struct.hd_struct* %67
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @sector_in_part(%struct.hd_struct*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.hd_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
