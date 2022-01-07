; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i8*, i8*, i32, i64, i64, i64, i64, %struct.TYPE_4__, i64, i64, i64, i64, i64, %struct.TYPE_4__, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i8*, i8*, i64, i64, i64 }

@WT_STATUS_ONBRANCH = common dso_local global i32 0, align 4
@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"On branch \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@WT_STATUS_NOBRANCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"interactive rebase in progress; onto \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"rebase in progress; onto \00", align 1
@HEAD_DETACHED_AT = common dso_local global i8* null, align 8
@HEAD_DETACHED_FROM = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Not currently on any branch.\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Initial commit\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"No commits yet\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Untracked files\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Ignored files\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"add -f\00", align 1
@advice_status_u_option = common dso_local global i64 0, align 8
@GIT_COLOR_NORMAL = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [174 x i8] c"It took %.2f seconds to enumerate untracked files. 'status -uno'\0Amay speed it up, but you have to be careful not to forget to add\0Anew files yourself (see 'git help status').\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Untracked files not listed%s\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c" (use -u option to show untracked files)\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"No changes\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"no changes added to commit (use \22git add\22 and/or \22git commit -a\22)\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"no changes added to commit\0A\00", align 1
@.str.22 = private unnamed_addr constant [78 x i8] c"nothing added to commit but untracked files present (use \22git add\22 to track)\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"nothing added to commit but untracked files present\0A\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"nothing to commit (create/copy files and use \22git add\22 to track)\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"nothing to commit\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"nothing to commit (use -u to show untracked files)\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"nothing to commit, working tree clean\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %7 = load i32, i32* @WT_STATUS_ONBRANCH, align 4
  %8 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %9 = call i8* @color(i32 %7, %struct.wt_status* %8)
  store i8* %9, i8** %3, align 8
  %10 = load i32, i32* @WT_STATUS_HEADER, align 4
  %11 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %12 = call i8* @color(i32 %10, %struct.wt_status* %11)
  store i8* %12, i8** %4, align 8
  %13 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %14 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %105

17:                                               ; preds = %1
  %18 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  %19 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %20 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %80, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @WT_STATUS_NOBRANCH, align 4
  %27 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %28 = call i8* @color(i32 %26, %struct.wt_status* %27)
  store i8* %28, i8** %4, align 8
  %29 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %30 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %29, i32 0, i32 17
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %36 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %35, i32 0, i32 17
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34, %25
  %41 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %42 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %41, i32 0, i32 17
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i8* %47, i8** %5, align 8
  br label %50

48:                                               ; preds = %40
  %49 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %52 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %51, i32 0, i32 17
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  br label %79

55:                                               ; preds = %34
  %56 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %57 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %56, i32 0, i32 17
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %63 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %62, i32 0, i32 17
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %6, align 8
  %66 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %67 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %66, i32 0, i32 17
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i8*, i8** @HEAD_DETACHED_AT, align 8
  store i8* %72, i8** %5, align 8
  br label %75

73:                                               ; preds = %61
  %74 = load i8*, i8** @HEAD_DETACHED_FROM, align 8
  store i8* %74, i8** %5, align 8
  br label %75

75:                                               ; preds = %73, %71
  br label %78

76:                                               ; preds = %55
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %77 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %76, %75
  br label %79

79:                                               ; preds = %78, %50
  br label %83

80:                                               ; preds = %17
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @skip_prefix(i8* %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %6)
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %85 = load i32, i32* @WT_STATUS_HEADER, align 4
  %86 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %87 = call i8* @color(i32 %85, %struct.wt_status* %86)
  %88 = call i32 @status_printf(%struct.wt_status* %84, i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @status_printf_more(%struct.wt_status* %89, i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  %93 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @status_printf_more(%struct.wt_status* %93, i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %95)
  %97 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %98 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %83
  %102 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %103 = call i32 @wt_longstatus_print_tracking(%struct.wt_status* %102)
  br label %104

104:                                              ; preds = %101, %83
  br label %105

105:                                              ; preds = %104, %1
  %106 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %107 = call i32 @wt_longstatus_print_state(%struct.wt_status* %106)
  %108 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %109 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %105
  %113 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %114 = load i32, i32* @WT_STATUS_HEADER, align 4
  %115 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %116 = call i8* @color(i32 %114, %struct.wt_status* %115)
  %117 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %113, i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %119 = load i32, i32* @WT_STATUS_HEADER, align 4
  %120 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %121 = call i8* @color(i32 %119, %struct.wt_status* %120)
  %122 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %123 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %122, i32 0, i32 16
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %130

128:                                              ; preds = %112
  %129 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i8* [ %127, %126 ], [ %129, %128 ]
  %132 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %118, i8* %121, i8* %131)
  %133 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %134 = load i32, i32* @WT_STATUS_HEADER, align 4
  %135 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %136 = call i8* @color(i32 %134, %struct.wt_status* %135)
  %137 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %133, i8* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %130, %105
  %139 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %140 = call i32 @wt_longstatus_print_updated(%struct.wt_status* %139)
  %141 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %142 = call i32 @wt_longstatus_print_unmerged(%struct.wt_status* %141)
  %143 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %144 = call i32 @wt_longstatus_print_changed(%struct.wt_status* %143)
  %145 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %146 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %145, i32 0, i32 15
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %138
  %150 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %151 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %156 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154, %149
  %161 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %162 = call i32 @wt_longstatus_print_submodule_summary(%struct.wt_status* %161, i32 0)
  %163 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %164 = call i32 @wt_longstatus_print_submodule_summary(%struct.wt_status* %163, i32 1)
  br label %165

165:                                              ; preds = %160, %154, %138
  %166 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %167 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %208

170:                                              ; preds = %165
  %171 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %172 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %173 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %172, i32 0, i32 7
  %174 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %175 = call i32 @wt_longstatus_print_other(%struct.wt_status* %171, %struct.TYPE_4__* %173, i8* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %176 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %177 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %176, i32 0, i32 14
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %170
  %181 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %182 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %183 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %182, i32 0, i32 13
  %184 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %185 = call i32 @wt_longstatus_print_other(%struct.wt_status* %181, %struct.TYPE_4__* %183, i8* %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  br label %186

186:                                              ; preds = %180, %170
  %187 = load i64, i64* @advice_status_u_option, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %186
  %190 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %191 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 2000, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %196 = load i8*, i8** @GIT_COLOR_NORMAL, align 8
  %197 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %195, i8* %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %198 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %199 = load i8*, i8** @GIT_COLOR_NORMAL, align 8
  %200 = call i8* @_(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.16, i64 0, i64 0))
  %201 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %202 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = sitofp i32 %203 to double
  %205 = fdiv double %204, 1.000000e+03
  %206 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %198, i8* %199, i8* %200, double %205)
  br label %207

207:                                              ; preds = %194, %189, %186
  br label %228

208:                                              ; preds = %165
  %209 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %210 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %209, i32 0, i32 11
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %215 = load i8*, i8** @GIT_COLOR_NORMAL, align 8
  %216 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %217 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %218 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  br label %224

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %221
  %225 = phi i8* [ %222, %221 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %223 ]
  %226 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %214, i8* %215, i8* %216, i8* %225)
  br label %227

