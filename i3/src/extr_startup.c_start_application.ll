; ModuleID = '/home/carl/AnghaBench/i3/src/extr_startup.c_start_application.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_startup.c_start_application.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev_timer = type { i32* }
%struct.TYPE_3__ = type { i8* }
%struct.Startup_Sequence = type { i32*, i8*, i8* }

@sndisplay = common dso_local global i32 0, align 4
@conn_screen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"i3\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"exec command in i3\00", align 1
@last_timestamp = common dso_local global i32 0, align 4
@startup_timeout = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"startup id = %s\0A\00", align 1
@focused = common dso_local global i32 0, align 4
@startup_sequences = common dso_local global i32 0, align 4
@sequences = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"executing: %s\0A\00", align 1
@RLIMIT_CORE = common dso_local global i32 0, align 4
@original_rlimit_core = common dso_local global i32 0, align 4
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@listen_fds = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"LISTEN_PID\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"LISTEN_FDS\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"I3SOCK\00", align 1
@current_socketpath = common dso_local global i32 0, align 4
@_PATH_BSHELL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@xcursor_supported = common dso_local global i64 0, align 8
@XCURSOR_CURSOR_WATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_application(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ev_timer*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.Startup_Sequence*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %74, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @sndisplay, align 4
  %16 = load i32, i32* @conn_screen, align 4
  %17 = call i32* @sn_launcher_context_new(i32 %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sn_launcher_context_set_name(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sn_launcher_context_set_description(i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @sstrdup(i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 32)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = load i8*, i8** %7, align 8
  store i8 0, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %14
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @last_timestamp, align 4
  %34 = call i32 @sn_launcher_context_initiate(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @free(i8* %35)
  %37 = call i8* @scalloc(i32 1, i32 8)
  %38 = bitcast i8* %37 to %struct.ev_timer*
  store %struct.ev_timer* %38, %struct.ev_timer** %8, align 8
  %39 = load %struct.ev_timer*, %struct.ev_timer** %8, align 8
  %40 = load i32, i32* @startup_timeout, align 4
  %41 = call i32 @ev_timer_init(%struct.ev_timer* %39, i32 %40, double 6.000000e+01, i32 0)
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.ev_timer*, %struct.ev_timer** %8, align 8
  %44 = getelementptr inbounds %struct.ev_timer, %struct.ev_timer* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load i32, i32* @main_loop, align 4
  %46 = load %struct.ev_timer*, %struct.ev_timer** %8, align 8
  %47 = call i32 @ev_timer_start(i32 %45, %struct.ev_timer* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @sn_launcher_context_get_startup_id(i32* %48)
  %50 = call i32 @LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @focused, align 4
  %52 = call %struct.TYPE_3__* @con_get_workspace(i32 %51)
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %9, align 8
  %53 = call i8* @scalloc(i32 1, i32 24)
  %54 = bitcast i8* %53 to %struct.Startup_Sequence*
  store %struct.Startup_Sequence* %54, %struct.Startup_Sequence** %10, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @sn_launcher_context_get_startup_id(i32* %55)
  %57 = call i8* @sstrdup(i8* %56)
  %58 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %10, align 8
  %59 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @sstrdup(i8* %62)
  %64 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %10, align 8
  %65 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %10, align 8
  %68 = getelementptr inbounds %struct.Startup_Sequence, %struct.Startup_Sequence* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.Startup_Sequence*, %struct.Startup_Sequence** %10, align 8
  %70 = load i32, i32* @sequences, align 4
  %71 = call i32 @TAILQ_INSERT_TAIL(i32* @startup_sequences, %struct.Startup_Sequence* %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @sn_launcher_context_ref(i32* %72)
  br label %74

74:                                               ; preds = %30, %2
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = call i64 (...) @fork()
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %74
  %80 = call i32 (...) @setsid()
  %81 = load i32, i32* @RLIMIT_CORE, align 4
  %82 = call i32 @setrlimit(i32 %81, i32* @original_rlimit_core)
  %83 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %93, %79
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %87 = load i32, i32* @listen_fds, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @close(i32 %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %84

96:                                               ; preds = %84
  %97 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %98 = call i32 @unsetenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %99 = load i32, i32* @SIGPIPE, align 4
  %100 = load i32, i32* @SIG_DFL, align 4
  %101 = call i32 @signal(i32 %99, i32 %100)
  %102 = call i64 (...) @fork()
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %96
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @sn_launcher_context_setup_child_process(i32* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @current_socketpath, align 4
  %112 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 1)
  %113 = load i32, i32* @_PATH_BSHELL, align 4
  %114 = load i32, i32* @_PATH_BSHELL, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @execl(i32 %113, i32 %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %115, i32* null)
  br label %117

117:                                              ; preds = %110, %96
  %118 = call i32 @_exit(i32 0) #3
  unreachable

119:                                              ; preds = %74
  %120 = call i32 @wait(i32 0)
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %133, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* @xcursor_supported, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @XCURSOR_CURSOR_WATCH, align 4
  %128 = call i32 @xcursor_set_root_cursor(i32 %127)
  br label %132

129:                                              ; preds = %123
  %130 = load i32, i32* @XCURSOR_CURSOR_WATCH, align 4
  %131 = call i32 @xcb_set_root_cursor(i32 %130)
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %119
  ret void
}

declare dso_local i32* @sn_launcher_context_new(i32, i32) #1

declare dso_local i32 @sn_launcher_context_set_name(i32*, i8*) #1

declare dso_local i32 @sn_launcher_context_set_description(i32*, i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sn_launcher_context_initiate(i32*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @scalloc(i32, i32) #1

declare dso_local i32 @ev_timer_init(%struct.ev_timer*, i32, double, i32) #1

declare dso_local i32 @ev_timer_start(i32, %struct.ev_timer*) #1

declare dso_local i32 @LOG(i8*, i8*) #1

declare dso_local i8* @sn_launcher_context_get_startup_id(i32*) #1

declare dso_local %struct.TYPE_3__* @con_get_workspace(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.Startup_Sequence*, i32) #1

declare dso_local i32 @sn_launcher_context_ref(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @setrlimit(i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sn_launcher_context_setup_child_process(i32*) #1

declare dso_local i32 @setenv(i8*, i32, i32) #1

declare dso_local i32 @execl(i32, i32, i8*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @wait(i32) #1

declare dso_local i32 @xcursor_set_root_cursor(i32) #1

declare dso_local i32 @xcb_set_root_cursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
