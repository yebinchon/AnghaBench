; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_rename.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i64, i32, i32, i32 }
%struct.filesys_inode = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"filesys_rename (%s, %s)\0A\00", align 1
@lf_find = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@lf_unlink = common dso_local global i32 0, align 4
@lf_creat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @filesys_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.filesys_directory_node*, align 8
  %7 = alloca %struct.filesys_directory_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.filesys_inode*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @lf_find, align 4
  %15 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %13, i32 %14)
  store %struct.filesys_directory_node* %15, %struct.filesys_directory_node** %6, align 8
  %16 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %17 = icmp eq %struct.filesys_directory_node* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %109

21:                                               ; preds = %2
  %22 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %23 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %109

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @lf_find, align 4
  %32 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %30, i32 %31)
  store %struct.filesys_directory_node* %32, %struct.filesys_directory_node** %7, align 8
  %33 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %34 = icmp ne %struct.filesys_directory_node* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %37 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %40 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %109

44:                                               ; preds = %35, %29
  %45 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %46 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call %struct.filesys_inode* @get_inode_f(i64 %48, i32 0)
  store %struct.filesys_inode* %49, %struct.filesys_inode** %9, align 8
  %50 = load %struct.filesys_inode*, %struct.filesys_inode** %9, align 8
  %51 = icmp eq %struct.filesys_inode* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EFAULT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %109

55:                                               ; preds = %44
  %56 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %57 = icmp ne %struct.filesys_directory_node* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @lf_unlink, align 4
  %61 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %59, i32 %60)
  store %struct.filesys_directory_node* %61, %struct.filesys_directory_node** %7, align 8
  %62 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %63 = icmp ne %struct.filesys_directory_node* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %67 = call i32 @filesys_directory_node_free(%struct.filesys_directory_node* %66)
  br label %68

68:                                               ; preds = %58, %55
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @lf_creat, align 4
  %71 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %69, i32 %70)
  store %struct.filesys_directory_node* %71, %struct.filesys_directory_node** %7, align 8
  %72 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %73 = icmp eq %struct.filesys_directory_node* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %109

77:                                               ; preds = %68
  %78 = load %struct.filesys_inode*, %struct.filesys_inode** %9, align 8
  %79 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %84 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %86 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %89 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %91 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %94 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %96 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %99 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* @lf_unlink, align 4
  %102 = call %struct.filesys_directory_node* @filesys_lookup_file(i8* %100, i32 %101)
  store %struct.filesys_directory_node* %102, %struct.filesys_directory_node** %6, align 8
  %103 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %104 = icmp ne %struct.filesys_directory_node* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %108 = call i32 @filesys_directory_node_free(%struct.filesys_directory_node* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %77, %74, %52, %43, %26, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.filesys_directory_node* @filesys_lookup_file(i8*, i32) #1

declare dso_local %struct.filesys_inode* @get_inode_f(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @filesys_directory_node_free(%struct.filesys_directory_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
