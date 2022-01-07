; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_inode.c_inode_get.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_inode.c_inode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_data = type { i64, i32, i64, i32, i32, i32, i64, %struct.mount* }
%struct.mount = type { i32 }

@inodes_lock = common dso_local global i32 0, align 4
@inodes_hash = common dso_local global i32* null, align 8
@INODES_HASH_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode_data* @inode_get(%struct.mount* %0, i64 %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode_data*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 @lock(i32* @inodes_lock)
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.inode_data* @inode_get_data(%struct.mount* %7, i64 %8)
  store %struct.inode_data* %9, %struct.inode_data** %5, align 8
  %10 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %11 = icmp eq %struct.inode_data* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = call %struct.inode_data* @malloc(i32 56)
  store %struct.inode_data* %13, %struct.inode_data** %5, align 8
  %14 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %15 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %18 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mount*, %struct.mount** %3, align 8
  %20 = call i32 @mount_retain(%struct.mount* %19)
  %21 = load %struct.mount*, %struct.mount** %3, align 8
  %22 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %23 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %22, i32 0, i32 7
  store %struct.mount* %21, %struct.mount** %23, align 8
  %24 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %25 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %27 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %26, i32 0, i32 5
  %28 = call i32 @cond_init(i32* %27)
  %29 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %30 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %29, i32 0, i32 4
  %31 = call i32 @list_init(i32* %30)
  %32 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %33 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %32, i32 0, i32 3
  %34 = call i32 @list_init(i32* %33)
  %35 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %36 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %35, i32 0, i32 1
  %37 = call i32 @lock_init(i32* %36)
  %38 = load i32*, i32** @inodes_hash, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @INODES_HASH_SIZE, align 8
  %41 = urem i64 %39, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %44 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %43, i32 0, i32 3
  %45 = call i32 @list_add(i32* %42, i32* %44)
  br label %46

46:                                               ; preds = %12, %2
  %47 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %48 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %47, i32 0, i32 1
  %49 = call i32 @lock(i32* %48)
  %50 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %51 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  %55 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %54, i32 0, i32 1
  %56 = call i32 @unlock(i32* %55)
  %57 = call i32 @unlock(i32* @inodes_lock)
  %58 = load %struct.inode_data*, %struct.inode_data** %5, align 8
  ret %struct.inode_data* %58
}

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.inode_data* @inode_get_data(%struct.mount*, i64) #1

declare dso_local %struct.inode_data* @malloc(i32) #1

declare dso_local i32 @mount_retain(%struct.mount*) #1

declare dso_local i32 @cond_init(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @lock_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
