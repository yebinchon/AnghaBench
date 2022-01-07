; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_get_inode_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_get_inode_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { i64, i64, %struct.filesys_inode* }

@INODE_HASH_SIZE = common dso_local global i32 0, align 4
@H = common dso_local global i8** null, align 8
@tot_inodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filesys_inode* @get_inode_f(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.filesys_inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.filesys_inode**, align 8
  %8 = alloca %struct.filesys_inode*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.filesys_inode* null, %struct.filesys_inode** %3, align 8
  br label %100

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @INODE_HASH_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load i8**, i8*** @H, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = bitcast i8** %22 to %struct.filesys_inode**
  store %struct.filesys_inode** %23, %struct.filesys_inode*** %7, align 8
  br label %24

24:                                               ; preds = %71, %13
  %25 = load %struct.filesys_inode**, %struct.filesys_inode*** %7, align 8
  %26 = load %struct.filesys_inode*, %struct.filesys_inode** %25, align 8
  %27 = icmp ne %struct.filesys_inode* %26, null
  br i1 %27, label %28, label %74

28:                                               ; preds = %24
  %29 = load %struct.filesys_inode**, %struct.filesys_inode*** %7, align 8
  %30 = load %struct.filesys_inode*, %struct.filesys_inode** %29, align 8
  store %struct.filesys_inode* %30, %struct.filesys_inode** %8, align 8
  %31 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %32 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %28
  %37 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %38 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %37, i32 0, i32 2
  %39 = load %struct.filesys_inode*, %struct.filesys_inode** %38, align 8
  %40 = load %struct.filesys_inode**, %struct.filesys_inode*** %7, align 8
  store %struct.filesys_inode* %39, %struct.filesys_inode** %40, align 8
  store i32 1, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %45 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %43
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i8**, i8*** @H, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to %struct.filesys_inode*
  %61 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %62 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %61, i32 0, i32 2
  store %struct.filesys_inode* %60, %struct.filesys_inode** %62, align 8
  %63 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %64 = bitcast %struct.filesys_inode* %63 to i8*
  %65 = load i8**, i8*** @H, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %64, i8** %68, align 8
  br label %69

69:                                               ; preds = %54, %51
  %70 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  store %struct.filesys_inode* %70, %struct.filesys_inode** %3, align 8
  br label %100

71:                                               ; preds = %28
  %72 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %73 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %72, i32 0, i32 2
  store %struct.filesys_inode** %73, %struct.filesys_inode*** %7, align 8
  br label %24

74:                                               ; preds = %24
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store %struct.filesys_inode* null, %struct.filesys_inode** %3, align 8
  br label %100

78:                                               ; preds = %74
  %79 = call %struct.filesys_inode* @zmalloc0(i32 24)
  store %struct.filesys_inode* %79, %struct.filesys_inode** %8, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %82 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i8**, i8*** @H, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = bitcast i8* %87 to %struct.filesys_inode*
  %89 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %90 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %89, i32 0, i32 2
  store %struct.filesys_inode* %88, %struct.filesys_inode** %90, align 8
  %91 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  %92 = bitcast %struct.filesys_inode* %91 to i8*
  %93 = load i8**, i8*** @H, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %92, i8** %96, align 8
  %97 = load i32, i32* @tot_inodes, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @tot_inodes, align 4
  %99 = load %struct.filesys_inode*, %struct.filesys_inode** %8, align 8
  store %struct.filesys_inode* %99, %struct.filesys_inode** %3, align 8
  br label %100

100:                                              ; preds = %78, %77, %69, %12
  %101 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  ret %struct.filesys_inode* %101
}

declare dso_local %struct.filesys_inode* @zmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
