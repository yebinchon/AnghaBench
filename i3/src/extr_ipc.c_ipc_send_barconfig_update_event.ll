; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_barconfig_update_event.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_barconfig_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Issue barconfig_update event for id = %s\0A\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@get_buf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"barconfig_update\00", align 1
@I3_IPC_EVENT_BARCONFIG_UPDATE = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_send_barconfig_update_event(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DLOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @LC_NUMERIC, align 4
  %11 = call i32 @setlocale(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 (...) @ygenalloc()
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = call i32 @dump_bar_config(i32 %13, %struct.TYPE_4__* %14)
  %16 = load i32, i32* @get_buf, align 4
  %17 = call i32 (i32, ...) @y(i32 %16, i8** %4, i32* %5)
  %18 = load i32, i32* @I3_IPC_EVENT_BARCONFIG_UPDATE, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @ipc_send_event(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %18, i8* %19)
  %21 = load i32, i32* @free, align 4
  %22 = call i32 (i32, ...) @y(i32 %21)
  %23 = load i32, i32* @LC_NUMERIC, align 4
  %24 = call i32 @setlocale(i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @ygenalloc(...) #1

declare dso_local i32 @dump_bar_config(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @y(i32, ...) #1

declare dso_local i32 @ipc_send_event(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
