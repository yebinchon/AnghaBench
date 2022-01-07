; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_run_builtin.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_run_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cmd_struct = type { i32, i32 (i32, i8**, i8*)*, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@RUN_SETUP = common dso_local global i32 0, align 4
@RUN_SETUP_GENTLY = common dso_local global i32 0, align 4
@use_pager = common dso_local global i32 0, align 4
@DELAY_PAGER_CONFIG = common dso_local global i32 0, align 4
@USE_PAGER = common dso_local global i32 0, align 4
@startup_info = common dso_local global %struct.TYPE_4__* null, align 8
@SUPPORT_SUPER_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s doesn't support --super-prefix\00", align 1
@NEED_WORK_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"trace: built-in: git\00", align 1
@the_repository = common dso_local global %struct.TYPE_3__* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"write failure on standard output\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"unknown write failure on standard output\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"close failed on standard output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_struct*, i32, i8**)* @run_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_builtin(%struct.cmd_struct* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.cmd_struct* %0, %struct.cmd_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %3
  %23 = phi i1 [ false, %3 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %99, label %27

27:                                               ; preds = %22
  %28 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %29 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RUN_SETUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i8* (...) @setup_git_directory()
  store i8* %35, i8** %11, align 8
  br label %46

36:                                               ; preds = %27
  %37 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %38 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RUN_SETUP_GENTLY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i8* @setup_git_directory_gently(i32* %12)
  store i8* %44, i8** %11, align 8
  br label %45

45:                                               ; preds = %43, %36
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* @use_pager, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %51 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RUN_SETUP, align 4
  %54 = load i32, i32* @RUN_SETUP_GENTLY, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %60 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DELAY_PAGER_CONFIG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %67 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @check_pager_config(i32 %68)
  store i32 %69, i32* @use_pager, align 4
  br label %70

70:                                               ; preds = %65, %58, %49, %46
  %71 = load i32, i32* @use_pager, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %75 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @USE_PAGER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* @use_pager, align 4
  br label %81

81:                                               ; preds = %80, %73, %70
  %82 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %83 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @RUN_SETUP, align 4
  %86 = load i32, i32* @RUN_SETUP_GENTLY, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @startup_info, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @trace_repo_setup(i8* %96)
  br label %98

98:                                               ; preds = %95, %90, %81
  br label %99

99:                                               ; preds = %98, %22
  %100 = call i32 (...) @commit_pager_choice()
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %99
  %104 = call i64 (...) @get_super_prefix()
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %108 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SUPPORT_SUPER_PREFIX, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %106
  %114 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %116 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, ...) @die(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %106
  br label %120

120:                                              ; preds = %119, %103, %99
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %125 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NEED_WORK_TREE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 (...) @setup_work_tree()
  br label %132

132:                                              ; preds = %130, %123, %120
  %133 = load i8**, i8*** %7, align 8
  %134 = call i32 @trace_argv_printf(i8** %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %136 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @trace2_cmd_name(i32 %137)
  %139 = call i32 (...) @trace2_cmd_list_config()
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @validate_cache_entries(i32 %142)
  %144 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %145 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %144, i32 0, i32 1
  %146 = load i32 (i32, i8**, i8*)*, i32 (i32, i8**, i8*)** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i8**, i8*** %7, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 %146(i32 %147, i8** %148, i8* %149)
  store i32 %150, i32* %8, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** @the_repository, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @validate_cache_entries(i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %132
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %4, align 4
  br label %198

159:                                              ; preds = %132
  %160 = load i32, i32* @stdout, align 4
  %161 = call i32 @fileno(i32 %160)
  %162 = call i64 @fstat(i32 %161, %struct.stat* %10)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %198

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @S_ISFIFO(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @S_ISSOCK(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %165
  store i32 0, i32* %4, align 4
  br label %198

176:                                              ; preds = %170
  %177 = load i32, i32* @stdout, align 4
  %178 = call i64 @fflush(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %182 = call i32 @die_errno(i32 %181)
  br label %183

183:                                              ; preds = %180, %176
  %184 = load i32, i32* @stdout, align 4
  %185 = call i64 @ferror(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %189 = call i32 (i32, ...) @die(i32 %188)
  br label %190

190:                                              ; preds = %187, %183
  %191 = load i32, i32* @stdout, align 4
  %192 = call i64 @fclose(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %196 = call i32 @die_errno(i32 %195)
  br label %197

197:                                              ; preds = %194, %190
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %197, %175, %164, %157
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @setup_git_directory(...) #1

declare dso_local i8* @setup_git_directory_gently(i32*) #1

declare dso_local i32 @check_pager_config(i32) #1

declare dso_local i32 @trace_repo_setup(i8*) #1

declare dso_local i32 @commit_pager_choice(...) #1

declare dso_local i64 @get_super_prefix(...) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local i32 @trace_argv_printf(i8**, i8*) #1

declare dso_local i32 @trace2_cmd_name(i32) #1

declare dso_local i32 @trace2_cmd_list_config(...) #1

declare dso_local i32 @validate_cache_entries(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
