; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_inode_unload.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_inode_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { i64, i32* }

@tot_loaded_index_data = common dso_local global i32 0, align 4
@tot_loaded_metafiles = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filesys_inode*)* @filesys_inode_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filesys_inode_unload(%struct.filesys_inode* %0) #0 {
  %2 = alloca %struct.filesys_inode*, align 8
  store %struct.filesys_inode* %0, %struct.filesys_inode** %2, align 8
  %3 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %4 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %10 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @free(i32* %11)
  %13 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %14 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %16 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @tot_loaded_index_data, align 4
  %19 = sext i32 %18 to i64
  %20 = sub nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* @tot_loaded_index_data, align 4
  %22 = load i32, i32* @tot_loaded_metafiles, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* @tot_loaded_metafiles, align 4
  %24 = load %struct.filesys_inode*, %struct.filesys_inode** %2, align 8
  %25 = call i32 @del_use(%struct.filesys_inode* %24)
  br label %26

26:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @del_use(%struct.filesys_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
