; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_show_dirstat_by_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_show_dirstat_by_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diffstat_t = type { i32, %struct.diffstat_file** }
%struct.diffstat_file = type { i64, i64, i32, i64 }
%struct.diff_options = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dirstat_dir = type { i32, %struct.TYPE_5__*, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@dirstat_compare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diffstat_t*, %struct.diff_options*)* @show_dirstat_by_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dirstat_by_line(%struct.diffstat_t* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.diffstat_t*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.dirstat_dir, align 8
  %8 = alloca %struct.diffstat_file*, align 8
  %9 = alloca i64, align 8
  store %struct.diffstat_t* %0, %struct.diffstat_t** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %10 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %11 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %107

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  %17 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %20 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %89, %15
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %31 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %92

34:                                               ; preds = %28
  %35 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %36 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %35, i32 0, i32 1
  %37 = load %struct.diffstat_file**, %struct.diffstat_file*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.diffstat_file*, %struct.diffstat_file** %37, i64 %39
  %41 = load %struct.diffstat_file*, %struct.diffstat_file** %40, align 8
  store %struct.diffstat_file* %41, %struct.diffstat_file** %8, align 8
  %42 = load %struct.diffstat_file*, %struct.diffstat_file** %8, align 8
  %43 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.diffstat_file*, %struct.diffstat_file** %8, align 8
  %46 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  store i64 %48, i64* %9, align 8
  %49 = load %struct.diffstat_file*, %struct.diffstat_file** %8, align 8
  %50 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @DIV_ROUND_UP(i64 %54, i32 64)
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %53, %34
  %57 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ALLOC_GROW(%struct.TYPE_5__* %58, i32 %61, i64 %63)
  %65 = load %struct.diffstat_file*, %struct.diffstat_file** %8, align 8
  %66 = getelementptr inbounds %struct.diffstat_file, %struct.diffstat_file* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %67, i32* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 %75, i64* %82, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %6, align 8
  %86 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %56
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %28

92:                                               ; preds = %28
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %107

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.dirstat_dir, %struct.dirstat_dir* %7, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* @dirstat_compare, align 4
  %103 = call i32 @QSORT(%struct.TYPE_5__* %98, i64 %101, i32 %102)
  %104 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @gather_dirstat(%struct.diff_options* %104, %struct.dirstat_dir* %7, i64 %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %107

107:                                              ; preds = %96, %95, %14
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @QSORT(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @gather_dirstat(%struct.diff_options*, %struct.dirstat_dir*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
