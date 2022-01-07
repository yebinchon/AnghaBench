; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_rename_section.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_rename_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.rename_data = type { i64, %struct.TYPE_8__*, i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"\\..+\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_ERROR_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid config section '%s'\00", align 1
@rename_config_entries_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_rename_section(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rename_data, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @git_buf_text_puts_escape_regex(%struct.TYPE_8__* %8, i8* %14)
  %16 = call i32 @git_buf_puts(%struct.TYPE_8__* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %56

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_repository_config__weakptr(i32** %7, i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %56

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %11, i32 0, i32 2
  store i32* %25, i32** %26, align 8
  %27 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %11, i32 0, i32 1
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = getelementptr inbounds %struct.rename_data, %struct.rename_data* %11, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @git_buf_join(%struct.TYPE_8__* %9, i8 signext 46, i8* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %56

36:                                               ; preds = %24
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strchr(i32 %43, i8 signext 46)
  %45 = call i32 @normalize_section(i32 %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @GIT_ERROR_CONFIG, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @git_error_set(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %56

51:                                               ; preds = %39, %36
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @git_buf_cstr(%struct.TYPE_8__* %8)
  %54 = load i32, i32* @rename_config_entries_cb, align 4
  %55 = call i32 @git_config_foreach_match(i32* %52, i32 %53, i32 %54, %struct.rename_data* %11)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %51, %47, %35, %23, %18
  %57 = call i32 @git_buf_dispose(%struct.TYPE_8__* %8)
  %58 = call i32 @git_buf_dispose(%struct.TYPE_8__* %9)
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_text_puts_escape_regex(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @git_buf_join(%struct.TYPE_8__*, i8 signext, i8*, i8*) #2

declare dso_local i32 @normalize_section(i32, i32) #2

declare dso_local i32 @strchr(i32, i8 signext) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_config_foreach_match(i32*, i32, i32, %struct.rename_data*) #2

declare dso_local i32 @git_buf_cstr(%struct.TYPE_8__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
