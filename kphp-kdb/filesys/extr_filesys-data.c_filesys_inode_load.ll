; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_inode_load.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_inode_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { i64, i64, i32* }

@idx_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@tot_loaded_index_data = common dso_local global i64 0, align 8
@tot_loaded_metafiles = common dso_local global i32 0, align 4
@max_loaded_index_data = common dso_local global i64 0, align 8
@lru_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filesys_inode*)* @filesys_inode_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filesys_inode_load(%struct.filesys_inode* %0) #0 {
  %2 = alloca %struct.filesys_inode*, align 8
  %3 = alloca i64, align 8
  store %struct.filesys_inode* %0, %struct.filesys_inode** %2, align 8
  %4 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %5 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %71

9:                                                ; preds = %1
  %10 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %11 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %16 = call i32 @del_use(%struct.filesys_inode* %15)
  %17 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %18 = call i32 @add_use(%struct.filesys_inode* %17)
  br label %71

19:                                               ; preds = %9
  %20 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %21 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32* @malloc(i64 %22)
  %24 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %25 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @idx_fd, align 4
  %27 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %28 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i64 @lseek(i32 %26, i64 %29, i32 %30)
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @idx_fd, align 4
  %36 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %37 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %40 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @read(i32 %35, i32* %38, i64 %41)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %45 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %51 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @tot_loaded_index_data, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* @tot_loaded_index_data, align 8
  %55 = load i32, i32* @tot_loaded_metafiles, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @tot_loaded_metafiles, align 4
  %57 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %58 = call i32 @add_use(%struct.filesys_inode* %57)
  br label %59

59:                                               ; preds = %68, %19
  %60 = load i32, i32* @tot_loaded_metafiles, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* @tot_loaded_index_data, align 8
  %64 = load i64, i64* @max_loaded_index_data, align 8
  %65 = icmp sgt i64 %63, %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* @lru_head, align 4
  %70 = call i32 @filesys_inode_unload(i32 %69)
  br label %59

71:                                               ; preds = %8, %14, %66
  ret void
}

declare dso_local i32 @del_use(%struct.filesys_inode*) #1

declare dso_local i32 @add_use(%struct.filesys_inode*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @filesys_inode_unload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
