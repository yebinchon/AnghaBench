; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_unuse_one_window.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_unuse_one_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.packed_git* }
%struct.packed_git = type { i32, %struct.packed_git* }
%struct.pack_window = type { i32, i64, i32 }

@the_repository = common dso_local global %struct.TYPE_4__* null, align 8
@pack_mapped = common dso_local global i32 0, align 4
@pack_open_windows = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packed_git*)* @unuse_one_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_one_window(%struct.packed_git* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.packed_git*, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca %struct.pack_window*, align 8
  %7 = alloca %struct.pack_window*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  store %struct.packed_git* null, %struct.packed_git** %5, align 8
  store %struct.pack_window* null, %struct.pack_window** %6, align 8
  store %struct.pack_window* null, %struct.pack_window** %7, align 8
  %8 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %9 = icmp ne %struct.packed_git* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %12 = call i32 @scan_windows(%struct.packed_git* %11, %struct.packed_git** %5, %struct.pack_window** %6, %struct.pack_window** %7)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_repository, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.packed_git*, %struct.packed_git** %17, align 8
  store %struct.packed_git* %18, %struct.packed_git** %4, align 8
  br label %19

19:                                               ; preds = %25, %13
  %20 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %21 = icmp ne %struct.packed_git* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %24 = call i32 @scan_windows(%struct.packed_git* %23, %struct.packed_git** %5, %struct.pack_window** %6, %struct.pack_window** %7)
  br label %25

25:                                               ; preds = %22
  %26 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %27 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %26, i32 0, i32 1
  %28 = load %struct.packed_git*, %struct.packed_git** %27, align 8
  store %struct.packed_git* %28, %struct.packed_git** %4, align 8
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %31 = icmp ne %struct.packed_git* %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load %struct.pack_window*, %struct.pack_window** %6, align 8
  %34 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pack_window*, %struct.pack_window** %6, align 8
  %37 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @munmap(i32 %35, i64 %38)
  %40 = load %struct.pack_window*, %struct.pack_window** %6, align 8
  %41 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @pack_mapped, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* @pack_mapped, align 4
  %47 = load %struct.pack_window*, %struct.pack_window** %7, align 8
  %48 = icmp ne %struct.pack_window* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %32
  %50 = load %struct.pack_window*, %struct.pack_window** %6, align 8
  %51 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.pack_window*, %struct.pack_window** %7, align 8
  %54 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %61

55:                                               ; preds = %32
  %56 = load %struct.pack_window*, %struct.pack_window** %6, align 8
  %57 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %60 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.pack_window*, %struct.pack_window** %6, align 8
  %63 = call i32 @free(%struct.pack_window* %62)
  %64 = load i32, i32* @pack_open_windows, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @pack_open_windows, align 4
  store i32 1, i32* %2, align 4
  br label %67

66:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @scan_windows(%struct.packed_git*, %struct.packed_git**, %struct.pack_window**, %struct.pack_window**) #1

declare dso_local i32 @munmap(i32, i64) #1

declare dso_local i32 @free(%struct.pack_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