227:                                              ; preds = %224, %208
  br label %228

228:                                              ; preds = %227, %207
  %229 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %230 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %229, i32 0, i32 12
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %235 = call i32 @wt_longstatus_print_verbose(%struct.wt_status* %234)
  br label %236

236:                                              ; preds = %233, %228
  %237 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %238 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %237, i32 0, i32 11
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %335, label %241

241:                                              ; preds = %236
  %242 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %243 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %242, i32 0, i32 10
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %248 = load i8*, i8** @GIT_COLOR_NORMAL, align 8
  %249 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %250 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_ln(%struct.wt_status* %247, i8* %248, i8* %249)
  br label %334

251:                                              ; preds = %241
  %252 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %253 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %252, i32 0, i32 9
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %333

257:                                              ; preds = %251
  %258 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %259 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %258, i32 0, i32 8
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %257
  %263 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %264 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0))
  %269 = call i32 @printf(i8* %268)
  br label %273

270:                                              ; preds = %262
  %271 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %272 = call i32 @printf(i8* %271)
  br label %273

273:                                              ; preds = %270, %267
  br label %332

274:                                              ; preds = %257
  %275 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %276 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %275, i32 0, i32 7
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %292

280:                                              ; preds = %274
  %281 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %282 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.22, i64 0, i64 0))
  %287 = call i32 @printf(i8* %286)
  br label %291

288:                                              ; preds = %280
  %289 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0))
  %290 = call i32 @printf(i8* %289)
  br label %291

291:                                              ; preds = %288, %285
  br label %331

292:                                              ; preds = %274
  %293 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %294 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %292
  %298 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %299 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %298, i32 0, i32 4
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %297
  %303 = call i8* @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0))
  %304 = call i32 @printf(i8* %303)
  br label %308

305:                                              ; preds = %297
  %306 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %307 = call i32 @printf(i8* %306)
  br label %308

308:                                              ; preds = %305, %302
  br label %330

309:                                              ; preds = %292
  %310 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %311 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %326, label %314

314:                                              ; preds = %309
  %315 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %316 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0))
  %321 = call i32 @printf(i8* %320)
  br label %325

322:                                              ; preds = %314
  %323 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %324 = call i32 @printf(i8* %323)
  br label %325

325:                                              ; preds = %322, %319
  br label %329

326:                                              ; preds = %309
  %327 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0))
  %328 = call i32 @printf(i8* %327)
  br label %329

329:                                              ; preds = %326, %325
  br label %330

330:                                              ; preds = %329, %308
  br label %331

331:                                              ; preds = %330, %291
  br label %332

332:                                              ; preds = %331, %273
  br label %333

333:                                              ; preds = %332, %256
  br label %334

334:                                              ; preds = %333, %246
  br label %335

335:                                              ; preds = %334, %236
  %336 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %337 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %335
  %341 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %342 = call i32 @wt_longstatus_print_stash_summary(%struct.wt_status* %341)
  br label %343

343:                                              ; preds = %340, %335
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @status_printf(%struct.wt_status*, i8*, i8*, i8*) #1

declare dso_local i32 @status_printf_more(%struct.wt_status*, i8*, i8*, i8*) #1

declare dso_local i32 @wt_longstatus_print_tracking(%struct.wt_status*) #1

declare dso_local i32 @wt_longstatus_print_state(%struct.wt_status*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i8*, ...) #1

declare dso_local i32 @wt_longstatus_print_updated(%struct.wt_status*) #1

declare dso_local i32 @wt_longstatus_print_unmerged(%struct.wt_status*) #1

declare dso_local i32 @wt_longstatus_print_changed(%struct.wt_status*) #1

declare dso_local i32 @wt_longstatus_print_submodule_summary(%struct.wt_status*, i32) #1

declare dso_local i32 @wt_longstatus_print_other(%struct.wt_status*, %struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @wt_longstatus_print_verbose(%struct.wt_status*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @wt_longstatus_print_stash_summary(%struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
