; ModuleID = '/home/carl/AnghaBench/git/extr_dir-iterator.c_prepare_next_entry_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir-iterator.c_prepare_next_entry_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_iterator_int = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.dirent = type { i32 }

@DIR_ITERATOR_FOLLOW_SYMLINKS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_iterator_int*, %struct.dirent*)* @prepare_next_entry_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_next_entry_data(%struct.dir_iterator_int* %0, %struct.dirent* %1) #0 {
  %3 = alloca %struct.dir_iterator_int*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dir_iterator_int* %0, %struct.dir_iterator_int** %3, align 8
  store %struct.dirent* %1, %struct.dirent** %4, align 8
  %7 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %8 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.dirent*, %struct.dirent** %4, align 8
  %11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strbuf_addstr(%struct.TYPE_6__* %9, i32 %12)
  %14 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %15 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %20 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %18, %24
  %26 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %27 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i64 %25, i64* %28, align 8
  %29 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %30 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %35 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %38 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %33, %44
  %46 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %47 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i64 %45, i64* %48, align 8
  %49 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %50 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DIR_ITERATOR_FOLLOW_SYMLINKS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %2
  %56 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %57 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %62 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = call i32 @stat(i64 %60, i32* %63)
  store i32 %64, i32* %5, align 4
  br label %75

65:                                               ; preds = %2
  %66 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %67 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %72 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = call i32 @lstat(i64 %70, i32* %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %65, %55
  %76 = load i32, i32* @errno, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* @errno, align 4
  %81 = load i32, i32* @ENOENT, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %3, align 8
  %85 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @warning_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %83, %79, %75
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* @errno, align 4
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @strbuf_addstr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @stat(i64, i32*) #1

declare dso_local i32 @lstat(i64, i32*) #1

declare dso_local i32 @warning_errno(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
