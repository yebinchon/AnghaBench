; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__preserves_entry_with_name_only.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__preserves_entry_with_name_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"config-empty-value\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"[section \22foo\22]\0A\09name\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"newsection.newname\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"new_value\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"section.foo.other\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"otherval\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"[section \22foo\22]\0A\09name\0A\09other = otherval\0A[newsection]\0A\09newname = new_value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__preserves_entry_with_name_only() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @cl_git_mkfile(i8* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @git_config_open_ondisk(i32** %2, i8* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_config_set_string(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_config_set_string(i32* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @git_futils_readbuffer(%struct.TYPE_5__* %3, i8* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 %20)
  %22 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_config_free(i32* %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
