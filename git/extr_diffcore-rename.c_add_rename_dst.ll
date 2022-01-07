; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_add_rename_dst.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_add_rename_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.diff_filespec = type { i32, i32, i32, i32 }

@rename_dst = common dso_local global %struct.TYPE_5__* null, align 8
@rename_dst_nr = common dso_local global i32 0, align 4
@rename_dst_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_filespec*)* @add_rename_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_rename_dst(%struct.diff_filespec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diff_filespec*, align 8
  %4 = alloca i32, align 4
  store %struct.diff_filespec* %0, %struct.diff_filespec** %3, align 8
  %5 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %6 = call i32 @find_rename_dst(%struct.diff_filespec* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %69

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 0, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_dst, align 8
  %15 = load i32, i32* @rename_dst_nr, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @rename_dst_alloc, align 4
  %18 = call i32 @ALLOC_GROW(%struct.TYPE_5__* %14, i32 %16, i32 %17)
  %19 = load i32, i32* @rename_dst_nr, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @rename_dst_nr, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @rename_dst_nr, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %10
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_dst, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_dst, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = load i32, i32* @rename_dst_nr, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @MOVE_ARRAY(%struct.TYPE_5__* %29, %struct.TYPE_5__* %33, i32 %37)
  br label %39

39:                                               ; preds = %24, %10
  %40 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %41 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @alloc_filespec(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_dst, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %43, i32* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_dst, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %56 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %55, i32 0, i32 2
  %57 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %58 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %61 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fill_filespec(i32 %54, i32* %56, i32 %59, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_dst, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %39, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @find_rename_dst(%struct.diff_filespec*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @MOVE_ARRAY(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @alloc_filespec(i32) #1

declare dso_local i32 @fill_filespec(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
