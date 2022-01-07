; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_close_pack_windows.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_close_pack_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { %struct.pack_window*, i32 }
%struct.pack_window = type { %struct.pack_window*, i64, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"pack '%s' still has open windows to it\00", align 1
@pack_mapped = common dso_local global i32 0, align 4
@pack_open_windows = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_pack_windows(%struct.packed_git* %0) #0 {
  %2 = alloca %struct.packed_git*, align 8
  %3 = alloca %struct.pack_window*, align 8
  store %struct.packed_git* %0, %struct.packed_git** %2, align 8
  br label %4

4:                                                ; preds = %22, %1
  %5 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %6 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %5, i32 0, i32 0
  %7 = load %struct.pack_window*, %struct.pack_window** %6, align 8
  %8 = icmp ne %struct.pack_window* %7, null
  br i1 %8, label %9, label %46

9:                                                ; preds = %4
  %10 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %11 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %10, i32 0, i32 0
  %12 = load %struct.pack_window*, %struct.pack_window** %11, align 8
  store %struct.pack_window* %12, %struct.pack_window** %3, align 8
  %13 = load %struct.pack_window*, %struct.pack_window** %3, align 8
  %14 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %17, %9
  %23 = load %struct.pack_window*, %struct.pack_window** %3, align 8
  %24 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pack_window*, %struct.pack_window** %3, align 8
  %27 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @munmap(i32 %25, i64 %28)
  %30 = load %struct.pack_window*, %struct.pack_window** %3, align 8
  %31 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @pack_mapped, align 4
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @pack_mapped, align 4
  %37 = load i32, i32* @pack_open_windows, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @pack_open_windows, align 4
  %39 = load %struct.pack_window*, %struct.pack_window** %3, align 8
  %40 = getelementptr inbounds %struct.pack_window, %struct.pack_window* %39, i32 0, i32 0
  %41 = load %struct.pack_window*, %struct.pack_window** %40, align 8
  %42 = load %struct.packed_git*, %struct.packed_git** %2, align 8
  %43 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %42, i32 0, i32 0
  store %struct.pack_window* %41, %struct.pack_window** %43, align 8
  %44 = load %struct.pack_window*, %struct.pack_window** %3, align 8
  %45 = call i32 @free(%struct.pack_window* %44)
  br label %4

46:                                               ; preds = %4
  ret void
}

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @munmap(i32, i64) #1

declare dso_local i32 @free(%struct.pack_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
