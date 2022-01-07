; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_git_diff_ui_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_git_diff_ui_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"diff.color\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"color.diff\00", align 1
@diff_use_color_default = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"diff.colormoved\00", align 1
@diff_color_moved_default = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"diff.colormovedws\00", align 1
@COLOR_MOVED_WS_ERROR = common dso_local global i32 0, align 4
@diff_color_moved_ws_default = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"diff.context\00", align 1
@diff_context_default = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"diff.interhunkcontext\00", align 1
@diff_interhunk_context_default = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"diff.renames\00", align 1
@diff_detect_rename_default = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"diff.autorefreshindex\00", align 1
@diff_auto_refresh_index = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"diff.mnemonicprefix\00", align 1
@diff_mnemonic_prefix = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"diff.noprefix\00", align 1
@diff_no_prefix = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"diff.statgraphwidth\00", align 1
@diff_stat_graph_width = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"diff.external\00", align 1
@external_diff_cmd_cfg = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"diff.wordregex\00", align 1
@diff_word_regex_cfg = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"diff.orderfile\00", align 1
@diff_order_file_cfg = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"diff.ignoresubmodules\00", align 1
@default_diff_options = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"diff.submodule\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"Unknown value for 'diff.submodule' config variable: '%s'\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"diff.algorithm\00", align 1
@diff_algorithm = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"diff.wserrorhighlight\00", align 1
@ws_error_highlight_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_ui_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @git_config_colorbool(i8* %19, i8* %20)
  store i32 %21, i32* @diff_use_color_default, align 4
  store i32 0, i32* %4, align 4
  br label %193

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @parse_color_moved(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %193

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* @diff_color_moved_default, align 4
  store i32 0, i32* %4, align 4
  br label %193

34:                                               ; preds = %22
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @parse_color_moved_ws(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @COLOR_MOVED_WS_ERROR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %193

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* @diff_color_moved_ws_default, align 4
  store i32 0, i32* %4, align 4
  br label %193

48:                                               ; preds = %34
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @git_config_int(i8* %53, i8* %54)
  %56 = ptrtoint i8* %55 to i64
  store i64 %56, i64* @diff_context_default, align 8
  %57 = load i64, i64* @diff_context_default, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %193

60:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %193

61:                                               ; preds = %48
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i8* @git_config_int(i8* %66, i8* %67)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* @diff_interhunk_context_default, align 8
  %70 = load i64, i64* @diff_interhunk_context_default, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %193

73:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %193

74:                                               ; preds = %61
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @git_config_rename(i8* %79, i8* %80)
  store i32 %81, i32* @diff_detect_rename_default, align 4
  store i32 0, i32* %4, align 4
  br label %193

82:                                               ; preds = %74
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i8* @git_config_bool(i8* %87, i8* %88)
  store i8* %89, i8** @diff_auto_refresh_index, align 8
  store i32 0, i32* %4, align 4
  br label %193

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i8* @git_config_bool(i8* %95, i8* %96)
  store i8* %97, i8** @diff_mnemonic_prefix, align 8
  store i32 0, i32* %4, align 4
  br label %193

98:                                               ; preds = %90
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i8* @git_config_bool(i8* %103, i8* %104)
  store i8* %105, i8** @diff_no_prefix, align 8
  store i32 0, i32* %4, align 4
  br label %193

106:                                              ; preds = %98
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i8* @git_config_int(i8* %111, i8* %112)
  store i8* %113, i8** @diff_stat_graph_width, align 8
  store i32 0, i32* %4, align 4
  br label %193

114:                                              ; preds = %106
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %5, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @git_config_string(i32* @external_diff_cmd_cfg, i8* %119, i8* %120)
  store i32 %121, i32* %4, align 4
  br label %193

122:                                              ; preds = %114
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %5, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @git_config_string(i32* @diff_word_regex_cfg, i8* %127, i8* %128)
  store i32 %129, i32* %4, align 4
  br label %193

130:                                              ; preds = %122
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %5, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @git_config_pathname(i32* @diff_order_file_cfg, i8* %135, i8* %136)
  store i32 %137, i32* %4, align 4
  br label %193

138:                                              ; preds = %130
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @handle_ignore_submodules_arg(i32* @default_diff_options, i8* %143)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i8*, i8** %5, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %145
  %150 = load i8*, i8** %6, align 8
  %151 = call i64 @parse_submodule_params(i32* @default_diff_options, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0))
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @warning(i32 %154, i8* %155)
  br label %157

157:                                              ; preds = %153, %149
  store i32 0, i32* %4, align 4
  br label %193

158:                                              ; preds = %145
  %159 = load i8*, i8** %5, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %158
  %163 = load i8*, i8** %6, align 8
  %164 = call i64 @parse_algorithm_value(i8* %163)
  store i64 %164, i64* @diff_algorithm, align 8
  %165 = load i64, i64* @diff_algorithm, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 -1, i32* %4, align 4
  br label %193

168:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %193

169:                                              ; preds = %158
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %169
  %174 = load i8*, i8** %6, align 8
  %175 = call i32 @parse_ws_error_highlight(i8* %174)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 -1, i32* %4, align 4
  br label %193

179:                                              ; preds = %173
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* @ws_error_highlight_default, align 4
  store i32 0, i32* %4, align 4
  br label %193

181:                                              ; preds = %169
  %182 = load i8*, i8** %5, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call i64 @git_color_config(i8* %182, i8* %183, i8* %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32 -1, i32* %4, align 4
  br label %193

188:                                              ; preds = %181
  %189 = load i8*, i8** %5, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @git_diff_basic_config(i8* %189, i8* %190, i8* %191)
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %188, %187, %179, %178, %168, %167, %157, %134, %126, %118, %110, %102, %94, %86, %78, %73, %72, %60, %59, %46, %45, %32, %31, %18
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_colorbool(i8*, i8*) #1

declare dso_local i32 @parse_color_moved(i8*) #1

declare dso_local i32 @parse_color_moved_ws(i8*) #1

declare dso_local i8* @git_config_int(i8*, i8*) #1

declare dso_local i32 @git_config_rename(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_pathname(i32*, i8*, i8*) #1

declare dso_local i32 @handle_ignore_submodules_arg(i32*, i8*) #1

declare dso_local i64 @parse_submodule_params(i32*, i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @parse_algorithm_value(i8*) #1

declare dso_local i32 @parse_ws_error_highlight(i8*) #1

declare dso_local i64 @git_color_config(i8*, i8*, i8*) #1

declare dso_local i32 @git_diff_basic_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
