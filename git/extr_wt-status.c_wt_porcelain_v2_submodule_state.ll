; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_submodule_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_submodule_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status_change_data = type { i32, i64, i32, i32, i32 }

@DIRTY_SUBMODULE_MODIFIED = common dso_local global i32 0, align 4
@DIRTY_SUBMODULE_UNTRACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status_change_data*, i8*)* @wt_porcelain_v2_submodule_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_porcelain_v2_submodule_state(%struct.wt_status_change_data* %0, i8* %1) #0 {
  %3 = alloca %struct.wt_status_change_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.wt_status_change_data* %0, %struct.wt_status_change_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %6 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @S_ISGITLINK(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %12 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISGITLINK(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %18 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @S_ISGITLINK(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %16, %10, %2
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 83, i8* %24, align 1
  %25 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %26 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 67, i32 46
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %33, align 1
  %34 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %35 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DIRTY_SUBMODULE_MODIFIED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 77, i32 46
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8 %42, i8* %44, align 1
  %45 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %46 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DIRTY_SUBMODULE_UNTRACKED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 85, i32 46
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  store i8 %53, i8* %55, align 1
  br label %65

56:                                               ; preds = %16
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 78, i8* %58, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8 46, i8* %60, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8 46, i8* %62, align 1
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 46, i8* %64, align 1
  br label %65

65:                                               ; preds = %56, %22
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8 0, i8* %67, align 1
  ret void
}

declare dso_local i64 @S_ISGITLINK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
