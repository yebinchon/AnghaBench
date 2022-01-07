; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_forget.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { i32 }
%struct.repository = type { i32 }
%struct.pathspec = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@RERERE_NOAUTOUPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rerere_forget(%struct.repository* %0, %struct.pathspec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.pathspec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.string_list, align 8
  %9 = alloca %struct.string_list, align 8
  %10 = alloca %struct.string_list_item*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.pathspec* %1, %struct.pathspec** %5, align 8
  %11 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %12 = bitcast %struct.string_list* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %13 = load %struct.repository*, %struct.repository** %4, align 8
  %14 = call i64 @repo_read_index(%struct.repository* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @error(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.repository*, %struct.repository** %4, align 8
  %21 = load i32, i32* @RERERE_NOAUTOUPDATE, align 4
  %22 = call i32 @setup_rerere(%struct.repository* %20, %struct.string_list* %9, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %73

26:                                               ; preds = %19
  %27 = load %struct.repository*, %struct.repository** %4, align 8
  %28 = getelementptr inbounds %struct.repository, %struct.repository* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %31 = call i32 @unmerge_index(i32 %29, %struct.pathspec* %30)
  %32 = load %struct.repository*, %struct.repository** %4, align 8
  %33 = call i32 @find_conflict(%struct.repository* %32, %struct.string_list* %8)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %67, %26
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %41 = load %struct.string_list_item*, %struct.string_list_item** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %41, i64 %43
  store %struct.string_list_item* %44, %struct.string_list_item** %10, align 8
  %45 = load %struct.repository*, %struct.repository** %4, align 8
  %46 = getelementptr inbounds %struct.repository, %struct.repository* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %49 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %50 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %53 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strlen(i32 %54)
  %56 = call i32 @match_pathspec(i32 %47, %struct.pathspec* %48, i32 %51, i32 %55, i32 0, i32* null, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %39
  br label %67

59:                                               ; preds = %39
  %60 = load %struct.repository*, %struct.repository** %4, align 8
  %61 = getelementptr inbounds %struct.repository, %struct.repository* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.string_list_item*, %struct.string_list_item** %10, align 8
  %64 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rerere_forget_one_path(i32 %62, i32 %65, %struct.string_list* %9)
  br label %67

67:                                               ; preds = %59, %58
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %34

70:                                               ; preds = %34
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @write_rr(%struct.string_list* %9, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %25, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @setup_rerere(%struct.repository*, %struct.string_list*, i32) #2

declare dso_local i32 @unmerge_index(i32, %struct.pathspec*) #2

declare dso_local i32 @find_conflict(%struct.repository*, %struct.string_list*) #2

declare dso_local i32 @match_pathspec(i32, %struct.pathspec*, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @rerere_forget_one_path(i32, i32, %struct.string_list*) #2

declare dso_local i32 @write_rr(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
