; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_unlink.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i32 }
%struct.filesys_inode = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"filesys_unlink (%s)\0A\00", align 1
@lf_unlink = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @filesys_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_unlink(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.filesys_directory_node*, align 8
  %5 = alloca %struct.filesys_inode*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @lf_unlink, align 4
  %10 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %8, i32 %9)
  store %struct.filesys_directory_node* %10, %struct.filesys_directory_node** %4, align 8
  %11 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %4, align 8
  %12 = icmp eq %struct.filesys_directory_node* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %4, align 8
  %18 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.filesys_inode* @get_inode_f(i32 %19, i32 -1)
  store %struct.filesys_inode* %20, %struct.filesys_inode** %5, align 8
  %21 = load %struct.filesys_inode*, %struct.filesys_inode** %5, align 8
  %22 = icmp eq %struct.filesys_inode* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %16
  %27 = load %struct.filesys_inode*, %struct.filesys_inode** %5, align 8
  %28 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.filesys_inode*, %struct.filesys_inode** %5, align 8
  %33 = call i32 @free_inode(%struct.filesys_inode* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %4, align 8
  %36 = call i32 @filesys_directory_node_free(%struct.filesys_directory_node* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %23, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local %struct.filesys_directory_node* @filesys_lookup_file(i8*, i32) #1

declare dso_local %struct.filesys_inode* @get_inode_f(i32, i32) #1

declare dso_local i32 @free_inode(%struct.filesys_inode*) #1

declare dso_local i32 @filesys_directory_node_free(%struct.filesys_directory_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
