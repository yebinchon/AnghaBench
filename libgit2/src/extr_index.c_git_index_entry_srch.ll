; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_entry_srch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index_entry_srch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_srch_key = type { i64, i64, i32 }
%struct.entry_internal = type { i64, i32, i32 }

@GIT_INDEX_STAGE_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index_entry_srch(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.entry_srch_key*, align 8
  %7 = alloca %struct.entry_internal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.entry_srch_key*
  store %struct.entry_srch_key* %13, %struct.entry_srch_key** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.entry_internal*
  store %struct.entry_internal* %15, %struct.entry_internal** %7, align 8
  %16 = load %struct.entry_srch_key*, %struct.entry_srch_key** %6, align 8
  %17 = getelementptr inbounds %struct.entry_srch_key, %struct.entry_srch_key* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.entry_internal*, %struct.entry_internal** %7, align 8
  %20 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* %9, align 8
  br label %29

27:                                               ; preds = %2
  %28 = load i64, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  store i64 %30, i64* %11, align 8
  %31 = load %struct.entry_srch_key*, %struct.entry_srch_key** %6, align 8
  %32 = getelementptr inbounds %struct.entry_srch_key, %struct.entry_srch_key* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.entry_internal*, %struct.entry_internal** %7, align 8
  %35 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @memcmp(i32 %33, i32 %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %70

43:                                               ; preds = %29
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %70

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %70

53:                                               ; preds = %48
  %54 = load %struct.entry_srch_key*, %struct.entry_srch_key** %6, align 8
  %55 = getelementptr inbounds %struct.entry_srch_key, %struct.entry_srch_key* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GIT_INDEX_STAGE_ANY, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.entry_srch_key*, %struct.entry_srch_key** %6, align 8
  %61 = getelementptr inbounds %struct.entry_srch_key, %struct.entry_srch_key* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.entry_internal*, %struct.entry_internal** %7, align 8
  %64 = getelementptr inbounds %struct.entry_internal, %struct.entry_internal* %63, i32 0, i32 1
  %65 = call i32 @GIT_INDEX_ENTRY_STAGE(i32* %64)
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %62, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %59, %52, %47, %41
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @GIT_INDEX_ENTRY_STAGE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
