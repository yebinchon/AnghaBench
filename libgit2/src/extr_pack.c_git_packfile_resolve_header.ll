; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile_resolve_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_git_packfile_resolve_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32 }

@GIT_OBJECT_OFS_DELTA = common dso_local global i64 0, align 8
@GIT_OBJECT_REF_DELTA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_packfile_resolve_header(i64* %0, i64* %1, %struct.git_pack_file* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.git_pack_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store %struct.git_pack_file* %2, %struct.git_pack_file** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.git_pack_file*, %struct.git_pack_file** %8, align 8
  %20 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %19, i32 0, i32 0
  %21 = call i32 @git_packfile_unpack_header(i64* %12, i64* %13, i32* %20, i32** %10, i64* %11)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %5, align 4
  br label %97

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @GIT_OBJECT_OFS_DELTA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @GIT_OBJECT_REF_DELTA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30, %26
  %35 = load %struct.git_pack_file*, %struct.git_pack_file** %8, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @get_delta_base(%struct.git_pack_file* %35, i32** %10, i64* %11, i64 %36, i64 %37)
  store i64 %38, i64* %14, align 8
  %39 = call i32 @git_mwindow_close(i32** %10)
  %40 = load %struct.git_pack_file*, %struct.git_pack_file** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @git_packfile_stream_open(i32* %17, %struct.git_pack_file* %40, i64 %41)
  store i32 %42, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %5, align 4
  br label %97

46:                                               ; preds = %34
  %47 = load i64*, i64** %6, align 8
  %48 = call i32 @git_delta_read_header_fromstream(i64* %16, i64* %47, i32* %17)
  store i32 %48, i32* %15, align 4
  %49 = call i32 @git_packfile_stream_dispose(i32* %17)
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %5, align 4
  br label %97

54:                                               ; preds = %46
  br label %58

55:                                               ; preds = %30
  %56 = load i64, i64* %12, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  store i64 0, i64* %14, align 8
  br label %58

58:                                               ; preds = %55, %54
  br label %59

59:                                               ; preds = %87, %58
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @GIT_OBJECT_OFS_DELTA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @GIT_OBJECT_REF_DELTA, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ true, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %93

69:                                               ; preds = %67
  %70 = load i64, i64* %14, align 8
  store i64 %70, i64* %11, align 8
  %71 = load %struct.git_pack_file*, %struct.git_pack_file** %8, align 8
  %72 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %71, i32 0, i32 0
  %73 = call i32 @git_packfile_unpack_header(i64* %12, i64* %13, i32* %72, i32** %10, i64* %11)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %5, align 4
  br label %97

78:                                               ; preds = %69
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @GIT_OBJECT_OFS_DELTA, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @GIT_OBJECT_REF_DELTA, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %93

87:                                               ; preds = %82, %78
  %88 = load %struct.git_pack_file*, %struct.git_pack_file** %8, align 8
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @get_delta_base(%struct.git_pack_file* %88, i32** %10, i64* %11, i64 %89, i64 %90)
  store i64 %91, i64* %14, align 8
  %92 = call i32 @git_mwindow_close(i32** %10)
  br label %59

93:                                               ; preds = %86, %67
  %94 = load i64, i64* %13, align 8
  %95 = load i64*, i64** %7, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %76, %52, %44, %24
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @git_packfile_unpack_header(i64*, i64*, i32*, i32**, i64*) #1

declare dso_local i64 @get_delta_base(%struct.git_pack_file*, i32**, i64*, i64, i64) #1

declare dso_local i32 @git_mwindow_close(i32**) #1

declare dso_local i32 @git_packfile_stream_open(i32*, %struct.git_pack_file*, i64) #1

declare dso_local i32 @git_delta_read_header_fromstream(i64*, i64*, i32*) #1

declare dso_local i32 @git_packfile_stream_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
