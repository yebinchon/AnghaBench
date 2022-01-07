; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_warn_about_dir_renamed_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_warn_about_dir_renamed_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i64 }
%struct.rename = type { i8, i32 }

@MERGE_DIRECTORY_RENAMES_NONE = common dso_local global i64 0, align 8
@MERGE_DIRECTORY_RENAMES_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [89 x i8] c"Path updated: %s added in %s inside a directory that was renamed in %s; moving it to %s.\00", align 1
@.str.1 = private unnamed_addr constant [129 x i8] c"CONFLICT (file location): %s added in %s inside a directory that was renamed in %s, suggesting it should perhaps be moved to %s.\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"Path updated: %s renamed to %s in %s, inside a directory that was renamed in %s; moving it to %s.\00", align 1
@.str.3 = private unnamed_addr constant [138 x i8] c"CONFLICT (file location): %s renamed to %s in %s, inside a directory that was renamed in %s, suggesting it should perhaps be moved to %s.\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Impossible dir_rename_original_type/clean combination\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.rename*)* @warn_about_dir_renamed_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warn_about_dir_renamed_entries(%struct.merge_options* %0, %struct.rename* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.rename*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.rename* %1, %struct.rename** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.rename*, %struct.rename** %5, align 8
  %10 = icmp ne %struct.rename* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %111

13:                                               ; preds = %2
  %14 = load %struct.rename*, %struct.rename** %5, align 8
  %15 = getelementptr inbounds %struct.rename, %struct.rename* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %111

20:                                               ; preds = %13
  %21 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %22 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MERGE_DIRECTORY_RENAMES_NONE, align 8
  %25 = icmp sgt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.rename*, %struct.rename** %5, align 8
  %29 = getelementptr inbounds %struct.rename, %struct.rename* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 65
  br i1 %32, label %39, label %33

33:                                               ; preds = %20
  %34 = load %struct.rename*, %struct.rename** %5, align 8
  %35 = getelementptr inbounds %struct.rename, %struct.rename* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 82
  br label %39

39:                                               ; preds = %33, %20
  %40 = phi i1 [ true, %20 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %44 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MERGE_DIRECTORY_RENAMES_TRUE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.rename*, %struct.rename** %5, align 8
  %50 = getelementptr inbounds %struct.rename, %struct.rename* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 4
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 65
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load %struct.rename*, %struct.rename** %5, align 8
  %56 = getelementptr inbounds %struct.rename, %struct.rename* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 4
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 65
  br i1 %59, label %60, label %65

60:                                               ; preds = %39
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i8* @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  store i8* %64, i8** %6, align 8
  br label %103

65:                                               ; preds = %60, %39
  %66 = load %struct.rename*, %struct.rename** %5, align 8
  %67 = getelementptr inbounds %struct.rename, %struct.rename* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 4
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 65
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = call i8* @_(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.1, i64 0, i64 0))
  store i8* %75, i8** %6, align 8
  br label %102

76:                                               ; preds = %71, %65
  %77 = load %struct.rename*, %struct.rename** %5, align 8
  %78 = getelementptr inbounds %struct.rename, %struct.rename* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 4
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 82
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i8* @_(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0))
  store i8* %86, i8** %6, align 8
  br label %101

87:                                               ; preds = %82, %76
  %88 = load %struct.rename*, %struct.rename** %5, align 8
  %89 = getelementptr inbounds %struct.rename, %struct.rename* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 4
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 82
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i8* @_(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0))
  store i8* %97, i8** %6, align 8
  br label %100

98:                                               ; preds = %93, %87
  %99 = call i32 @BUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %85
  br label %102

102:                                              ; preds = %101, %74
  br label %103

103:                                              ; preds = %102, %63
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %108 = load %struct.rename*, %struct.rename** %5, align 8
  %109 = call i32 @dir_rename_warning(i8* %104, i32 %105, i32 %106, %struct.merge_options* %107, %struct.rename* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %18, %11
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @dir_rename_warning(i8*, i32, i32, %struct.merge_options*, %struct.rename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
