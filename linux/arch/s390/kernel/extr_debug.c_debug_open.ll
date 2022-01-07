; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64*, %struct.TYPE_12__** }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }

@debug_mutex = common dso_local global i32 0, align 4
@DEBUG_MAX_VIEWS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_AREAS = common dso_local global i32 0, align 4
@ALL_AREAS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DEBUG_PROLOG_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @debug_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @mutex_lock(i32* @debug_mutex)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = call %struct.TYPE_15__* @file_inode(%struct.file* %11)
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DEBUG_MAX_VIEWS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %22, i64 %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %45

29:                                               ; preds = %19
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %51

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %132

51:                                               ; preds = %42
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %54, i64 %56
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %51
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %65, i64 %67
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = load i32, i32* @NO_AREAS, align 4
  %76 = call %struct.TYPE_14__* @debug_info_copy(%struct.TYPE_14__* %74, i32 %75)
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %6, align 8
  br label %81

77:                                               ; preds = %62, %51
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = load i32, i32* @ALL_AREAS, align 4
  %80 = call %struct.TYPE_14__* @debug_info_copy(%struct.TYPE_14__* %78, i32 %79)
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %6, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %9, align 4
  br label %132

87:                                               ; preds = %81
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.TYPE_13__* @kmalloc(i32 64, i32 %88)
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %7, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = call i32 @debug_info_free(%struct.TYPE_14__* %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %132

97:                                               ; preds = %87
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 6
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 5
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %105, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %108, i64 %110
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @DEBUG_PROLOG_ENTRY, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = load %struct.file*, %struct.file** %4, align 8
  %126 = getelementptr inbounds %struct.file, %struct.file* %125, i32 0, i32 0
  store %struct.TYPE_13__* %124, %struct.TYPE_13__** %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = call i32 @debug_info_get(%struct.TYPE_14__* %127)
  %129 = load %struct.inode*, %struct.inode** %3, align 8
  %130 = load %struct.file*, %struct.file** %4, align 8
  %131 = call i32 @nonseekable_open(%struct.inode* %129, %struct.file* %130)
  br label %132

132:                                              ; preds = %97, %92, %84, %48
  %133 = call i32 @mutex_unlock(i32* @debug_mutex)
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_15__* @file_inode(%struct.file*) #1

declare dso_local %struct.TYPE_14__* @debug_info_copy(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @kmalloc(i32, i32) #1

declare dso_local i32 @debug_info_free(%struct.TYPE_14__*) #1

declare dso_local i32 @debug_info_get(%struct.TYPE_14__*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
