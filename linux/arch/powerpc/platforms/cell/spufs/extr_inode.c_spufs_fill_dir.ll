; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_fill_dir.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_inode.c_spufs_fill_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.spufs_tree_descr = type { i32, i32, i32, i64* }
%struct.spu_context = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.spufs_tree_descr*, i32, %struct.spu_context*)* @spufs_fill_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_fill_dir(%struct.dentry* %0, %struct.spufs_tree_descr* %1, i32 %2, %struct.spu_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.spufs_tree_descr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spu_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.spufs_tree_descr* %1, %struct.spufs_tree_descr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.spu_context* %3, %struct.spu_context** %9, align 8
  br label %12

12:                                               ; preds = %59, %4
  %13 = load %struct.spufs_tree_descr*, %struct.spufs_tree_descr** %7, align 8
  %14 = getelementptr inbounds %struct.spufs_tree_descr, %struct.spufs_tree_descr* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.spufs_tree_descr*, %struct.spufs_tree_descr** %7, align 8
  %19 = getelementptr inbounds %struct.spufs_tree_descr, %struct.spufs_tree_descr* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %12
  %25 = phi i1 [ false, %12 ], [ %23, %17 ]
  br i1 %25, label %26, label %62

26:                                               ; preds = %24
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = load %struct.spufs_tree_descr*, %struct.spufs_tree_descr** %7, align 8
  %29 = getelementptr inbounds %struct.spufs_tree_descr, %struct.spufs_tree_descr* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = call %struct.dentry* @d_alloc_name(%struct.dentry* %27, i64* %30)
  store %struct.dentry* %31, %struct.dentry** %11, align 8
  %32 = load %struct.dentry*, %struct.dentry** %11, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %63

37:                                               ; preds = %26
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dentry*, %struct.dentry** %11, align 8
  %42 = load %struct.spufs_tree_descr*, %struct.spufs_tree_descr** %7, align 8
  %43 = getelementptr inbounds %struct.spufs_tree_descr, %struct.spufs_tree_descr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.spufs_tree_descr*, %struct.spufs_tree_descr** %7, align 8
  %46 = getelementptr inbounds %struct.spufs_tree_descr, %struct.spufs_tree_descr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.spufs_tree_descr*, %struct.spufs_tree_descr** %7, align 8
  %51 = getelementptr inbounds %struct.spufs_tree_descr, %struct.spufs_tree_descr* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spu_context*, %struct.spu_context** %9, align 8
  %54 = call i32 @spufs_new_file(i32 %40, %struct.dentry* %41, i32 %44, i32 %49, i32 %52, %struct.spu_context* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %63

59:                                               ; preds = %37
  %60 = load %struct.spufs_tree_descr*, %struct.spufs_tree_descr** %7, align 8
  %61 = getelementptr inbounds %struct.spufs_tree_descr, %struct.spufs_tree_descr* %60, i32 1
  store %struct.spufs_tree_descr* %61, %struct.spufs_tree_descr** %7, align 8
  br label %12

62:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %57, %34
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i64*) #1

declare dso_local i32 @spufs_new_file(i32, %struct.dentry*, i32, i32, i32, %struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
