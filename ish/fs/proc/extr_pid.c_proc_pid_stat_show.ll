; ModuleID = '/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_pid_stat_show.c'
source_filename = "/home/carl/AnghaBench/ish/fs/proc/extr_pid.c_proc_pid_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_entry = type { i32 }
%struct.proc_data = type { i32 }
%struct.task = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i64, i64, %struct.TYPE_9__*, %struct.TYPE_7__*, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.tty*, i32, i32, i64 }
%struct.tty = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@_ESRCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(%.16s) \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lu \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1
@SIG_IGN_ = common dso_local global i64 0, align 8
@SIG_DFL_ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc_entry*, %struct.proc_data*)* @proc_pid_stat_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_stat_show(%struct.proc_entry* %0, %struct.proc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc_entry*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.task*, align 8
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.proc_entry* %0, %struct.proc_entry** %4, align 8
  store %struct.proc_data* %1, %struct.proc_data** %5, align 8
  %11 = load %struct.proc_entry*, %struct.proc_entry** %4, align 8
  %12 = call %struct.task* @proc_get_task(%struct.proc_entry* %11)
  store %struct.task* %12, %struct.task** %6, align 8
  %13 = load %struct.task*, %struct.task** %6, align 8
  %14 = icmp eq %struct.task* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @_ESRCH, align 4
  store i32 %16, i32* %3, align 4
  br label %268

17:                                               ; preds = %2
  %18 = load %struct.task*, %struct.task** %6, align 8
  %19 = getelementptr inbounds %struct.task, %struct.task* %18, i32 0, i32 0
  %20 = call i32 @lock(i32* %19)
  %21 = load %struct.task*, %struct.task** %6, align 8
  %22 = getelementptr inbounds %struct.task, %struct.task* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = call i32 @lock(i32* %24)
  %26 = load %struct.task*, %struct.task** %6, align 8
  %27 = getelementptr inbounds %struct.task, %struct.task* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = call i32 @lock(i32* %29)
  %31 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %32 = load %struct.task*, %struct.task** %6, align 8
  %33 = getelementptr inbounds %struct.task, %struct.task* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %37 = load %struct.task*, %struct.task** %6, align 8
  %38 = getelementptr inbounds %struct.task, %struct.task* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %42 = load %struct.task*, %struct.task** %6, align 8
  %43 = getelementptr inbounds %struct.task, %struct.task* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %17
  br label %56

47:                                               ; preds = %17
  %48 = load %struct.task*, %struct.task** %6, align 8
  %49 = getelementptr inbounds %struct.task, %struct.task* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 84, i32 82
  br label %56

56:                                               ; preds = %47, %46
  %57 = phi i32 [ 90, %46 ], [ %55, %47 ]
  %58 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %60 = load %struct.task*, %struct.task** %6, align 8
  %61 = getelementptr inbounds %struct.task, %struct.task* %60, i32 0, i32 7
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.task*, %struct.task** %6, align 8
  %66 = getelementptr inbounds %struct.task, %struct.task* %65, i32 0, i32 7
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i32 [ %69, %64 ], [ 0, %70 ]
  %73 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %75 = load %struct.task*, %struct.task** %6, align 8
  %76 = getelementptr inbounds %struct.task, %struct.task* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %82 = load %struct.task*, %struct.task** %6, align 8
  %83 = getelementptr inbounds %struct.task, %struct.task* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.task*, %struct.task** %6, align 8
  %89 = getelementptr inbounds %struct.task, %struct.task* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load %struct.tty*, %struct.tty** %91, align 8
  store %struct.tty* %92, %struct.tty** %7, align 8
  %93 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %94 = load %struct.tty*, %struct.tty** %7, align 8
  %95 = icmp ne %struct.tty* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %71
  %97 = load %struct.tty*, %struct.tty** %7, align 8
  %98 = getelementptr inbounds %struct.tty, %struct.tty* %97, i32 0, i32 2
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.tty*, %struct.tty** %7, align 8
  %103 = getelementptr inbounds %struct.tty, %struct.tty* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_make(i32 %101, i32 %104)
  br label %107

106:                                              ; preds = %71
  br label %107

107:                                              ; preds = %106, %96
  %108 = phi i32 [ %105, %96 ], [ 0, %106 ]
  %109 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %111 = load %struct.tty*, %struct.tty** %7, align 8
  %112 = icmp ne %struct.tty* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.tty*, %struct.tty** %7, align 8
  %115 = getelementptr inbounds %struct.tty, %struct.tty* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  br label %118

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %113
  %119 = phi i32 [ %116, %113 ], [ 0, %117 ]
  %120 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %122 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %123 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %124 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %125 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %126 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %127 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %128 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %129 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %130 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %131 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %132 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %133 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %134 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %135 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %136 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 0)
  %137 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %138 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 0)
  %139 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %140 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 20)
  %141 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %142 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 0)
  %143 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %144 = load %struct.task*, %struct.task** %6, align 8
  %145 = getelementptr inbounds %struct.task, %struct.task* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = call i32 @list_size(i32* %147)
  %149 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %151 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 0)
  %152 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %153 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 0)
  %154 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %155 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %156 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %157 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 0)
  %158 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %159 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %160 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %161 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %162 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %163 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %164 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %165 = load %struct.task*, %struct.task** %6, align 8
  %166 = getelementptr inbounds %struct.task, %struct.task* %165, i32 0, i32 6
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %172 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %173 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %174 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %175 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %176 = load %struct.task*, %struct.task** %6, align 8
  %177 = getelementptr inbounds %struct.task, %struct.task* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = and i64 %178, 4294967295
  %180 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %179)
  %181 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %182 = load %struct.task*, %struct.task** %6, align 8
  %183 = getelementptr inbounds %struct.task, %struct.task* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = and i64 %184, 4294967295
  %186 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %185)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %187

