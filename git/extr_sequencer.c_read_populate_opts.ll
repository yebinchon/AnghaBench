; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_read_populate_opts.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_read_populate_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.replay_opts = type { i32, i32, i32, i32, i32, i32, i32, %struct.strbuf, i64, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"--rerere-autoupdate\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"--no-rerere-autoupdate\00", align 1
@RERERE_NOAUTOUPDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unusable squash-onto\00", align 1
@populate_opts_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"malformed options sheet: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.replay_opts*)* @read_populate_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_populate_opts(%struct.replay_opts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.replay_opts*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca i8*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %3, align 8
  %6 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %7 = call i64 @is_rebase_i(%struct.replay_opts* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %135

9:                                                ; preds = %1
  %10 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = call i32 (...) @rebase_path_gpg_sign_opt()
  %12 = call i64 @read_oneliner(%struct.strbuf* %4, i32 %11, i32 1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @starts_with(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @strbuf_reset(%struct.strbuf* %4)
  br label %32

21:                                               ; preds = %14
  %22 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %23 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free(i32 %24)
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = call i32 @xstrdup(i8* %28)
  %30 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %31 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = call i32 @strbuf_reset(%struct.strbuf* %4)
  br label %34

34:                                               ; preds = %32, %9
  %35 = call i32 (...) @rebase_path_allow_rerere_autoupdate()
  %36 = call i64 @read_oneliner(%struct.strbuf* %4, i32 %35, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @RERERE_AUTOUPDATE, align 4
  %45 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %46 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  br label %57

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @RERERE_NOAUTOUPDATE, align 4
  %54 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %55 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %43
  %58 = call i32 @strbuf_reset(%struct.strbuf* %4)
  br label %59

59:                                               ; preds = %57, %34
  %60 = call i32 (...) @rebase_path_verbose()
  %61 = call i64 @file_exists(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %65 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = call i32 (...) @rebase_path_quiet()
  %68 = call i64 @file_exists(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %72 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = call i32 (...) @rebase_path_signoff()
  %75 = call i64 @file_exists(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %79 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %78, i32 0, i32 8
  store i64 0, i64* %79, align 8
  %80 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %81 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %77, %73
  %83 = call i32 (...) @rebase_path_reschedule_failed_exec()
  %84 = call i64 @file_exists(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %88 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %91 = call i32 @read_strategy_opts(%struct.replay_opts* %90, %struct.strbuf* %4)
  %92 = call i32 @strbuf_release(%struct.strbuf* %4)
  %93 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %94 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %93, i32 0, i32 7
  %95 = call i32 (...) @rebase_path_current_fixups()
  %96 = call i64 @read_oneliner(%struct.strbuf* %94, i32 %95, i32 1)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %89
  %99 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %100 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %5, align 8
  %103 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %104 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %103, i32 0, i32 4
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %109, %98
  %106 = load i8*, i8** %5, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 10)
  store i8* %107, i8** %5, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %111 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %5, align 8
  br label %105

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %89
  %118 = call i32 (...) @rebase_path_squash_onto()
  %119 = call i64 @read_oneliner(%struct.strbuf* %4, i32 %118, i32 0)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %125 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %124, i32 0, i32 6
  %126 = call i64 @get_oid_hex(i8* %123, i32* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %130 = call i32 (i32, ...) @error(i32 %129)
  store i32 %130, i32* %2, align 4
  br label %151

131:                                              ; preds = %121
  %132 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %133 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %132, i32 0, i32 5
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %117
  store i32 0, i32* %2, align 4
  br label %151

135:                                              ; preds = %1
  %136 = call i32 (...) @git_path_opts_file()
  %137 = call i64 @file_exists(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %151

140:                                              ; preds = %135
  %141 = load i32, i32* @populate_opts_cb, align 4
  %142 = call i32 (...) @git_path_opts_file()
  %143 = load %struct.replay_opts*, %struct.replay_opts** %3, align 8
  %144 = call i64 @git_config_from_file(i32 %141, i32 %142, %struct.replay_opts* %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %148 = call i32 (...) @git_path_opts_file()
  %149 = call i32 (i32, ...) @error(i32 %147, i32 %148)
  store i32 %149, i32* %2, align 4
  br label %151

150:                                              ; preds = %140
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %146, %139, %134, %128
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @is_rebase_i(%struct.replay_opts*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_oneliner(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @rebase_path_gpg_sign_opt(...) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @rebase_path_allow_rerere_autoupdate(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @file_exists(i32) #1

declare dso_local i32 @rebase_path_verbose(...) #1

declare dso_local i32 @rebase_path_quiet(...) #1

declare dso_local i32 @rebase_path_signoff(...) #1

declare dso_local i32 @rebase_path_reschedule_failed_exec(...) #1

declare dso_local i32 @read_strategy_opts(%struct.replay_opts*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @rebase_path_current_fixups(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @rebase_path_squash_onto(...) #1

declare dso_local i64 @get_oid_hex(i8*, i32*) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @git_path_opts_file(...) #1

declare dso_local i64 @git_config_from_file(i32, i32, %struct.replay_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
