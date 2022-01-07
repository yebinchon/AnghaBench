; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_run_argv.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_run_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { i32 }
%struct.argv_array = type { i32 }
%struct.strbuf = type { i32 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"_run_git_alias_\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s doesn't support --super-prefix\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"trace: exec:\00", align 1
@RUN_SILENT_EXEC_FAILURE = common dso_local global i32 0, align 4
@RUN_CLEAN_ON_EXIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"git_alias\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"could not execute builtin %s\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A  %s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" <==\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" ==>\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"alias loop detected: expansion of '%s' does not terminate:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8***)* @run_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_argv(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.string_list, align 8
  %7 = alloca %struct.string_list_item*, align 8
  %8 = alloca %struct.argv_array, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.string_list_item*, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = bitcast %struct.string_list* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  br label %14

14:                                               ; preds = %2, %154
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i8***, i8**** %4, align 8
  %21 = load i8**, i8*** %20, align 8
  %22 = call i32 @handle_builtin(i32 %19, i8** %21)
  br label %83

23:                                               ; preds = %14
  %24 = load i8***, i8**** %4, align 8
  %25 = load i8**, i8*** %24, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @get_builtin(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = bitcast %struct.argv_array* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %31 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = call i64 (...) @get_super_prefix()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8***, i8**** %4, align 8
  %36 = load i8**, i8*** %35, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = call i32 (...) @commit_pager_choice()
  %41 = call i32 @argv_array_push(%struct.argv_array* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %55, %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i8***, i8**** %4, align 8
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @argv_array_push(%struct.argv_array* %8, i8* %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %42

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @trace_argv_printf(i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RUN_SILENT_EXEC_FAILURE, align 4
  %65 = load i32, i32* @RUN_CLEAN_ON_EXIT, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @run_command_v_opt_tr2(i32 %63, i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = load i64, i64* @errno, align 8
  %72 = load i64, i64* @ENOENT, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %58
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @exit(i32 %75) #4
  unreachable

77:                                               ; preds = %70
  %78 = load i8***, i8**** %4, align 8
  %79 = load i8**, i8*** %78, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %77, %23
  br label %83

83:                                               ; preds = %82, %17
  %84 = load i8***, i8**** %4, align 8
  %85 = load i8**, i8*** %84, align 8
  %86 = call i32 @execv_dashed_external(i8** %85)
  %87 = load i8***, i8**** %4, align 8
  %88 = getelementptr inbounds i8**, i8*** %87, i64 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = call %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* %6, i8* %90)
  store %struct.string_list_item* %91, %struct.string_list_item** %7, align 8
  %92 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %93 = icmp ne %struct.string_list_item* %92, null
  br i1 %93, label %94, label %143

94:                                               ; preds = %83
  %95 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %126, %94
  %97 = load i32, i32* %10, align 4
  %98 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 1
  %103 = load %struct.string_list_item*, %struct.string_list_item** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %103, i64 %105
  store %struct.string_list_item* %106, %struct.string_list_item** %12, align 8
  %107 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %108 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %112 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %113 = icmp eq %struct.string_list_item* %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %125

116:                                              ; preds = %101
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %116
  br label %125

125:                                              ; preds = %124, %114
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %96

129:                                              ; preds = %96
  %130 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 1
  %134 = load %struct.string_list_item*, %struct.string_list_item** %133, align 8
  %135 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %134, i64 0
  %136 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, i8*, ...) @die(i8* %132, i8* %139, i32 %141)
  br label %143

143:                                              ; preds = %129, %83
  %144 = load i8***, i8**** %4, align 8
  %145 = getelementptr inbounds i8**, i8*** %144, i64 0
  %146 = load i8**, i8*** %145, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @string_list_append(%struct.string_list* %6, i8* %147)
  %149 = load i32*, i32** %3, align 8
  %150 = load i8***, i8**** %4, align 8
  %151 = call i32 @handle_alias(i32* %149, i8*** %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %143
  br label %155

154:                                              ; preds = %143
  store i32 1, i32* %5, align 4
  br label %14

155:                                              ; preds = %153
  %156 = call i32 @string_list_clear(%struct.string_list* %6, i32 0)
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @handle_builtin(i32, i8**) #2

declare dso_local i64 @get_builtin(i8*) #2

declare dso_local i32 @trace2_cmd_name(i8*) #2

declare dso_local i64 @get_super_prefix(...) #2

declare dso_local i32 @die(i8*, i8*, ...) #2

declare dso_local i32 @commit_pager_choice(...) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @trace_argv_printf(i32, i8*) #2

declare dso_local i32 @run_command_v_opt_tr2(i32, i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @execv_dashed_external(i8**) #2

declare dso_local %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i32 @handle_alias(i32*, i8***) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
