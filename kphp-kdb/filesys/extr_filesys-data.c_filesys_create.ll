; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i32, i16, i16, i32 }
%struct.filesys_inode = type { i32, i32, i64, i64, i32 }

@lf_find = common dso_local global i32 0, align 4
@lf_creat = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@cur_inode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"creat: %s, mode = %o, uid = %d, gid = %d, inode = %lld\0A\00", align 1
@now = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i16, i16)* @filesys_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_create(i8* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.filesys_directory_node*, align 8
  %11 = alloca %struct.filesys_inode*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @lf_find, align 4
  %14 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %12, i32 %13)
  store %struct.filesys_directory_node* %14, %struct.filesys_directory_node** %10, align 8
  %15 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %16 = icmp ne %struct.filesys_directory_node* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -3, i32* %5, align 4
  br label %67

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @lf_creat, align 4
  %21 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %19, i32 %20)
  store %struct.filesys_directory_node* %21, %struct.filesys_directory_node** %10, align 8
  %22 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %23 = icmp eq %struct.filesys_directory_node* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -2, i32* %5, align 4
  br label %67

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @S_IFREG, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %30 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i16, i16* %8, align 2
  %32 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %33 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %32, i32 0, i32 1
  store i16 %31, i16* %33, align 4
  %34 = load i16, i16* %9, align 2
  %35 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %36 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %35, i32 0, i32 2
  store i16 %34, i16* %36, align 2
  %37 = load i32, i32* @cur_inode, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @cur_inode, align 4
  %39 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %40 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i16, i16* %8, align 2
  %44 = load i16, i16* %9, align 2
  %45 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %46 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42, i16 zeroext %43, i16 zeroext %44, i32 %47)
  %49 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %50 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.filesys_inode* @get_inode_f(i32 %51, i32 1)
  store %struct.filesys_inode* %52, %struct.filesys_inode** %11, align 8
  %53 = load %struct.filesys_inode*, %struct.filesys_inode** %11, align 8
  %54 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @now, align 4
  %56 = load %struct.filesys_inode*, %struct.filesys_inode** %11, align 8
  %57 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.filesys_inode*, %struct.filesys_inode** %11, align 8
  %59 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.filesys_inode*, %struct.filesys_inode** %11, align 8
  %61 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.filesys_inode*, %struct.filesys_inode** %11, align 8
  %63 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 4
  %64 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %10, align 8
  %65 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %25, %24, %17
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.filesys_directory_node* @filesys_lookup_file(i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32, i16 zeroext, i16 zeroext, i32) #1

declare dso_local %struct.filesys_inode* @get_inode_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
