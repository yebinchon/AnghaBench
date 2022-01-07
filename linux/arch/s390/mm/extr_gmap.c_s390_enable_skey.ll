; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_s390_enable_skey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_s390_enable_skey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, i32, %struct.TYPE_3__, %struct.vm_area_struct* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@MADV_UNMERGEABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_MERGEABLE = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i32 0, align 4
@enable_skey_walk_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_enable_skey() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  store %struct.mm_struct* %6, %struct.mm_struct** %1, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = call i32 @down_write(i32* %8)
  %10 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %11 = call i64 @mm_uses_skeys(%struct.mm_struct* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %58

14:                                               ; preds = %0
  %15 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 3
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %2, align 8
  br label %21

21:                                               ; preds = %44, %14
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %23 = icmp ne %struct.vm_area_struct* %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MADV_UNMERGEABLE, align 4
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 0
  %35 = call i64 @ksm_madvise(%struct.vm_area_struct* %25, i32 %28, i32 %31, i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 3
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %46, align 8
  store %struct.vm_area_struct* %47, %struct.vm_area_struct** %2, align 8
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* @VM_MERGEABLE, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %52 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %56 = load i32, i32* @TASK_SIZE, align 4
  %57 = call i32 @walk_page_range(%struct.mm_struct* %55, i32 0, i32 %56, i32* @enable_skey_walk_ops, i32* null)
  br label %58

58:                                               ; preds = %48, %37, %13
  %59 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %60 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %59, i32 0, i32 0
  %61 = call i32 @up_write(i32* %60)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @mm_uses_skeys(%struct.mm_struct*) #1

declare dso_local i64 @ksm_madvise(%struct.vm_area_struct*, i32, i32, i32, i32*) #1

declare dso_local i32 @walk_page_range(%struct.mm_struct*, i32, i32, i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
