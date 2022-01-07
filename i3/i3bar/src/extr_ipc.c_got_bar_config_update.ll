; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_ipc.c_got_bar_config_update.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_ipc.c_got_bar_config_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"\22id\22:\22%s\22\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@I3_IPC_MESSAGE_TYPE_GET_OUTPUTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Received bar config update \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @got_bar_config_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @got_bar_config_update(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %8 = call i32 @sasprintf(i8** %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i8*, i8** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @strstr(i8* %9, i8* %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @FREE(i8* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %58

17:                                               ; preds = %1
  %18 = load i32, i32* @I3_IPC_MESSAGE_TYPE_GET_OUTPUTS, align 4
  %19 = call i32 @i3_send_msg(i32 %18, i32* null)
  %20 = call i32 @free_colors(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2))
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @DLOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %27 = call i8* @sstrdup(i64 %26)
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i8* [ %27, %25 ], [ null, %28 ]
  store i8* %30, i8** %5, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  store i64 %31, i64* %6, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @parse_config_json(i8* %32)
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @reconfig_windows(i32 1)
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  %41 = call i32 @init_xcb_late(i32 %40)
  %42 = call i32 @init_colors(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2))
  %43 = load i8*, i8** %5, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %48 = call i64 @strcmp(i8* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = call i32 (...) @kill_child()
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %53 = call i32 @start_child(i64 %52)
  br label %54

54:                                               ; preds = %50, %45, %39
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @free(i8* %55)
  %57 = call i32 @draw_bars(i32 0)
  br label %58

58:                                               ; preds = %54, %16
  ret void
}

declare dso_local i32 @sasprintf(i8**, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @i3_send_msg(i32, i32*) #1

declare dso_local i32 @free_colors(i32*) #1

declare dso_local i32 @DLOG(i8*, i8*) #1

declare dso_local i8* @sstrdup(i64) #1

declare dso_local i32 @parse_config_json(i8*) #1

declare dso_local i32 @reconfig_windows(i32) #1

declare dso_local i32 @init_xcb_late(i32) #1

declare dso_local i32 @init_colors(i32*) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @kill_child(...) #1

declare dso_local i32 @start_child(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @draw_bars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
