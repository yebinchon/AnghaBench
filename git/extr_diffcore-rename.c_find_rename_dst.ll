; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_find_rename_dst.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_find_rename_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_rename_dst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.diff_filespec = type { i32 }

@rename_dst_nr = common dso_local global i32 0, align 4
@rename_dst = common dso_local global %struct.diff_rename_dst* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_filespec*)* @find_rename_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rename_dst(%struct.diff_filespec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.diff_filespec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_rename_dst*, align 8
  %8 = alloca i32, align 4
  store %struct.diff_filespec* %0, %struct.diff_filespec** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @rename_dst_nr, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %43, %41, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %16, %17
  %19 = ashr i32 %18, 1
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.diff_rename_dst*, %struct.diff_rename_dst** @rename_dst, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.diff_rename_dst, %struct.diff_rename_dst* %21, i64 %23
  store %struct.diff_rename_dst* %24, %struct.diff_rename_dst** %7, align 8
  %25 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %26 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.diff_rename_dst*, %struct.diff_rename_dst** %7, align 8
  %29 = getelementptr inbounds %struct.diff_rename_dst, %struct.diff_rename_dst* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %27, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %14
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %14
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %5, align 4
  br label %10

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %10

46:                                               ; preds = %10
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 0, %47
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %36
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
