; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_test-dumpevents.c_main.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_test-dumpevents.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32, i64, i64 }
%struct.event = type { i32 }
%struct.event_base = type { i32 }

@__const.main.tv_onesec = private unnamed_addr constant %struct.timeval { i32 1, i32 0, i64 0, i64 0 }, align 8
@__const.main.tv_two5sec = private unnamed_addr constant %struct.timeval { i32 2, i32 500000, i64 0, i64 0 }, align 8
@.str = private unnamed_addr constant [27 x i8] c"evutil_make_internal_pipe_\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't make event_base\0A\00", align 1
@EV_WRITE = common dso_local global i32 0, align 4
@callback1 = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@callback2 = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i64 0, align 8
@EV_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"=====expected\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Now= %ld.%06d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Inserted:\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"  %p [fd  %ld] Write\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"  %p [fd  %ld] Read Persist Timeout=T+1\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"  %p [fd  %ld] Write Persist Timeout=T+1\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"  %p [fd  %ld] Read Timeout=T+2.5\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"  %p [fd  -1] Timeout=T+1\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"  %p [fd  -1] Persist Timeout=T+2.5\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"  %p [fd  -1] Persist Timeout=T+1\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"  %p [sig %d] Signal Persist\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Active:\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"  %p [fd  -1, priority=0] Read active\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"  %p [fd  -1, priority=0] Read Write Timeout active\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"  %p [fd  %ld, priority=0] Read active\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"======received\00", align 1
@stdout = common dso_local global i32 0, align 4
@N_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [13 x %struct.event*], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca %struct.timeval*, align 8
  %14 = alloca %struct.event_base*, align 8
  %15 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.timeval* @__const.main.tv_onesec to i8*), i64 24, i1 false)
  %17 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.timeval* @__const.main.tv_two5sec to i8*), i64 24, i1 false)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %19 = call i64 @evutil_make_internal_pipe_(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %23 = call i64 @evutil_make_internal_pipe_(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %2
  %26 = call i32 @sock_perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %267

27:                                               ; preds = %21
  %28 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %28, %struct.event_base** %14, align 8
  %29 = icmp ne %struct.event_base* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %267

33:                                               ; preds = %27
  %34 = load %struct.event_base*, %struct.event_base** %14, align 8
  %35 = call %struct.timeval* @event_base_init_common_timeout(%struct.event_base* %34, %struct.timeval* %10)
  store %struct.timeval* %35, %struct.timeval** %12, align 8
  %36 = load %struct.event_base*, %struct.event_base** %14, align 8
  %37 = call %struct.timeval* @event_base_init_common_timeout(%struct.event_base* %36, %struct.timeval* %11)
  store %struct.timeval* %37, %struct.timeval** %13, align 8
  %38 = load %struct.event_base*, %struct.event_base** %14, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EV_WRITE, align 4
  %42 = load i32, i32* @callback1, align 4
  %43 = call %struct.event* @event_new(%struct.event_base* %38, i32 %40, i32 %41, i32 %42, i32* null)
  %44 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 0
  store %struct.event* %43, %struct.event** %44, align 16
  %45 = load %struct.event_base*, %struct.event_base** %14, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EV_READ, align 4
  %49 = load i32, i32* @EV_PERSIST, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @callback1, align 4
  %52 = call %struct.event* @event_new(%struct.event_base* %45, i32 %47, i32 %50, i32 %51, i32* null)
  %53 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 1
  store %struct.event* %52, %struct.event** %53, align 8
  %54 = load %struct.event_base*, %struct.event_base** %14, align 8
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EV_WRITE, align 4
  %58 = load i32, i32* @EV_PERSIST, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @callback2, align 4
  %61 = call %struct.event* @event_new(%struct.event_base* %54, i32 %56, i32 %59, i32 %60, i32* null)
  %62 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 2
  store %struct.event* %61, %struct.event** %62, align 16
  %63 = load %struct.event_base*, %struct.event_base** %14, align 8
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EV_READ, align 4
  %67 = load i32, i32* @callback2, align 4
  %68 = call %struct.event* @event_new(%struct.event_base* %63, i32 %65, i32 %66, i32 %67, i32* null)
  %69 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 3
  store %struct.event* %68, %struct.event** %69, align 8
  %70 = load %struct.event_base*, %struct.event_base** %14, align 8
  %71 = load i32, i32* @callback1, align 4
  %72 = call %struct.event* @evtimer_new(%struct.event_base* %70, i32 %71, i32* null)
  %73 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 4
  store %struct.event* %72, %struct.event** %73, align 16
  %74 = load %struct.event_base*, %struct.event_base** %14, align 8
  %75 = load i32, i32* @callback1, align 4
  %76 = call %struct.event* @evtimer_new(%struct.event_base* %74, i32 %75, i32* null)
  %77 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 5
  store %struct.event* %76, %struct.event** %77, align 8
  %78 = load %struct.event_base*, %struct.event_base** %14, align 8
  %79 = load i32, i32* @callback1, align 4
  %80 = call %struct.event* @evtimer_new(%struct.event_base* %78, i32 %79, i32* null)
  %81 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 6
  store %struct.event* %80, %struct.event** %81, align 16
  %82 = load %struct.event_base*, %struct.event_base** %14, align 8
  %83 = load i32, i32* @EV_PERSIST, align 4
  %84 = load i32, i32* @callback2, align 4
  %85 = call %struct.event* @event_new(%struct.event_base* %82, i32 -1, i32 %83, i32 %84, i32* null)
  %86 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 7
  store %struct.event* %85, %struct.event** %86, align 8
  %87 = load %struct.event_base*, %struct.event_base** %14, align 8
  %88 = load i32, i32* @EV_PERSIST, align 4
  %89 = load i32, i32* @callback2, align 4
  %90 = call %struct.event* @event_new(%struct.event_base* %87, i32 -1, i32 %88, i32 %89, i32* null)
  %91 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 8
  store %struct.event* %90, %struct.event** %91, align 16
  %92 = load %struct.event_base*, %struct.event_base** %14, align 8
  %93 = load i32, i32* @EV_PERSIST, align 4
  %94 = load i32, i32* @callback2, align 4
  %95 = call %struct.event* @event_new(%struct.event_base* %92, i32 -1, i32 %93, i32 %94, i32* null)
  %96 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 9
  store %struct.event* %95, %struct.event** %96, align 8
  %97 = load %struct.event_base*, %struct.event_base** %14, align 8
  %98 = load i32, i32* @callback1, align 4
  %99 = call %struct.event* @event_new(%struct.event_base* %97, i32 -1, i32 0, i32 %98, i32* null)
  %100 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 10
  store %struct.event* %99, %struct.event** %100, align 16
  %101 = load %struct.event_base*, %struct.event_base** %14, align 8
  %102 = load i32, i32* @callback2, align 4
  %103 = call %struct.event* @event_new(%struct.event_base* %101, i32 -1, i32 0, i32 %102, i32* null)
  %104 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 11
  store %struct.event* %103, %struct.event** %104, align 8
  %105 = load %struct.event_base*, %struct.event_base** %14, align 8
  %106 = load i64, i64* @SIGINT, align 8
  %107 = load i32, i32* @callback2, align 4
  %108 = call %struct.event* @evsignal_new(%struct.event_base* %105, i64 %106, i32 %107, i32* null)
  %109 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 12
  store %struct.event* %108, %struct.event** %109, align 16
  %110 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 0
  %111 = load %struct.event*, %struct.event** %110, align 16
  %112 = call i32 @event_add(%struct.event* %111, %struct.timeval* null)
  %113 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 1
  %114 = load %struct.event*, %struct.event** %113, align 8
  %115 = call i32 @event_add(%struct.event* %114, %struct.timeval* %10)
  %116 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 2
  %117 = load %struct.event*, %struct.event** %116, align 16
  %118 = load %struct.timeval*, %struct.timeval** %12, align 8
  %119 = call i32 @event_add(%struct.event* %117, %struct.timeval* %118)
  %120 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 3
  %121 = load %struct.event*, %struct.event** %120, align 8
  %122 = load %struct.timeval*, %struct.timeval** %13, align 8
  %123 = call i32 @event_add(%struct.event* %121, %struct.timeval* %122)
  %124 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 4
  %125 = load %struct.event*, %struct.event** %124, align 16
  %126 = load %struct.timeval*, %struct.timeval** %12, align 8
  %127 = call i32 @event_add(%struct.event* %125, %struct.timeval* %126)
  %128 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 5
  %129 = load %struct.event*, %struct.event** %128, align 8
  %130 = load %struct.timeval*, %struct.timeval** %12, align 8
  %131 = call i32 @event_add(%struct.event* %129, %struct.timeval* %130)
  %132 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 6
  %133 = load %struct.event*, %struct.event** %132, align 16
  %134 = call i32 @event_add(%struct.event* %133, %struct.timeval* %10)
  %135 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 7
  %136 = load %struct.event*, %struct.event** %135, align 8
  %137 = load %struct.timeval*, %struct.timeval** %13, align 8
  %138 = call i32 @event_add(%struct.event* %136, %struct.timeval* %137)
  %139 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 8
  %140 = load %struct.event*, %struct.event** %139, align 16
  %141 = load %struct.timeval*, %struct.timeval** %12, align 8
  %142 = call i32 @event_add(%struct.event* %140, %struct.timeval* %141)
  %143 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 9
  %144 = load %struct.event*, %struct.event** %143, align 8
  %145 = call i32 @event_add(%struct.event* %144, %struct.timeval* %11)
  %146 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 10
  %147 = load %struct.event*, %struct.event** %146, align 16
  %148 = load i32, i32* @EV_READ, align 4
  %149 = call i32 @event_active(%struct.event* %147, i32 %148, i32 1)
  %150 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 11
  %151 = load %struct.event*, %struct.event** %150, align 8
  %152 = load i32, i32* @EV_READ, align 4
  %153 = load i32, i32* @EV_WRITE, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @EV_TIMEOUT, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @event_active(%struct.event* %151, i32 %156, i32 1)
  %158 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 1
  %159 = load %struct.event*, %struct.event** %158, align 8
  %160 = load i32, i32* @EV_READ, align 4
  %161 = call i32 @event_active(%struct.event* %159, i32 %160, i32 1)
  %162 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 12
  %163 = load %struct.event*, %struct.event** %162, align 16
  %164 = call i32 @event_add(%struct.event* %163, %struct.timeval* null)
  %165 = call i32 @evutil_gettimeofday(%struct.timeval* %15, i32* null)
  %166 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %167 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %168, i32 %171)
  %173 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %174 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 0
  %175 = load %struct.event*, %struct.event** %174, align 16
  %176 = ptrtoint %struct.event* %175 to i64
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %176, i64 %179)
  %181 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 1
  %182 = load %struct.event*, %struct.event** %181, align 8
  %183 = ptrtoint %struct.event* %182 to i64
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %183, i64 %186)
  %188 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 2
  %189 = load %struct.event*, %struct.event** %188, align 16
  %190 = ptrtoint %struct.event* %189 to i64
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %190, i64 %193)
  %195 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 3
  %196 = load %struct.event*, %struct.event** %195, align 8
  %197 = ptrtoint %struct.event* %196 to i64
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %197, i64 %200)
  %202 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 4
  %203 = load %struct.event*, %struct.event** %202, align 16
  %204 = ptrtoint %struct.event* %203 to i64
  %205 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 %204)
  %206 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 5
  %207 = load %struct.event*, %struct.event** %206, align 8
  %208 = ptrtoint %struct.event* %207 to i64
  %209 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 %208)
  %210 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 6
  %211 = load %struct.event*, %struct.event** %210, align 16
  %212 = ptrtoint %struct.event* %211 to i64
  %213 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 %212)
  %214 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 7
  %215 = load %struct.event*, %struct.event** %214, align 8
  %216 = ptrtoint %struct.event* %215 to i64
  %217 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i64 %216)
  %218 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 8
  %219 = load %struct.event*, %struct.event** %218, align 16
  %220 = ptrtoint %struct.event* %219 to i64
  %221 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i64 %220)
  %222 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 9
  %223 = load %struct.event*, %struct.event** %222, align 8
  %224 = ptrtoint %struct.event* %223 to i64
  %225 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i64 %224)
  %226 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 12
  %227 = load %struct.event*, %struct.event** %226, align 16
  %228 = ptrtoint %struct.event* %227 to i64
  %229 = load i64, i64* @SIGINT, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i64 %228, i32 %230)
  %232 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %233 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 10
  %234 = load %struct.event*, %struct.event** %233, align 16
  %235 = ptrtoint %struct.event* %234 to i64
  %236 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i64 %235)
  %237 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 11
  %238 = load %struct.event*, %struct.event** %237, align 8
  %239 = ptrtoint %struct.event* %238 to i64
  %240 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i64 %239)
  %241 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 1
  %242 = load %struct.event*, %struct.event** %241, align 8
  %243 = ptrtoint %struct.event* %242 to i64
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i64 %243, i64 %246)
  %248 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %249 = load %struct.event_base*, %struct.event_base** %14, align 8
  %250 = load i32, i32* @stdout, align 4
  %251 = call i32 @event_base_dump_events(%struct.event_base* %249, i32 %250)
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %261, %33
  %253 = load i32, i32* %6, align 4
  %254 = icmp slt i32 %253, 13
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [13 x %struct.event*], [13 x %struct.event*]* %7, i64 0, i64 %257
  %259 = load %struct.event*, %struct.event** %258, align 8
  %260 = call i32 @event_free(%struct.event* %259)
  br label %261

261:                                              ; preds = %255
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %252

264:                                              ; preds = %252
  %265 = load %struct.event_base*, %struct.event_base** %14, align 8
  %266 = call i32 @event_base_free(%struct.event_base* %265)
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %264, %30, %25
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @evutil_make_internal_pipe_(i32*) #2

declare dso_local i32 @sock_perror(i8*) #2

declare dso_local %struct.event_base* @event_base_new(...) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local %struct.timeval* @event_base_init_common_timeout(%struct.event_base*, %struct.timeval*) #2

declare dso_local %struct.event* @event_new(%struct.event_base*, i32, i32, i32, i32*) #2

declare dso_local %struct.event* @evtimer_new(%struct.event_base*, i32, i32*) #2

declare dso_local %struct.event* @evsignal_new(%struct.event_base*, i64, i32, i32*) #2

declare dso_local i32 @event_add(%struct.event*, %struct.timeval*) #2

declare dso_local i32 @event_active(%struct.event*, i32, i32) #2

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @printf(i8*, i64, ...) #2

declare dso_local i32 @event_base_dump_events(%struct.event_base*, i32) #2

declare dso_local i32 @event_free(%struct.event*) #2

declare dso_local i32 @event_base_free(%struct.event_base*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
