; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_ftruncate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_ftruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i8* }

@tot_loaded_index_data = common dso_local global i32 0, align 4
@tot_allocated_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filesys_inode*, i32)* @filesys_ftruncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filesys_ftruncate(%struct.filesys_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.filesys_inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.filesys_inode* %0, %struct.filesys_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %9 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %15 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %20 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @realloc(i8* %21, i32 %22)
  %24 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %25 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %27 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub i32 %28, %29
  %31 = load i32, i32* @tot_loaded_index_data, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* @tot_loaded_index_data, align 4
  br label %33

33:                                               ; preds = %18, %13
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %36 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %2
  br label %38

38:                                               ; preds = %45, %37
  %39 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %40 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call %struct.TYPE_4__* @tree_lowerbound(i32 %41, i32 %42)
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %5, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %47 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @tree_delete(i32 %48, i32 %51)
  %53 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %54 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %38

55:                                               ; preds = %38
  %56 = load i32, i32* %4, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  %59 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %60 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sub i32 %62, 1
  %64 = call %struct.TYPE_4__* @tree_upperbound(i32 %61, i32 %63)
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %5, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = icmp ne %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %102

67:                                               ; preds = %58
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %71, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %67
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub i32 %80, %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @realloc(i8* %89, i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sub i32 %96, %97
  %99 = load i32, i32* @tot_allocated_data, align 4
  %100 = sub i32 %99, %98
  store i32 %100, i32* @tot_allocated_data, align 4
  br label %101

101:                                              ; preds = %79, %67
  br label %102

102:                                              ; preds = %101, %58
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32, i32* %4, align 4
  %105 = load %struct.filesys_inode*, %struct.filesys_inode** %3, align 8
  %106 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  ret i32 0
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @tree_lowerbound(i32, i32) #1

declare dso_local i32 @tree_delete(i32, i32) #1

declare dso_local %struct.TYPE_4__* @tree_upperbound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
