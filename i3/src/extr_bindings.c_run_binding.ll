; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_run_binding.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_run_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"[con_id=\22%p\22] %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"i3-sensible-pager \22%s\22\0A\00", align 1
@errorfilename = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@config = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"The configured command for this shortcut could not be run successfully.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"show errors\00", align 1
@command_error_nagbar_pid = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"run\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @run_binding(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [11 x i8*], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @sstrdup(i32 %15)
  store i8* %16, i8** %5, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8**, i8*, i32, ...) @sasprintf(i8** %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = call %struct.TYPE_14__* @binding_copy(%struct.TYPE_14__* %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_13__* @parse_command(i8* %27, i32* null, i32* null)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 (...) @tree_render()
  br label %37

37:                                               ; preds = %35, %24
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load i32, i32* @errorfilename, align 4
  %44 = call i32 (i8**, i8*, i32, ...) @sasprintf(i8** %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [11 x i8*], [11 x i8*]* %9, i64 0, i64 0
  store i8* null, i8** %45, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @config, i32 0, i32 0, i32 0), align 8
  store i8* %48, i8** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %47, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %51, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %53, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %8, align 8
  store i8* %56, i8** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* null, i8** %57, align 8
  %58 = getelementptr inbounds [11 x i8*], [11 x i8*]* %9, i64 0, i64 0
  %59 = call i32 @start_nagbar(i32* @command_error_nagbar_pid, i8** %58)
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @free(i8* %60)
  br label %62

62:                                               ; preds = %42, %37
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = call i32 @ipc_send_binding_event(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_14__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = call i32 @binding_free(%struct.TYPE_14__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %67
}

declare dso_local i8* @sstrdup(i32) #1

declare dso_local i32 @sasprintf(i8**, i8*, i32, ...) #1

declare dso_local %struct.TYPE_14__* @binding_copy(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @parse_command(i8*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @tree_render(...) #1

declare dso_local i32 @start_nagbar(i32*, i8**) #1

declare dso_local i32 @ipc_send_binding_event(i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @binding_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
