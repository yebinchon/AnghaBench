; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_inode.c_inode_release.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_inode.c_inode_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_data = type { i64, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, %struct.inode_data*)* }

@inodes_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inode_release(%struct.inode_data* %0) #0 {
  %2 = alloca %struct.inode_data*, align 8
  store %struct.inode_data* %0, %struct.inode_data** %2, align 8
  %3 = call i32 @lock(i32* @inodes_lock)
  %4 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %5 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %4, i32 0, i32 1
  %6 = call i32 @lock(i32* %5)
  %7 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %8 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %1
  %13 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %14 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %13, i32 0, i32 1
  %15 = call i32 @unlock(i32* %14)
  %16 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %17 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %16, i32 0, i32 3
  %18 = call i32 @list_remove(i32* %17)
  %19 = call i32 @unlock(i32* @inodes_lock)
  %20 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %21 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_5__*, %struct.inode_data*)*, i32 (%struct.TYPE_5__*, %struct.inode_data*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_5__*, %struct.inode_data*)* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %12
  %29 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %30 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_5__*, %struct.inode_data*)*, i32 (%struct.TYPE_5__*, %struct.inode_data*)** %34, align 8
  %36 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %37 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %40 = call i32 %35(%struct.TYPE_5__* %38, %struct.inode_data* %39)
  br label %41

41:                                               ; preds = %28, %12
  %42 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %43 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @mount_release(%struct.TYPE_5__* %44)
  %46 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %47 = call i32 @free(%struct.inode_data* %46)
  br label %53

48:                                               ; preds = %1
  %49 = load %struct.inode_data*, %struct.inode_data** %2, align 8
  %50 = getelementptr inbounds %struct.inode_data, %struct.inode_data* %49, i32 0, i32 1
  %51 = call i32 @unlock(i32* %50)
  %52 = call i32 @unlock(i32* @inodes_lock)
  br label %53

53:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @mount_release(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.inode_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
