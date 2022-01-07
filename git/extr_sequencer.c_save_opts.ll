; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_save_opts.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_save_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.replay_opts = type { i8*, i8*, i32, i64, i32, i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"options.no-commit\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"options.edit\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"options.allow-empty\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"options.allow-empty-message\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"options.keep-redundant-commits\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"options.signoff\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"options.record-origin\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"options.allow-ff\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"options.mainline\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"options.strategy\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"options.gpg-sign\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"options.strategy-option\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"^$\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"options.allow-rerere-auto\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"options.default-msg-cleanup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.replay_opts*)* @save_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_opts(%struct.replay_opts* %0) #0 {
  %2 = alloca %struct.replay_opts*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i32, align 4
  store %struct.replay_opts* %0, %struct.replay_opts** %2, align 8
  %7 = call i8* (...) @git_path_opts_file()
  store i8* %7, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %9 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %8, i32 0, i32 15
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @git_config_set_in_file_gently(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %19 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @git_config_set_in_file_gently(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %29 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @git_config_set_in_file_gently(i8* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %39 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @git_config_set_in_file_gently(i8* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %49 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @git_config_set_in_file_gently(i8* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %59 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @git_config_set_in_file_gently(i8* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %69 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @git_config_set_in_file_gently(i8* %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %79 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @git_config_set_in_file_gently(i8* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %89 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %94 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %95 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 %96)
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @git_config_set_in_file_gently(i8* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  %104 = call i32 @strbuf_release(%struct.strbuf* %5)
  br label %105

105:                                              ; preds = %92, %87
  %106 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %107 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i8*, i8** %3, align 8
  %112 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %113 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @git_config_set_in_file_gently(i8* %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %110, %105
  %119 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %120 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i8*, i8** %3, align 8
  %125 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %126 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @git_config_set_in_file_gently(i8* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %123, %118
  %132 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %133 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %132, i32 0, i32 6
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %159

136:                                              ; preds = %131
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %155, %136
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %140 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load i8*, i8** %3, align 8
  %145 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %146 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @git_config_set_multivar_in_file_gently(i8* %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %151, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %153 = load i32, i32* %4, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %143
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %137

158:                                              ; preds = %137
  br label %159

159:                                              ; preds = %158, %131
  %160 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %161 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load i8*, i8** %3, align 8
  %166 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %167 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @RERERE_AUTOUPDATE, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)
  %173 = call i32 @git_config_set_in_file_gently(i8* %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* %4, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %164, %159
  %177 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %178 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load i8*, i8** %3, align 8
  %183 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %184 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i8* @describe_cleanup_mode(i32 %185)
  %187 = call i32 @git_config_set_in_file_gently(i8* %182, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %186)
  %188 = load i32, i32* %4, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %181, %176
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i8* @git_path_opts_file(...) #1

declare dso_local i32 @git_config_set_in_file_gently(i8*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @git_config_set_multivar_in_file_gently(i8*, i8*, i32, i8*, i32) #1

declare dso_local i8* @describe_cleanup_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
