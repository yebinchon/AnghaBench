; ModuleID = '/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_string.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_load_layout.c_json_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [25 x i8] c"string: %.*s for key %s\0A\00", align 1
@last_key = common dso_local global i8* null, align 8
@parsing_swallows = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@current_swallow = common dso_local global %struct.TYPE_9__* null, align 8
@swallow_is_empty = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"window_role\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"swallow key %s unknown\0A\00", align 1
@parsing_marks = common dso_local global i64 0, align 8
@marks = common dso_local global %struct.TYPE_7__* null, align 8
@num_marks = common dso_local global i32 0, align 4
@json_node = common dso_local global %struct.TYPE_8__* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"title_format\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"sticky_group\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"sticky_group of this container is %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@L_SPLITH = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@L_SPLITV = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"Unhandled orientation: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@BS_NONE = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"1pixel\00", align 1
@BS_PIXEL = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@BS_NORMAL = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"Unhandled \22border\22: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@CT_ROOT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@CT_OUTPUT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"con\00", align 1
@CT_CON = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"floating_con\00", align 1
@CT_FLOATING_CON = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@CT_WORKSPACE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"dockarea\00", align 1
@CT_DOCKAREA = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [22 x i8] c"Unhandled \22type\22: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"stacked\00", align 1
@L_STACKED = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"tabbed\00", align 1
@L_TABBED = common dso_local global i8* null, align 8
@L_DOCKAREA = common dso_local global i8* null, align 8
@L_OUTPUT = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"splith\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"splitv\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"Unhandled \22layout\22: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"workspace_layout\00", align 1
@L_DEFAULT = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [34 x i8] c"Unhandled \22workspace_layout\22: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"last_split_layout\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"Unhandled \22last_splitlayout\22: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Found deprecated key \22mark\22.\0A\00", align 1
@MM_REPLACE = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"auto_off\00", align 1
@FLOATING_AUTO_OFF = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [8 x i8] c"auto_on\00", align 1
@FLOATING_AUTO_ON = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"user_off\00", align 1
@FLOATING_USER_OFF = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [8 x i8] c"user_on\00", align 1
@FLOATING_USER_ON = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [17 x i8] c"scratchpad_state\00", align 1
@SCRATCHPAD_NONE = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"fresh\00", align 1
@SCRATCHPAD_FRESH = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@SCRATCHPAD_CHANGED = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [24 x i8] c"previous_workspace_name\00", align 1
@previous_workspace_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @json_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_string(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** @last_key, align 8
  %22 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20, i8* %21)
  %23 = load i64, i64* @parsing_swallows, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @sasprintf(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i8*, i8** @last_key, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = call i8* @regex_new(i8* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_swallow, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  store i32 0, i32* @swallow_is_empty, align 4
  br label %71

38:                                               ; preds = %25
  %39 = load i8*, i8** @last_key, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = call i8* @regex_new(i8* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_swallow, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  store i32 0, i32* @swallow_is_empty, align 4
  br label %70

47:                                               ; preds = %38
  %48 = load i8*, i8** @last_key, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @regex_new(i8* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_swallow, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  store i32 0, i32* @swallow_is_empty, align 4
  br label %69

56:                                               ; preds = %47
  %57 = load i8*, i8** @last_key, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = call i8* @regex_new(i8* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_swallow, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store i32 0, i32* @swallow_is_empty, align 4
  br label %68

65:                                               ; preds = %56
  %66 = load i8*, i8** @last_key, align 8
  %67 = call i32 @ELOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %51
  br label %70

70:                                               ; preds = %69, %42
  br label %71

71:                                               ; preds = %70, %33
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @free(i8* %72)
  br label %579

74:                                               ; preds = %3
  %75 = load i64, i64* @parsing_marks, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load i64, i64* %6, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @sasprintf(i8** %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %79, i8* %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @marks, align 8
  %83 = load i32, i32* @num_marks, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @num_marks, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call %struct.TYPE_7__* @srealloc(%struct.TYPE_7__* %82, i32 %87)
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** @marks, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @sstrdup(i8* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @marks, align 8
  %92 = load i32, i32* @num_marks, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %90, i32* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @marks, align 8
  %99 = load i32, i32* @num_marks, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %103, align 8
  br label %578

104:                                              ; preds = %74
  %105 = load i8*, i8** @last_key, align 8
  %106 = call i64 @strcasecmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  %111 = call i8* @scalloc(i64 %110, i32 1)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @memcpy(i8* %116, i8* %117, i64 %118)
  br label %577

120:                                              ; preds = %104
  %121 = load i8*, i8** @last_key, align 8
  %122 = call i64 @strcasecmp(i8* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  %127 = call i8* @scalloc(i64 %126, i32 1)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @memcpy(i8* %132, i8* %133, i64 %134)
  br label %576

136:                                              ; preds = %120
  %137 = load i8*, i8** @last_key, align 8
  %138 = call i64 @strcasecmp(i8* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %136
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, 1
  %143 = call i8* @scalloc(i64 %142, i32 1)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @memcpy(i8* %148, i8* %149, i64 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %154)
  br label %575

156:                                              ; preds = %136
  %157 = load i8*, i8** @last_key, align 8
  %158 = call i64 @strcasecmp(i8* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %191

160:                                              ; preds = %156
  store i8* null, i8** %9, align 8
  %161 = load i64, i64* %6, align 8
  %162 = trunc i64 %161 to i32
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @sasprintf(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %162, i8* %163)
  %165 = load i8*, i8** %9, align 8
  %166 = call i64 @strcasecmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %160
  %169 = load i8*, i8** %9, align 8
  %170 = call i64 @strcasecmp(i8* %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168, %160
  %173 = load i8*, i8** @L_SPLITH, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 6
  store i8* %173, i8** %175, align 8
  br label %188

176:                                              ; preds = %168
  %177 = load i8*, i8** %9, align 8
  %178 = call i64 @strcasecmp(i8* %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i8*, i8** @L_SPLITV, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 6
  store i8* %181, i8** %183, align 8
  br label %187

184:                                              ; preds = %176
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %184, %180
  br label %188

188:                                              ; preds = %187, %172
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @free(i8* %189)
  br label %574

191:                                              ; preds = %156
  %192 = load i8*, i8** @last_key, align 8
  %193 = call i64 @strcasecmp(i8* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %242

195:                                              ; preds = %191
  store i8* null, i8** %10, align 8
  %196 = load i64, i64* %6, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i8*, i8** %5, align 8
  %199 = call i32 @sasprintf(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %197, i8* %198)
  %200 = load i8*, i8** %10, align 8
  %201 = call i64 @strcasecmp(i8* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i8*, i8** @BS_NONE, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 10
  store i8* %204, i8** %206, align 8
  br label %239

207:                                              ; preds = %195
  %208 = load i8*, i8** %10, align 8
  %209 = call i64 @strcasecmp(i8* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load i8*, i8** @BS_PIXEL, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 10
  store i8* %212, i8** %214, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store i32 1, i32* %216, align 8
  br label %238

217:                                              ; preds = %207
  %218 = load i8*, i8** %10, align 8
  %219 = call i64 @strcasecmp(i8* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i8*, i8** @BS_PIXEL, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 10
  store i8* %222, i8** %224, align 8
  br label %237

225:                                              ; preds = %217
  %226 = load i8*, i8** %10, align 8
  %227 = call i64 @strcasecmp(i8* %226, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load i8*, i8** @BS_NORMAL, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 10
  store i8* %230, i8** %232, align 8
  br label %236

233:                                              ; preds = %225
  %234 = load i8*, i8** %10, align 8
  %235 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %233, %229
  br label %237

237:                                              ; preds = %236, %221
  br label %238

238:                                              ; preds = %237, %211
  br label %239

239:                                              ; preds = %238, %203
  %240 = load i8*, i8** %10, align 8
  %241 = call i32 @free(i8* %240)
  br label %573

242:                                              ; preds = %191
  %243 = load i8*, i8** @last_key, align 8
  %244 = call i64 @strcasecmp(i8* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %309

246:                                              ; preds = %242
  store i8* null, i8** %11, align 8
  %247 = load i64, i64* %6, align 8
  %248 = trunc i64 %247 to i32
  %249 = load i8*, i8** %5, align 8
  %250 = call i32 @sasprintf(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %248, i8* %249)
  %251 = load i8*, i8** %11, align 8
  %252 = call i64 @strcasecmp(i8* %251, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %246
  %255 = load i32, i32* @CT_ROOT, align 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 9
  store i32 %255, i32* %257, align 8
  br label %306

258:                                              ; preds = %246
  %259 = load i8*, i8** %11, align 8
  %260 = call i64 @strcasecmp(i8* %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i32, i32* @CT_OUTPUT, align 4
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 9
  store i32 %263, i32* %265, align 8
  br label %305

266:                                              ; preds = %258
  %267 = load i8*, i8** %11, align 8
  %268 = call i64 @strcasecmp(i8* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load i32, i32* @CT_CON, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 9
  store i32 %271, i32* %273, align 8
  br label %304

274:                                              ; preds = %266
  %275 = load i8*, i8** %11, align 8
  %276 = call i64 @strcasecmp(i8* %275, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = load i32, i32* @CT_FLOATING_CON, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 9
  store i32 %279, i32* %281, align 8
  br label %303

282:                                              ; preds = %274
  %283 = load i8*, i8** %11, align 8
  %284 = call i64 @strcasecmp(i8* %283, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = load i32, i32* @CT_WORKSPACE, align 4
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 9
  store i32 %287, i32* %289, align 8
  br label %302

290:                                              ; preds = %282
  %291 = load i8*, i8** %11, align 8
  %292 = call i64 @strcasecmp(i8* %291, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load i32, i32* @CT_DOCKAREA, align 4
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 9
  store i32 %295, i32* %297, align 8
  br label %301

298:                                              ; preds = %290
  %299 = load i8*, i8** %11, align 8
  %300 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i8* %299)
  br label %301

301:                                              ; preds = %298, %294
  br label %302

302:                                              ; preds = %301, %286
  br label %303

303:                                              ; preds = %302, %278
  br label %304

304:                                              ; preds = %303, %270
  br label %305

305:                                              ; preds = %304, %262
  br label %306

306:                                              ; preds = %305, %254
  %307 = load i8*, i8** %11, align 8
  %308 = call i32 @free(i8* %307)
  br label %572

309:                                              ; preds = %242
  %310 = load i8*, i8** @last_key, align 8
  %311 = call i64 @strcasecmp(i8* %310, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %387

313:                                              ; preds = %309
  store i8* null, i8** %12, align 8
  %314 = load i64, i64* %6, align 8
  %315 = trunc i64 %314 to i32
  %316 = load i8*, i8** %5, align 8
  %317 = call i32 @sasprintf(i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %315, i8* %316)
  %318 = load i8*, i8** %12, align 8
  %319 = call i64 @strcasecmp(i8* %318, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %313
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 6
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 8
  store i8* %324, i8** %326, align 8
  br label %384

327:                                              ; preds = %313
  %328 = load i8*, i8** %12, align 8
  %329 = call i64 @strcasecmp(i8* %328, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = load i8*, i8** @L_STACKED, align 8
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 8
  store i8* %332, i8** %334, align 8
  br label %383

335:                                              ; preds = %327
  %336 = load i8*, i8** %12, align 8
  %337 = call i64 @strcasecmp(i8* %336, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %335
  %340 = load i8*, i8** @L_TABBED, align 8
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 8
  store i8* %340, i8** %342, align 8
  br label %382

343:                                              ; preds = %335
  %344 = load i8*, i8** %12, align 8
  %345 = call i64 @strcasecmp(i8* %344, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load i8*, i8** @L_DOCKAREA, align 8
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 8
  store i8* %348, i8** %350, align 8
  br label %381

351:                                              ; preds = %343
  %352 = load i8*, i8** %12, align 8
  %353 = call i64 @strcasecmp(i8* %352, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load i8*, i8** @L_OUTPUT, align 8
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 8
  store i8* %356, i8** %358, align 8
  br label %380

359:                                              ; preds = %351
  %360 = load i8*, i8** %12, align 8
  %361 = call i64 @strcasecmp(i8* %360, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = load i8*, i8** @L_SPLITH, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 8
  store i8* %364, i8** %366, align 8
  br label %379

367:                                              ; preds = %359
  %368 = load i8*, i8** %12, align 8
  %369 = call i64 @strcasecmp(i8* %368, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %367
  %372 = load i8*, i8** @L_SPLITV, align 8
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 8
  store i8* %372, i8** %374, align 8
  br label %378

375:                                              ; preds = %367
  %376 = load i8*, i8** %12, align 8
  %377 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i8* %376)
  br label %378

378:                                              ; preds = %375, %371
  br label %379

379:                                              ; preds = %378, %363
  br label %380

380:                                              ; preds = %379, %355
  br label %381

381:                                              ; preds = %380, %347
  br label %382

382:                                              ; preds = %381, %339
  br label %383

383:                                              ; preds = %382, %331
  br label %384

384:                                              ; preds = %383, %321
  %385 = load i8*, i8** %12, align 8
  %386 = call i32 @free(i8* %385)
  br label %571

387:                                              ; preds = %309
  %388 = load i8*, i8** @last_key, align 8
  %389 = call i64 @strcasecmp(i8* %388, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %391, label %427

391:                                              ; preds = %387
  store i8* null, i8** %13, align 8
  %392 = load i64, i64* %6, align 8
  %393 = trunc i64 %392 to i32
  %394 = load i8*, i8** %5, align 8
  %395 = call i32 @sasprintf(i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %393, i8* %394)
  %396 = load i8*, i8** %13, align 8
  %397 = call i64 @strcasecmp(i8* %396, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %391
  %400 = load i8*, i8** @L_DEFAULT, align 8
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 7
  store i8* %400, i8** %402, align 8
  br label %424

403:                                              ; preds = %391
  %404 = load i8*, i8** %13, align 8
  %405 = call i64 @strcasecmp(i8* %404, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  %408 = load i8*, i8** @L_STACKED, align 8
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 7
  store i8* %408, i8** %410, align 8
  br label %423

411:                                              ; preds = %403
  %412 = load i8*, i8** %13, align 8
  %413 = call i64 @strcasecmp(i8* %412, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = load i8*, i8** @L_TABBED, align 8
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 7
  store i8* %416, i8** %418, align 8
  br label %422

419:                                              ; preds = %411
  %420 = load i8*, i8** %13, align 8
  %421 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0), i8* %420)
  br label %422

422:                                              ; preds = %419, %415
  br label %423

423:                                              ; preds = %422, %407
  br label %424

424:                                              ; preds = %423, %399
  %425 = load i8*, i8** %13, align 8
  %426 = call i32 @free(i8* %425)
  br label %570

427:                                              ; preds = %387
  %428 = load i8*, i8** @last_key, align 8
  %429 = call i64 @strcasecmp(i8* %428, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %431, label %458

431:                                              ; preds = %427
  store i8* null, i8** %14, align 8
  %432 = load i64, i64* %6, align 8
  %433 = trunc i64 %432 to i32
  %434 = load i8*, i8** %5, align 8
  %435 = call i32 @sasprintf(i8** %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %433, i8* %434)
  %436 = load i8*, i8** %14, align 8
  %437 = call i64 @strcasecmp(i8* %436, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %431
  %440 = load i8*, i8** @L_SPLITH, align 8
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 6
  store i8* %440, i8** %442, align 8
  br label %455

443:                                              ; preds = %431
  %444 = load i8*, i8** %14, align 8
  %445 = call i64 @strcasecmp(i8* %444, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %443
  %448 = load i8*, i8** @L_SPLITV, align 8
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 6
  store i8* %448, i8** %450, align 8
  br label %454

451:                                              ; preds = %443
  %452 = load i8*, i8** %14, align 8
  %453 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0), i8* %452)
  br label %454

454:                                              ; preds = %451, %447
  br label %455

455:                                              ; preds = %454, %439
  %456 = load i8*, i8** %14, align 8
  %457 = call i32 @free(i8* %456)
  br label %569

458:                                              ; preds = %427
  %459 = load i8*, i8** @last_key, align 8
  %460 = call i64 @strcasecmp(i8* %459, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %472

462:                                              ; preds = %458
  %463 = call i32 @DLOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i64 0, i64 0))
  store i8* null, i8** %15, align 8
  %464 = load i64, i64* %6, align 8
  %465 = trunc i64 %464 to i32
  %466 = load i8*, i8** %5, align 8
  %467 = call i32 @sasprintf(i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %465, i8* %466)
  %468 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %469 = load i8*, i8** %15, align 8
  %470 = load i32, i32* @MM_REPLACE, align 4
  %471 = call i32 @con_mark(%struct.TYPE_8__* %468, i8* %469, i32 %470)
  br label %568

472:                                              ; preds = %458
  %473 = load i8*, i8** @last_key, align 8
  %474 = call i64 @strcasecmp(i8* %473, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0))
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %476, label %518

476:                                              ; preds = %472
  store i8* null, i8** %16, align 8
  %477 = load i64, i64* %6, align 8
  %478 = trunc i64 %477 to i32
  %479 = load i8*, i8** %5, align 8
  %480 = call i32 @sasprintf(i8** %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %478, i8* %479)
  %481 = load i8*, i8** %16, align 8
  %482 = call i64 @strcasecmp(i8* %481, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0))
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %488

484:                                              ; preds = %476
  %485 = load i32, i32* @FLOATING_AUTO_OFF, align 4
  %486 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 5
  store i32 %485, i32* %487, align 8
  br label %515

488:                                              ; preds = %476
  %489 = load i8*, i8** %16, align 8
  %490 = call i64 @strcasecmp(i8* %489, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0))
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %496

492:                                              ; preds = %488
  %493 = load i32, i32* @FLOATING_AUTO_ON, align 4
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 5
  store i32 %493, i32* %495, align 8
  br label %514

496:                                              ; preds = %488
  %497 = load i8*, i8** %16, align 8
  %498 = call i64 @strcasecmp(i8* %497, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0))
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %496
  %501 = load i32, i32* @FLOATING_USER_OFF, align 4
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 5
  store i32 %501, i32* %503, align 8
  br label %513

504:                                              ; preds = %496
  %505 = load i8*, i8** %16, align 8
  %506 = call i64 @strcasecmp(i8* %505, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0))
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %508, label %512

508:                                              ; preds = %504
  %509 = load i32, i32* @FLOATING_USER_ON, align 4
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 5
  store i32 %509, i32* %511, align 8
  br label %512

512:                                              ; preds = %508, %504
  br label %513

513:                                              ; preds = %512, %500
  br label %514

514:                                              ; preds = %513, %492
  br label %515

515:                                              ; preds = %514, %484
  %516 = load i8*, i8** %16, align 8
  %517 = call i32 @free(i8* %516)
  br label %567

518:                                              ; preds = %472
  %519 = load i8*, i8** @last_key, align 8
  %520 = call i64 @strcasecmp(i8* %519, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0))
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %555

522:                                              ; preds = %518
  store i8* null, i8** %17, align 8
  %523 = load i64, i64* %6, align 8
  %524 = trunc i64 %523 to i32
  %525 = load i8*, i8** %5, align 8
  %526 = call i32 @sasprintf(i8** %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %524, i8* %525)
  %527 = load i8*, i8** %17, align 8
  %528 = call i64 @strcasecmp(i8* %527, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %529 = icmp eq i64 %528, 0
  br i1 %529, label %530, label %534

530:                                              ; preds = %522
  %531 = load i32, i32* @SCRATCHPAD_NONE, align 4
  %532 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 4
  store i32 %531, i32* %533, align 4
  br label %552

534:                                              ; preds = %522
  %535 = load i8*, i8** %17, align 8
  %536 = call i64 @strcasecmp(i8* %535, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0))
  %537 = icmp eq i64 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %534
  %539 = load i32, i32* @SCRATCHPAD_FRESH, align 4
  %540 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 4
  store i32 %539, i32* %541, align 4
  br label %551

542:                                              ; preds = %534
  %543 = load i8*, i8** %17, align 8
  %544 = call i64 @strcasecmp(i8* %543, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0))
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %550

546:                                              ; preds = %542
  %547 = load i32, i32* @SCRATCHPAD_CHANGED, align 4
  %548 = load %struct.TYPE_8__*, %struct.TYPE_8__** @json_node, align 8
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %548, i32 0, i32 4
  store i32 %547, i32* %549, align 4
  br label %550

550:                                              ; preds = %546, %542
  br label %551

551:                                              ; preds = %550, %538
  br label %552

552:                                              ; preds = %551, %530
  %553 = load i8*, i8** %17, align 8
  %554 = call i32 @free(i8* %553)
  br label %566

555:                                              ; preds = %518
  %556 = load i8*, i8** @last_key, align 8
  %557 = call i64 @strcasecmp(i8* %556, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0))
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %559, label %565

559:                                              ; preds = %555
  %560 = load i32, i32* @previous_workspace_name, align 4
  %561 = call i32 @FREE(i32 %560)
  %562 = load i8*, i8** %5, align 8
  %563 = load i64, i64* %6, align 8
  %564 = call i32 @sstrndup(i8* %562, i64 %563)
  store i32 %564, i32* @previous_workspace_name, align 4
  br label %565

565:                                              ; preds = %559, %555
  br label %566

566:                                              ; preds = %565, %552
  br label %567

567:                                              ; preds = %566, %515
  br label %568

568:                                              ; preds = %567, %462
  br label %569

569:                                              ; preds = %568, %455
  br label %570

570:                                              ; preds = %569, %424
  br label %571

571:                                              ; preds = %570, %384
  br label %572

572:                                              ; preds = %571, %306
  br label %573

573:                                              ; preds = %572, %239
  br label %574

574:                                              ; preds = %573, %188
  br label %575

575:                                              ; preds = %574, %140
  br label %576

576:                                              ; preds = %575, %124
  br label %577

577:                                              ; preds = %576, %108
  br label %578

578:                                              ; preds = %577, %77
  br label %579

579:                                              ; preds = %578, %71
  ret i32 1
}

declare dso_local i32 @LOG(i8*, ...) #1

declare dso_local i32 @sasprintf(i8**, i8*, i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @regex_new(i8*) #1

declare dso_local i32 @ELOG(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_7__* @srealloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sstrdup(i8*) #1

declare dso_local i8* @scalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @con_mark(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @sstrndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
