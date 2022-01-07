; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_do_read.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_do_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i64 }
%struct.filesys_inode = type { i32 }

@lf_find = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"do_read: inode = %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_read(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.filesys_directory_node*, align 8
  %11 = alloca %struct.filesys_inode*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32, i32* @lf_find, align 4
  %14 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %12, i32 %13)
  store %struct.filesys_directory_node* %14, %struct.filesys_directory_node** %10, align 8
  %15 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %16 = icmp eq %struct.filesys_directory_node* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %42

18:                                               ; preds = %4
  %19 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %20 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -2, i32* %5, align 4
  br label %42

24:                                               ; preds = %18
  %25 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %26 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.filesys_inode* @get_inode_f(i64 %27, i32 0)
  store %struct.filesys_inode* %28, %struct.filesys_inode** %11, align 8
  %29 = load %struct.filesys_inode*, %struct.filesys_inode** %11, align 8
  %30 = icmp eq %struct.filesys_inode* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -3, i32* %5, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %34 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.filesys_inode*, %struct.filesys_inode** %11, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @filesys_read(%struct.filesys_inode* %37, i32 %38, i32 %39, i8* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %32, %31, %23, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.filesys_directory_node* @filesys_lookup_file(i8*, i32) #1

declare dso_local %struct.filesys_inode* @get_inode_f(i64, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @filesys_read(%struct.filesys_inode*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