187:                                              ; preds = %230, %118
  %188 = load i32, i32* %10, align 4
  %189 = icmp slt i32 %188, 32
  br i1 %189, label %190, label %233

190:                                              ; preds = %187
  %191 = load %struct.task*, %struct.task** %6, align 8
  %192 = getelementptr inbounds %struct.task, %struct.task* %191, i32 0, i32 2
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @SIG_IGN_, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %190
  %204 = load i32, i32* %10, align 4
  %205 = zext i32 %204 to i64
  %206 = shl i64 1, %205
  %207 = load i64, i64* %8, align 8
  %208 = or i64 %207, %206
  store i64 %208, i64* %8, align 8
  br label %229

209:                                              ; preds = %190
  %210 = load %struct.task*, %struct.task** %6, align 8
  %211 = getelementptr inbounds %struct.task, %struct.task* %210, i32 0, i32 2
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @SIG_DFL_, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %209
  %223 = load i32, i32* %10, align 4
  %224 = zext i32 %223 to i64
  %225 = shl i64 1, %224
  %226 = load i64, i64* %9, align 8
  %227 = or i64 %226, %225
  store i64 %227, i64* %9, align 8
  br label %228

228:                                              ; preds = %222, %209
  br label %229

229:                                              ; preds = %228, %203
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %187

233:                                              ; preds = %187
  %234 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %235 = load i64, i64* %8, align 8
  %236 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %235)
  %237 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %238 = load i64, i64* %9, align 8
  %239 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %238)
  %240 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %241 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %242 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %243 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %244 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %245 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %246 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %247 = load %struct.task*, %struct.task** %6, align 8
  %248 = getelementptr inbounds %struct.task, %struct.task* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %249)
  %251 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %252 = call i32 (%struct.proc_data*, i8*, ...) @proc_printf(%struct.proc_data* %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %253 = load %struct.task*, %struct.task** %6, align 8
  %254 = getelementptr inbounds %struct.task, %struct.task* %253, i32 0, i32 2
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = call i32 @unlock(i32* %256)
  %258 = load %struct.task*, %struct.task** %6, align 8
  %259 = getelementptr inbounds %struct.task, %struct.task* %258, i32 0, i32 1
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = call i32 @unlock(i32* %261)
  %263 = load %struct.task*, %struct.task** %6, align 8
  %264 = getelementptr inbounds %struct.task, %struct.task* %263, i32 0, i32 0
  %265 = call i32 @unlock(i32* %264)
  %266 = load %struct.task*, %struct.task** %6, align 8
  %267 = call i32 @proc_put_task(%struct.task* %266)
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %233, %15
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.task* @proc_get_task(%struct.proc_entry*) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @proc_printf(%struct.proc_data*, i8*, ...) #1

declare dso_local i32 @dev_make(i32, i32) #1

declare dso_local i32 @list_size(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @proc_put_task(%struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
