; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_complete_action.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_complete_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { %struct.strbuf }
%struct.strbuf = type { i64, i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i64 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.string_list = type { i64 }
%struct.todo_item = type { i64, i64, i64, i64, i32*, i32 }

@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 8
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@TODO_NOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"nothing to do\00", align 1
@stderr = common dso_local global i32 0, align 4
@edit_todo_list_advice = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"could not skip unnecessary pick commands\00", align 1
@TODO_LIST_SHORTEN_IDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"could not write '%s'\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @complete_action(%struct.repository* %0, %struct.replay_opts* %1, i32 %2, i8* %3, i8* %4, %struct.commit* %5, i8* %6, %struct.string_list* %7, i32 %8, %struct.todo_list* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.repository*, align 8
  %13 = alloca %struct.replay_opts*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.commit*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.string_list*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.todo_list*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.todo_list, align 8
  %25 = alloca %struct.strbuf*, align 8
  %26 = alloca %struct.object_id, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.todo_item*, align 8
  store %struct.repository* %0, %struct.repository** %12, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store %struct.commit* %5, %struct.commit** %17, align 8
  store i8* %6, i8** %18, align 8
  store %struct.string_list* %7, %struct.string_list** %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.todo_list* %9, %struct.todo_list** %21, align 8
  %29 = call i8* (...) @rebase_path_todo()
  store i8* %29, i8** %23, align 8
  %30 = bitcast %struct.todo_list* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 16, i1 false)
  %31 = load %struct.todo_list*, %struct.todo_list** %21, align 8
  %32 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %31, i32 0, i32 0
  store %struct.strbuf* %32, %struct.strbuf** %25, align 8
  %33 = load %struct.commit*, %struct.commit** %17, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast %struct.object_id* %26 to i8*
  %37 = bitcast %struct.object_id* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load i32, i32* @DEFAULT_ABBREV, align 4
  %39 = call i8* @find_unique_abbrev(%struct.object_id* %26, i32 %38)
  store i8* %39, i8** %22, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %25, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %10
  %45 = load %struct.todo_list*, %struct.todo_list** %21, align 8
  %46 = call %struct.todo_item* @append_new_todo(%struct.todo_list* %45)
  store %struct.todo_item* %46, %struct.todo_item** %28, align 8
  %47 = load i32, i32* @TODO_NOOP, align 4
  %48 = load %struct.todo_item*, %struct.todo_item** %28, align 8
  %49 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.todo_item*, %struct.todo_item** %28, align 8
  %51 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.todo_item*, %struct.todo_item** %28, align 8
  %53 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.todo_item*, %struct.todo_item** %28, align 8
  %55 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.todo_item*, %struct.todo_item** %28, align 8
  %57 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.todo_item*, %struct.todo_item** %28, align 8
  %59 = getelementptr inbounds %struct.todo_item, %struct.todo_item* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %44, %10
  %61 = load i32, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.todo_list*, %struct.todo_list** %21, align 8
  %65 = call i64 @todo_list_rearrange_squash(%struct.todo_list* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %11, align 4
  br label %189

68:                                               ; preds = %63, %60
  %69 = load %struct.string_list*, %struct.string_list** %19, align 8
  %70 = getelementptr inbounds %struct.string_list, %struct.string_list* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.todo_list*, %struct.todo_list** %21, align 8
  %75 = load %struct.string_list*, %struct.string_list** %19, align 8
  %76 = call i32 @todo_list_add_exec_commands(%struct.todo_list* %74, %struct.string_list* %75)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load %struct.todo_list*, %struct.todo_list** %21, align 8
  %79 = call i64 @count_commands(%struct.todo_list* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %83 = call i32 @apply_autostash(%struct.replay_opts* %82)
  %84 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %85 = call i32 @sequencer_remove_state(%struct.replay_opts* %84)
  %86 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %87 = call i32 @error(i8* %86)
  store i32 %87, i32* %11, align 4
  br label %189

88:                                               ; preds = %77
  %89 = load %struct.repository*, %struct.repository** %12, align 8
  %90 = load %struct.todo_list*, %struct.todo_list** %21, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @edit_todo_list(%struct.repository* %89, %struct.todo_list* %90, %struct.todo_list* %24, i8* %91, i8* %92, i32 %93)
  store i32 %94, i32* %27, align 4
  %95 = load i32, i32* %27, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 -1, i32* %11, align 4
  br label %189

98:                                               ; preds = %88
  %99 = load i32, i32* %27, align 4
  %100 = icmp eq i32 %99, -2
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %103 = call i32 @apply_autostash(%struct.replay_opts* %102)
  %104 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %105 = call i32 @sequencer_remove_state(%struct.replay_opts* %104)
  store i32 -1, i32* %11, align 4
  br label %189

106:                                              ; preds = %98
  %107 = load i32, i32* %27, align 4
  %108 = icmp eq i32 %107, -3
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %111 = call i32 @apply_autostash(%struct.replay_opts* %110)
  %112 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %113 = call i32 @sequencer_remove_state(%struct.replay_opts* %112)
  %114 = call i32 @todo_list_release(%struct.todo_list* %24)
  %115 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %116 = call i32 @error(i8* %115)
  store i32 %116, i32* %11, align 4
  br label %189

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.repository*, %struct.repository** %12, align 8
  %121 = getelementptr inbounds %struct.todo_list, %struct.todo_list* %24, i32 0, i32 0
  %122 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @todo_list_parse_insn_buffer(%struct.repository* %120, i32 %123, %struct.todo_list* %24)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load %struct.todo_list*, %struct.todo_list** %21, align 8
  %128 = call i64 @todo_list_check(%struct.todo_list* %127, %struct.todo_list* %24)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %126, %119
  %131 = load i32, i32* @stderr, align 4
  %132 = load i8*, i8** @edit_todo_list_advice, align 8
  %133 = call i8* @_(i8* %132)
  %134 = call i32 @fprintf(i32 %131, i8* %133)
  %135 = load %struct.repository*, %struct.repository** %12, align 8
  %136 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %137 = load i8*, i8** %16, align 8
  %138 = load %struct.commit*, %struct.commit** %17, align 8
  %139 = getelementptr inbounds %struct.commit, %struct.commit* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i8*, i8** %18, align 8
  %142 = call i64 @checkout_onto(%struct.repository* %135, %struct.replay_opts* %136, i8* %137, %struct.object_id* %140, i8* %141)
  %143 = call i32 @todo_list_release(%struct.todo_list* %24)
  store i32 -1, i32* %11, align 4
  br label %189

144:                                              ; preds = %126
  %145 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %146 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load %struct.repository*, %struct.repository** %12, align 8
  %151 = call i64 @skip_unnecessary_picks(%struct.repository* %150, %struct.todo_list* %24, %struct.object_id* %26)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = call i32 @todo_list_release(%struct.todo_list* %24)
  %155 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %156 = call i32 @error(i8* %155)
  store i32 %156, i32* %11, align 4
  br label %189

157:                                              ; preds = %149, %144
  %158 = load %struct.repository*, %struct.repository** %12, align 8
  %159 = load i8*, i8** %23, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @TODO_LIST_SHORTEN_IDS, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %160, %162
  %164 = call i64 @todo_list_write_to_file(%struct.repository* %158, %struct.todo_list* %24, i8* %159, i32* null, i32* null, i32 -1, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = call i32 @todo_list_release(%struct.todo_list* %24)
  %168 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %169 = load i8*, i8** %23, align 8
  %170 = call i32 @error_errno(i8* %168, i8* %169)
  store i32 %170, i32* %11, align 4
  br label %189

171:                                              ; preds = %157
  %172 = call i32 @todo_list_release(%struct.todo_list* %24)
  %173 = load %struct.repository*, %struct.repository** %12, align 8
  %174 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %175 = load i8*, i8** %16, align 8
  %176 = load i8*, i8** %18, align 8
  %177 = call i64 @checkout_onto(%struct.repository* %173, %struct.replay_opts* %174, i8* %175, %struct.object_id* %26, i8* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  store i32 -1, i32* %11, align 4
  br label %189

180:                                              ; preds = %171
  %181 = load %struct.repository*, %struct.repository** %12, align 8
  %182 = call i64 @require_clean_work_tree(%struct.repository* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 1)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  store i32 -1, i32* %11, align 4
  br label %189

185:                                              ; preds = %180
  %186 = load %struct.repository*, %struct.repository** %12, align 8
  %187 = load %struct.replay_opts*, %struct.replay_opts** %13, align 8
  %188 = call i32 @sequencer_continue(%struct.repository* %186, %struct.replay_opts* %187)
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %185, %184, %179, %166, %153, %130, %109, %101, %97, %81, %67
  %190 = load i32, i32* %11, align 4
  ret i32 %190
}

declare dso_local i8* @rebase_path_todo(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @find_unique_abbrev(%struct.object_id*, i32) #1

declare dso_local %struct.todo_item* @append_new_todo(%struct.todo_list*) #1

declare dso_local i64 @todo_list_rearrange_squash(%struct.todo_list*) #1

declare dso_local i32 @todo_list_add_exec_commands(%struct.todo_list*, %struct.string_list*) #1

declare dso_local i64 @count_commands(%struct.todo_list*) #1

declare dso_local i32 @apply_autostash(%struct.replay_opts*) #1

declare dso_local i32 @sequencer_remove_state(%struct.replay_opts*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @edit_todo_list(%struct.repository*, %struct.todo_list*, %struct.todo_list*, i8*, i8*, i32) #1

declare dso_local i32 @todo_list_release(%struct.todo_list*) #1

declare dso_local i64 @todo_list_parse_insn_buffer(%struct.repository*, i32, %struct.todo_list*) #1

declare dso_local i64 @todo_list_check(%struct.todo_list*, %struct.todo_list*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @checkout_onto(%struct.repository*, %struct.replay_opts*, i8*, %struct.object_id*, i8*) #1

declare dso_local i64 @skip_unnecessary_picks(%struct.repository*, %struct.todo_list*, %struct.object_id*) #1

declare dso_local i64 @todo_list_write_to_file(%struct.repository*, %struct.todo_list*, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i64 @require_clean_work_tree(%struct.repository*, i8*, i8*, i32, i32) #1

declare dso_local i32 @sequencer_continue(%struct.repository*, %struct.replay_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
