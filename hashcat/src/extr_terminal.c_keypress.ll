; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_terminal.c_keypress.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_terminal.c_keypress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }

@STATUS_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"Next dictionary / mask in queue selected. Bypassing current one.\00", align 1
@STATUS_PAUSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Paused\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Resumed\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Checkpoint enabled. Will quit at next restore-point update.\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"Checkpoint disabled. Restore-point updates will no longer be monitored.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @keypress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keypress(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @STATUS_INIT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @usleep(i32 100000)
  br label %13

21:                                               ; preds = %13
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = call i32 (...) @tty_break()
  br label %26

26:                                               ; preds = %170, %39, %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %175

31:                                               ; preds = %26
  %32 = call i32 (...) @tty_getchar()
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %175

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %26

40:                                               ; preds = %36
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hc_thread_mutex_lock(i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = call i32 @event_log_info(%struct.TYPE_15__* %45, i8* null)
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %163 [
    i32 115, label %48
    i32 13, label %48
    i32 10, label %48
    i32 98, label %61
    i32 112, label %76
    i32 114, label %105
    i32 99, label %134
    i32 113, label %158
  ]

48:                                               ; preds = %40, %40, %40
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = call i32 @event_log_info(%struct.TYPE_15__* %49, i8* null)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = call i32 @status_display(%struct.TYPE_15__* %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = call i32 @event_log_info(%struct.TYPE_15__* %53, i8* null)
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = call i32 @send_prompt(%struct.TYPE_15__* %58)
  br label %60

60:                                               ; preds = %57, %48
  br label %170

61:                                               ; preds = %40
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %63 = call i32 @event_log_info(%struct.TYPE_15__* %62, i8* null)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = call i32 @bypass(%struct.TYPE_15__* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = call i32 @event_log_info(%struct.TYPE_15__* %66, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = call i32 @event_log_info(%struct.TYPE_15__* %68, i8* null)
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = call i32 @send_prompt(%struct.TYPE_15__* %73)
  br label %75

75:                                               ; preds = %72, %61
  br label %170

76:                                               ; preds = %40
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @STATUS_PAUSED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %76
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %84 = call i32 @event_log_info(%struct.TYPE_15__* %83, i8* null)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = call i32 @SuspendThreads(%struct.TYPE_15__* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @STATUS_PAUSED, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = call i32 @event_log_info(%struct.TYPE_15__* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %82
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = call i32 @event_log_info(%struct.TYPE_15__* %96, i8* null)
  br label %98

98:                                               ; preds = %95, %76
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = call i32 @send_prompt(%struct.TYPE_15__* %102)
  br label %104

104:                                              ; preds = %101, %98
  br label %170

105:                                              ; preds = %40
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @STATUS_PAUSED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %113 = call i32 @event_log_info(%struct.TYPE_15__* %112, i8* null)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %115 = call i32 @ResumeThreads(%struct.TYPE_15__* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @STATUS_PAUSED, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %111
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %123 = call i32 @event_log_info(%struct.TYPE_15__* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %111
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %126 = call i32 @event_log_info(%struct.TYPE_15__* %125, i8* null)
  br label %127

127:                                              ; preds = %124, %105
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %132 = call i32 @send_prompt(%struct.TYPE_15__* %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %170

134:                                              ; preds = %40
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = call i32 @event_log_info(%struct.TYPE_15__* %135, i8* null)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %138 = call i32 @stop_at_checkpoint(%struct.TYPE_15__* %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %145 = call i32 @event_log_info(%struct.TYPE_15__* %144, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %149

146:                                              ; preds = %134
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %148 = call i32 @event_log_info(%struct.TYPE_15__* %147, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %151 = call i32 @event_log_info(%struct.TYPE_15__* %150, i8* null)
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %156 = call i32 @send_prompt(%struct.TYPE_15__* %155)
  br label %157

157:                                              ; preds = %154, %149
  br label %170

158:                                              ; preds = %40
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %160 = call i32 @event_log_info(%struct.TYPE_15__* %159, i8* null)
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %162 = call i32 @myquit(%struct.TYPE_15__* %161)
  br label %170

163:                                              ; preds = %40
  %164 = load i32, i32* %5, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %168 = call i32 @send_prompt(%struct.TYPE_15__* %167)
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %158, %157, %133, %104, %75, %60
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @hc_thread_mutex_unlock(i32 %173)
  br label %26

175:                                              ; preds = %35, %26
  %176 = call i32 (...) @tty_fix()
  ret void
}

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @tty_break(...) #1

declare dso_local i32 @tty_getchar(...) #1

declare dso_local i32 @hc_thread_mutex_lock(i32) #1

declare dso_local i32 @event_log_info(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @status_display(%struct.TYPE_15__*) #1

declare dso_local i32 @send_prompt(%struct.TYPE_15__*) #1

declare dso_local i32 @bypass(%struct.TYPE_15__*) #1

declare dso_local i32 @SuspendThreads(%struct.TYPE_15__*) #1

declare dso_local i32 @ResumeThreads(%struct.TYPE_15__*) #1

declare dso_local i32 @stop_at_checkpoint(%struct.TYPE_15__*) #1

declare dso_local i32 @myquit(%struct.TYPE_15__*) #1

declare dso_local i32 @hc_thread_mutex_unlock(i32) #1

declare dso_local i32 @tty_fix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
