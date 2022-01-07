; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_status.c_print_long.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_status.c_print_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }

@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@GIT_STATUS_WT_DELETED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"new file: \00", align 1
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"modified: \00", align 1
@GIT_STATUS_INDEX_DELETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"deleted:  \00", align 1
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"renamed:  \00", align 1
@GIT_STATUS_INDEX_TYPECHANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"typechange:\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"# Changes to be committed:\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"#   (use \22git reset HEAD <file>...\22 to unstage)\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"#\09%s  %s -> %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"#\09%s  %s\0A\00", align 1
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_TYPECHANGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"# Changes not staged for commit:\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"#   (use \22git add%s <file>...\22 to update what will be committed)\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"/rm\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"#   (use \22git checkout -- <file>...\22 to discard changes in working directory)\0A\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"# Untracked files:\0A\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"#   (use \22git add <file>...\22 to include in what will be committed)\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"#\09%s\0A\00", align 1
@GIT_STATUS_IGNORED = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"# Ignored files:\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"#   (use \22git add -f <file>...\22 to include in what will be committed)\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"no changes added to commit (use \22git add\22 and/or \22git commit -a\22)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_long(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @git_status_list_entrycount(i32* %14)
  store i64 %15, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %129, %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %132

20:                                               ; preds = %16
  store i8* null, i8** %12, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call %struct.TYPE_15__* @git_status_byindex(i32* %21, i64 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %5, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %129

30:                                               ; preds = %20
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GIT_STATUS_WT_DELETED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %46

46:                                               ; preds = %45, %38
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GIT_STATUS_INDEX_DELETED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %62

62:                                               ; preds = %61, %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %70

70:                                               ; preds = %69, %62
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GIT_STATUS_INDEX_TYPECHANGE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i8*, i8** %12, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %129

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %10, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %89
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i64 @strcmp(i8* %108, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %12, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %113, i8* %114, i8* %115)
  br label %128

117:                                              ; preds = %107, %104, %89
  %118 = load i8*, i8** %12, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i8*, i8** %10, align 8
  br label %125

123:                                              ; preds = %117
  %124 = load i8*, i8** %11, align 8
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i8* [ %122, %121 ], [ %124, %123 ]
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %118, i8* %126)
  br label %128

128:                                              ; preds = %125, %112
  br label %129

129:                                              ; preds = %128, %81, %29
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %3, align 8
  br label %16

132:                                              ; preds = %16
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  store i32 1, i32* %7, align 4
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %132
  store i32 0, i32* %6, align 4
  store i64 0, i64* %3, align 8
  br label %138

138:                                              ; preds = %245, %137
  %139 = load i64, i64* %3, align 8
  %140 = load i64, i64* %4, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %248

142:                                              ; preds = %138
  store i8* null, i8** %13, align 8
  %143 = load i32*, i32** %2, align 8
  %144 = load i64, i64* %3, align 8
  %145 = call %struct.TYPE_15__* @git_status_byindex(i32* %143, i64 %144)
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %5, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %156, label %151

151:                                              ; preds = %142
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = icmp eq %struct.TYPE_14__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151, %142
  br label %245

157:                                              ; preds = %151
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %165

165:                                              ; preds = %164, %157
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @GIT_STATUS_WT_DELETED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %173

173:                                              ; preds = %172, %165
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %181

181:                                              ; preds = %180, %173
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @GIT_STATUS_WT_TYPECHANGE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %189

189:                                              ; preds = %188, %181
  %190 = load i8*, i8** %13, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %245

193:                                              ; preds = %189
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %193
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i8* %201)
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i64 0, i64 0))
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %205

205:                                              ; preds = %196, %193
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  store i8* %211, i8** %10, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %11, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %233

220:                                              ; preds = %205
  %221 = load i8*, i8** %11, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load i8*, i8** %10, align 8
  %225 = load i8*, i8** %11, align 8
  %226 = call i64 @strcmp(i8* %224, i8* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i8*, i8** %13, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load i8*, i8** %11, align 8
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %229, i8* %230, i8* %231)
  br label %244

233:                                              ; preds = %223, %220, %205
  %234 = load i8*, i8** %13, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i8*, i8** %10, align 8
  br label %241

239:                                              ; preds = %233
  %240 = load i8*, i8** %11, align 8
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i8* [ %238, %237 ], [ %240, %239 ]
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %234, i8* %242)
  br label %244

244:                                              ; preds = %241, %228
  br label %245

245:                                              ; preds = %244, %192, %156
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %3, align 8
  br label %138

248:                                              ; preds = %138
  %249 = load i32, i32* %6, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  store i32 1, i32* %8, align 4
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %248
  store i32 0, i32* %6, align 4
  store i64 0, i64* %3, align 8
  br label %254

254:                                              ; preds = %283, %253
  %255 = load i64, i64* %3, align 8
  %256 = load i64, i64* %4, align 8
  %257 = icmp ult i64 %255, %256
  br i1 %257, label %258, label %286

258:                                              ; preds = %254
  %259 = load i32*, i32** %2, align 8
  %260 = load i64, i64* %3, align 8
  %261 = call %struct.TYPE_15__* @git_status_byindex(i32* %259, i64 %260)
  store %struct.TYPE_15__* %261, %struct.TYPE_15__** %5, align 8
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %282

267:                                              ; preds = %258
  %268 = load i32, i32* %6, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %267
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.16, i64 0, i64 0))
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %274

274:                                              ; preds = %270, %267
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %280)
  br label %282

282:                                              ; preds = %274, %258
  br label %283

283:                                              ; preds = %282
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %3, align 8
  br label %254

286:                                              ; preds = %254
  store i32 0, i32* %6, align 4
  store i64 0, i64* %3, align 8
  br label %287

287:                                              ; preds = %316, %286
  %288 = load i64, i64* %3, align 8
  %289 = load i64, i64* %4, align 8
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %291, label %319

291:                                              ; preds = %287
  %292 = load i32*, i32** %2, align 8
  %293 = load i64, i64* %3, align 8
  %294 = call %struct.TYPE_15__* @git_status_byindex(i32* %292, i64 %293)
  store %struct.TYPE_15__* %294, %struct.TYPE_15__** %5, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @GIT_STATUS_IGNORED, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %315

300:                                              ; preds = %291
  %301 = load i32, i32* %6, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %300
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0))
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %307

307:                                              ; preds = %303, %300
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %313)
  br label %315

315:                                              ; preds = %307, %291
  br label %316

316:                                              ; preds = %315
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 1
  store i64 %318, i64* %3, align 8
  br label %287

319:                                              ; preds = %287
  %320 = load i32, i32* %7, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %8, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %322
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0))
  br label %327

327:                                              ; preds = %325, %322, %319
  ret void
}

declare dso_local i64 @git_status_list_entrycount(i32*) #1

declare dso_local %struct.TYPE_15__* @git_status_byindex(i32*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
