; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_change_attrs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_change_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.lev_filesys_xfs_change_attrs = type { i32, i32, i32, i32, i32, i32, i32 }

@new_dir = common dso_local global i8* null, align 8
@status = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"New attrs: %s \00", align 1
@new_dir_length = common dso_local global i32 0, align 4
@use_clone = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@tmp_dir = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"lcopy_attrs returns error code %d.\0A\00", align 1
@pot_copy_attrs = common dso_local global i32 0, align 4
@LEV_FILESYS_XFS_CHANGE_ATTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32)* @change_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_attrs(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lev_filesys_xfs_change_attrs*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** @new_dir, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @append_path(i8* %15, i32 %16, i32 %19)
  %21 = load i64, i64* @status, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i8*, i8** @new_dir, align 8
  %25 = load i32, i32* @new_dir_length, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @print_attrs(i32 %30)
  br label %127

32:                                               ; preds = %3
  %33 = load i8*, i8** @new_dir, align 8
  %34 = load i32, i32* @new_dir_length, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* @use_clone, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %32
  %43 = load i32, i32* @PATH_MAX, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %10, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %11, align 8
  %47 = load i32, i32* @PATH_MAX, align 4
  %48 = load i8*, i8** @tmp_dir, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load i32, i32* @PATH_MAX, align 4
  %52 = icmp slt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @lcopy_attrs(i8* %46, %struct.TYPE_7__* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 -2, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %64

63:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %13, align 4
  switch i32 %66, label %134 [
    i32 0, label %67
    i32 1, label %132
  ]

67:                                               ; preds = %64
  br label %75

68:                                               ; preds = %32
  %69 = load i32, i32* @pot_copy_attrs, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @pending_operation_create(i32 %69, i32* null, i8* %70, %struct.TYPE_7__* %72)
  %74 = call i32 @pending_operation_push(i32 %73)
  br label %75

75:                                               ; preds = %68, %67
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = call i32 @incr_file_mode_stat(%struct.TYPE_6__* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @LEV_FILESYS_XFS_CHANGE_ATTRS, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 28, %84
  %86 = trunc i64 %85 to i32
  %87 = call %struct.lev_filesys_xfs_change_attrs* @filesys_xfs_alloc_log_event(i32 %82, i32 %86)
  store %struct.lev_filesys_xfs_change_attrs* %87, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %93 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %99 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %105 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %111 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %117 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %120 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.lev_filesys_xfs_change_attrs*, %struct.lev_filesys_xfs_change_attrs** %14, align 8
  %122 = getelementptr inbounds %struct.lev_filesys_xfs_change_attrs, %struct.lev_filesys_xfs_change_attrs* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @memcpy(i32 %123, i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %81, %23
  %128 = load i8*, i8** @new_dir, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 0, i8* %131, align 1
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %64
  %133 = load i32, i32* %4, align 4
  ret i32 %133

134:                                              ; preds = %64
  unreachable
}

declare dso_local i32 @append_path(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @print_attrs(i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @lcopy_attrs(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pending_operation_push(i32) #1

declare dso_local i32 @pending_operation_create(i32, i32*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @incr_file_mode_stat(%struct.TYPE_6__*) #1

declare dso_local %struct.lev_filesys_xfs_change_attrs* @filesys_xfs_alloc_log_event(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
