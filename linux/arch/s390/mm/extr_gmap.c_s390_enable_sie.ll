; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_s390_enable_sie.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_s390_enable_sie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i32 0, align 4
@zap_zero_walk_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_enable_sie() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mm_struct*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %5, %struct.mm_struct** %2, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = call i64 @mm_has_pgste(%struct.mm_struct* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %32

10:                                               ; preds = %0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = call i32 @mm_alloc_pgste(%struct.mm_struct* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %32

17:                                               ; preds = %10
  %18 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %25 = call i32 @thp_split_mm(%struct.mm_struct* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %27 = load i32, i32* @TASK_SIZE, align 4
  %28 = call i32 @walk_page_range(%struct.mm_struct* %26, i32 0, i32 %27, i32* @zap_zero_walk_ops, i32* null)
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = call i32 @up_write(i32* %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %17, %14, %9
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @mm_has_pgste(%struct.mm_struct*) #1

declare dso_local i32 @mm_alloc_pgste(%struct.mm_struct*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @thp_split_mm(%struct.mm_struct*) #1

declare dso_local i32 @walk_page_range(%struct.mm_struct*, i32, i32, i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
