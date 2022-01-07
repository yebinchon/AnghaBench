; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_setup_standard_excludes.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_setup_standard_excludes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.dir_struct = type { i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1
@excludes_file = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@R_OK = common dso_local global i32 0, align 4
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_standard_excludes(%struct.dir_struct* %0) #0 {
  %2 = alloca %struct.dir_struct*, align 8
  %3 = alloca i8*, align 8
  store %struct.dir_struct* %0, %struct.dir_struct** %2, align 8
  %4 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %5 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i8*, i8** @excludes_file, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i8* @xdg_config_home(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** @excludes_file, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** @excludes_file, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load i8*, i8** @excludes_file, align 8
  %15 = load i32, i32* @R_OK, align 4
  %16 = call i32 @access_or_warn(i8* %14, i32 %15, i32 0)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %20 = load i8*, i8** @excludes_file, align 8
  %21 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %22 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %27 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %26, i32 0, i32 3
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32* [ %27, %25 ], [ null, %28 ]
  %31 = call i32 @add_patterns_from_file_1(%struct.dir_struct* %19, i8* %20, i32* %30)
  br label %32

32:                                               ; preds = %29, %13, %10
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = call i8* (...) @git_path_info_exclude()
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @R_OK, align 4
  %41 = call i32 @access_or_warn(i8* %39, i32 %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %47 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.dir_struct*, %struct.dir_struct** %2, align 8
  %52 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %51, i32 0, i32 1
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32* [ %52, %50 ], [ null, %53 ]
  %56 = call i32 @add_patterns_from_file_1(%struct.dir_struct* %44, i8* %45, i32* %55)
  br label %57

57:                                               ; preds = %54, %37
  br label %58

58:                                               ; preds = %57, %32
  ret void
}

declare dso_local i8* @xdg_config_home(i8*) #1

declare dso_local i32 @access_or_warn(i8*, i32, i32) #1

declare dso_local i32 @add_patterns_from_file_1(%struct.dir_struct*, i8*, i32*) #1

declare dso_local i8* @git_path_info_exclude(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
