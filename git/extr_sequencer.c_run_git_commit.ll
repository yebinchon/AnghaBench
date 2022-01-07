; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_run_git_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_run_git_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i32, i32, i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@staged_changes_advice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@VERIFY_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@AMEND_MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"--amend\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-S%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@EDIT_MSG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@CLEANUP_MSG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"--cleanup=strip\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"--cleanup=verbatim\00", align 1
@ALLOW_EMPTY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"--allow-empty\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"--allow-empty-message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, %struct.replay_opts*, i32)* @run_git_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_git_commit(%struct.repository* %0, i8* %1, %struct.replay_opts* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.replay_opts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.child_process, align 4
  %11 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.replay_opts* %2, %struct.replay_opts** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.child_process* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 12, i1 false)
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %15 = call i64 @is_rebase_i(%struct.replay_opts* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 2
  %19 = call i64 @read_env_script(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %23 = call i8* @gpg_sign_opt_quoted(%struct.replay_opts* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i32, i32* @staged_changes_advice, align 4
  %25 = call i32 @_(i32 %24)
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @error(i32 %25, i8* %26, i8* %27)
  store i32 %28, i32* %5, align 4
  br label %143

29:                                               ; preds = %17, %4
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %31 = call i32 @argv_array_push(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @VERIFY_MSG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %38 = call i32 @argv_array_push(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AMEND_MSG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %46 = call i32 @argv_array_push(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %49 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %54 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %55 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @argv_array_pushf(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @argv_array_pushl(i32* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %63, i32* null)
  br label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @EDIT_MSG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %72 = call i32 @argv_array_pushl(i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* null)
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @CLEANUP_MSG, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %81 = call i32 @argv_array_push(i32* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @EDIT_MSG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %89 = call i32 @argv_array_push(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %114

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @CLEANUP_MSG, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %90
  %96 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %97 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %95
  %101 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %102 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %107 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %112 = call i32 @argv_array_push(i32* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %105, %100, %95, %90
  br label %114

114:                                              ; preds = %113, %87
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @ALLOW_EMPTY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %121 = call i32 @argv_array_push(i32* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @EDIT_MSG, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 1
  %129 = call i32 @argv_array_push(i32* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.replay_opts*, %struct.replay_opts** %8, align 8
  %132 = call i64 @is_rebase_i(%struct.replay_opts* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @EDIT_MSG, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = call i32 @run_command_silent_on_success(%struct.child_process* %10)
  store i32 %140, i32* %5, align 4
  br label %143

141:                                              ; preds = %134, %130
  %142 = call i32 @run_command(%struct.child_process* %10)
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %141, %139, %21
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_rebase_i(%struct.replay_opts*) #2

declare dso_local i64 @read_env_script(i32*) #2

declare dso_local i8* @gpg_sign_opt_quoted(%struct.replay_opts*) #2

declare dso_local i32 @error(i32, i8*, i8*) #2

declare dso_local i32 @_(i32) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i32*) #2

declare dso_local i32 @run_command_silent_on_success(%struct.child_process*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
