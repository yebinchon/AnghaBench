; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_show_submodule_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_show_submodule_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32 }
%struct.object_id = type { i32 }
%struct.rev_info = type { i32 }
%struct.commit = type { i32 }
%struct.commit_list = type { i32 }
%struct.repository = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"(revision walker failed)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_submodule_summary(%struct.diff_options* %0, i8* %1, %struct.object_id* %2, %struct.object_id* %3, i32 %4) #0 {
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rev_info, align 4
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca %struct.commit_list*, align 8
  %15 = alloca %struct.repository*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.commit* null, %struct.commit** %12, align 8
  store %struct.commit* null, %struct.commit** %13, align 8
  store %struct.commit_list* null, %struct.commit_list** %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.repository* @open_submodule(i8* %16)
  store %struct.repository* %17, %struct.repository** %15, align 8
  %18 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.object_id*, %struct.object_id** %8, align 8
  %21 = load %struct.object_id*, %struct.object_id** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.repository*, %struct.repository** %15, align 8
  %24 = call i32 @show_submodule_header(%struct.diff_options* %18, i8* %19, %struct.object_id* %20, %struct.object_id* %21, i32 %22, %struct.repository* %23, %struct.commit** %12, %struct.commit** %13, %struct.commit_list** %14)
  %25 = load %struct.commit*, %struct.commit** %12, align 8
  %26 = icmp ne %struct.commit* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.commit*, %struct.commit** %13, align 8
  %29 = icmp ne %struct.commit* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.repository*, %struct.repository** %15, align 8
  %32 = icmp ne %struct.repository* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27, %5
  br label %48

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.commit*, %struct.commit** %12, align 8
  %37 = load %struct.commit*, %struct.commit** %13, align 8
  %38 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %39 = call i64 @prepare_submodule_summary(%struct.rev_info* %11, i8* %35, %struct.commit* %36, %struct.commit* %37, %struct.commit_list* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %43 = call i32 @diff_emit_submodule_error(%struct.diff_options* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.repository*, %struct.repository** %15, align 8
  %46 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %47 = call i32 @print_submodule_summary(%struct.repository* %45, %struct.rev_info* %11, %struct.diff_options* %46)
  br label %48

48:                                               ; preds = %44, %41, %33
  %49 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %50 = icmp ne %struct.commit_list* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  %53 = call i32 @free_commit_list(%struct.commit_list* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.commit*, %struct.commit** %12, align 8
  %56 = call i32 @clear_commit_marks(%struct.commit* %55, i32 -1)
  %57 = load %struct.commit*, %struct.commit** %13, align 8
  %58 = call i32 @clear_commit_marks(%struct.commit* %57, i32 -1)
  %59 = load %struct.repository*, %struct.repository** %15, align 8
  %60 = icmp ne %struct.repository* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.repository*, %struct.repository** %15, align 8
  %63 = call i32 @repo_clear(%struct.repository* %62)
  %64 = load %struct.repository*, %struct.repository** %15, align 8
  %65 = call i32 @free(%struct.repository* %64)
  br label %66

66:                                               ; preds = %61, %54
  ret void
}

declare dso_local %struct.repository* @open_submodule(i8*) #1

declare dso_local i32 @show_submodule_header(%struct.diff_options*, i8*, %struct.object_id*, %struct.object_id*, i32, %struct.repository*, %struct.commit**, %struct.commit**, %struct.commit_list**) #1

declare dso_local i64 @prepare_submodule_summary(%struct.rev_info*, i8*, %struct.commit*, %struct.commit*, %struct.commit_list*) #1

declare dso_local i32 @diff_emit_submodule_error(%struct.diff_options*, i8*) #1

declare dso_local i32 @print_submodule_summary(%struct.repository*, %struct.rev_info*, %struct.diff_options*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @clear_commit_marks(%struct.commit*, i32) #1

declare dso_local i32 @repo_clear(%struct.repository*) #1

declare dso_local i32 @free(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
