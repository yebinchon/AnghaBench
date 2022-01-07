; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_handle_alias.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_handle_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"'%s' is aliased to '%s'\00", align 1
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"shell_alias\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"_run_shell_alias_\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"while expanding alias '%s': '%s'\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"bad alias.%s string: %s\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"alias '%s' changes environment variables.\0AYou can use '!git' in the alias to do this\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"empty alias for %s\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"recursive alias: %s\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"trace: alias expansion: %s =>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8***)* @handle_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_alias(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.child_process, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i8***, i8**** %4, align 8
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i8* @alias_lookup(i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %163

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i8***, i8**** %4, align 8
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @fprintf_ln(i32 %36, i32 %37, i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %35, %28, %24
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 33
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %49 = call i32 @setup_git_directory_gently(i32* %14)
  %50 = call i32 (...) @commit_pager_choice()
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i32 @argv_array_push(%struct.TYPE_3__* %53, i8* %55)
  %57 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %58 = load i8***, i8**** %4, align 8
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = call i32 @argv_array_pushv(%struct.TYPE_3__* %57, i8** %60)
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = call i32 @trace2_cmd_alias(i8* %62, i8** %65)
  %67 = call i32 (...) @trace2_cmd_list_config()
  %68 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %69 = call i32 @run_command(%struct.child_process* %13)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %47
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @exit(i32 %73) #4
  unreachable

75:                                               ; preds = %47
  %76 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i32 @die_errno(i32 %76, i8* %77, i8* %79)
  br label %81

81:                                               ; preds = %75, %41
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @split_cmdline(i8* %82, i8*** %10)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @split_cmdline_strerror(i32 %89)
  %91 = call i32 @_(i8* %90)
  %92 = call i32 (i32, i8*, ...) @die(i32 %87, i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %86, %81
  %94 = call i32 @handle_options(i8*** %10, i32* %8, i32* %5)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = call i32 @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 (i32, i8*, ...) @die(i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i8**, i8*** %10, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8**, i8*** %10, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @MOVE_ARRAY(i8** %106, i8** %107, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = load i8**, i8*** %10, align 8
  %112 = sext i32 %110 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8** %114, i8*** %10, align 8
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %101
  %118 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 (i32, i8*, ...) @die(i32 %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %101
  %122 = load i8*, i8** %11, align 8
  %123 = load i8**, i8*** %10, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* %122, i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 (i32, i8*, ...) @die(i32 %129, i8* %130)
  br label %132

132:                                              ; preds = %128, %121
  %133 = load i8**, i8*** %10, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @trace_argv_printf(i8** %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %134)
  %136 = load i8**, i8*** %10, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %137, %139
  %141 = call i32 @REALLOC_ARRAY(i8** %136, i32 %140)
  %142 = load i8**, i8*** %10, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8***, i8**** %4, align 8
  %147 = load i8**, i8*** %146, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  %149 = load i32*, i32** %3, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @COPY_ARRAY(i8** %145, i8** %148, i32 %150)
  %152 = load i8*, i8** %11, align 8
  %153 = load i8**, i8*** %10, align 8
  %154 = call i32 @trace2_cmd_alias(i8* %152, i8** %153)
  %155 = call i32 (...) @trace2_cmd_list_config()
  %156 = load i8**, i8*** %10, align 8
  %157 = load i8***, i8**** %4, align 8
  store i8** %156, i8*** %157, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load i32*, i32** %3, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %159
  store i32 %162, i32* %160, align 4
  store i32 1, i32* %6, align 4
  br label %163

163:                                              ; preds = %132, %2
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* @errno, align 4
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i8* @alias_lookup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf_ln(i32, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setup_git_directory_gently(i32*) #1

declare dso_local i32 @commit_pager_choice(...) #1

declare dso_local i32 @argv_array_push(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @argv_array_pushv(%struct.TYPE_3__*, i8**) #1

declare dso_local i32 @trace2_cmd_alias(i8*, i8**) #1

declare dso_local i32 @trace2_cmd_list_config(...) #1

declare dso_local i32 @trace2_cmd_name(i8*) #1

declare dso_local i32 @run_command(%struct.child_process*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @die_errno(i32, i8*, i8*) #1

declare dso_local i32 @split_cmdline(i8*, i8***) #1

declare dso_local i32 @die(i32, i8*, ...) #1

declare dso_local i8* @split_cmdline_strerror(i32) #1

declare dso_local i32 @handle_options(i8***, i32*, i32*) #1

declare dso_local i32 @MOVE_ARRAY(i8**, i8**, i32) #1

declare dso_local i32 @trace_argv_printf(i8**, i8*, i8*) #1

declare dso_local i32 @REALLOC_ARRAY(i8**, i32) #1

declare dso_local i32 @COPY_ARRAY(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
