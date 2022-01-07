; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_scan_windows.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_scan_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { %struct.pack_window* }
%struct.pack_window = type { i64, i32, %struct.pack_window* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packed_git*, %struct.packed_git**, %struct.pack_window**, %struct.pack_window**)* @scan_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_windows(%struct.packed_git* %0, %struct.packed_git** %1, %struct.pack_window** %2, %struct.pack_window** %3) #0 {
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca %struct.packed_git**, align 8
  %7 = alloca %struct.pack_window**, align 8
  %8 = alloca %struct.pack_window**, align 8
  %9 = alloca %struct.pack_window*, align 8
  %10 = alloca %struct.pack_window*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %5, align 8
  store %struct.packed_git** %1, %struct.packed_git*** %6, align 8
  store %struct.pack_window** %2, %struct.pack_window*** %7, align 8
  store %struct.pack_window** %3, %struct.pack_window*** %8, align 8
  store %struct.pack_window* null, %struct.pack_window** %10, align 8
  %11 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %12 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %11, i32 0, i32 0
  %13 = load %struct.pack_window*, %struct.pack_window** %12, align 8
  store %struct.pack_window* %13, %struct.pack_window** %9, align 8
  br label %14

14:                                               ; preds = %45, %4
  %15 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %16 = icmp ne %struct.pack_window* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %19 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = load %struct.pack_window**, %struct.pack_window*** %7, align 8
  %24 = load %struct.pack_window*, %struct.pack_window** %23, align 8
  %25 = icmp ne %struct.pack_window* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %28 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pack_window**, %struct.pack_window*** %7, align 8
  %31 = load %struct.pack_window*, %struct.pack_window** %30, align 8
  %32 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26, %22
  %36 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %37 = load %struct.packed_git**, %struct.packed_git*** %6, align 8
  store %struct.packed_git* %36, %struct.packed_git** %37, align 8
  %38 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %39 = load %struct.pack_window**, %struct.pack_window*** %7, align 8
  store %struct.pack_window* %38, %struct.pack_window** %39, align 8
  %40 = load %struct.pack_window*, %struct.pack_window** %10, align 8
  %41 = load %struct.pack_window**, %struct.pack_window*** %8, align 8
  store %struct.pack_window* %40, %struct.pack_window** %41, align 8
  br label %42

42:                                               ; preds = %35, %26
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  store %struct.pack_window* %44, %struct.pack_window** %10, align 8
  br label %45

45:                                               ; preds = %43
  %46 = load %struct.pack_window*, %struct.pack_window** %9, align 8
  %47 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %46, i32 0, i32 2
  %48 = load %struct.pack_window*, %struct.pack_window** %47, align 8
  store %struct.pack_window* %48, %struct.pack_window** %9, align 8
  br label %14

49:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
