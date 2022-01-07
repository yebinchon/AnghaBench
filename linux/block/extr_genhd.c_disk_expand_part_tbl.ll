; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_expand_part_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_expand_part_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32, i32 }
%struct.disk_part_tbl = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@part = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_expand_part_tbl(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk_part_tbl*, align 8
  %7 = alloca %struct.disk_part_tbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.disk_part_tbl* @rcu_dereference_protected(i32 %13, i32 1)
  store %struct.disk_part_tbl* %14, %struct.disk_part_tbl** %6, align 8
  %15 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %16 = icmp ne %struct.disk_part_tbl* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %19 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %94

31:                                               ; preds = %22
  %32 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %33 = call i32 @disk_max_parts(%struct.gendisk* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %38 = call i32 @disk_max_parts(%struct.gendisk* %37)
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %94

43:                                               ; preds = %35, %31
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %94

48:                                               ; preds = %43
  %49 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %50 = load i32, i32* @part, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @struct_size(%struct.disk_part_tbl* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %55 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.disk_part_tbl* @kzalloc_node(i32 %52, i32 %53, i32 %56)
  store %struct.disk_part_tbl* %57, %struct.disk_part_tbl** %7, align 8
  %58 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %59 = icmp ne %struct.disk_part_tbl* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %94

63:                                               ; preds = %48
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %66 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %87, %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %73 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %6, align 8
  %80 = getelementptr inbounds %struct.disk_part_tbl, %struct.disk_part_tbl* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rcu_assign_pointer(i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %92 = load %struct.disk_part_tbl*, %struct.disk_part_tbl** %7, align 8
  %93 = call i32 @disk_replace_part_tbl(%struct.gendisk* %91, %struct.disk_part_tbl* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %60, %47, %40, %28
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.disk_part_tbl* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @disk_max_parts(%struct.gendisk*) #1

declare dso_local %struct.disk_part_tbl* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @struct_size(%struct.disk_part_tbl*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @disk_replace_part_tbl(%struct.gendisk*, %struct.disk_part_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
