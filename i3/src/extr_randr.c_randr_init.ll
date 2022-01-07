; ModuleID = '/home/carl/AnghaBench/i3/src/extr_randr.c_randr_init.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_randr.c_randr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@conn = common dso_local global i32 0, align 4
@root_output = common dso_local global i32 0, align 4
@outputs = common dso_local global i32 0, align 4
@xcb_randr_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"RandR is not present, activating root output.\0A\00", align 1
@XCB_RANDR_MAJOR_VERSION = common dso_local global i32 0, align 4
@XCB_RANDR_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Could not query RandR version: X11 error code %d\0A\00", align 1
@has_randr_1_5 = common dso_local global i32 0, align 4
@root = common dso_local global i32 0, align 4
@XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE = common dso_local global i32 0, align 4
@XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE = common dso_local global i32 0, align 4
@XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE = common dso_local global i32 0, align 4
@XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randr_init(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @conn, align 4
  %9 = call i32 @create_root_output(i32 %8)
  store i32 %9, i32* @root_output, align 4
  %10 = load i32, i32* @root_output, align 4
  %11 = load i32, i32* @outputs, align 4
  %12 = call i32 @TAILQ_INSERT_TAIL(i32* @outputs, i32 %10, i32 %11)
  %13 = load i32, i32* @conn, align 4
  %14 = call %struct.TYPE_9__* @xcb_get_extension_data(i32 %13, i32* @xcb_randr_id)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = call i32 @DLOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @fallback_to_root_output()
  br label %79

22:                                               ; preds = %2
  %23 = load i32, i32* @conn, align 4
  %24 = load i32, i32* @conn, align 4
  %25 = load i32, i32* @XCB_RANDR_MAJOR_VERSION, align 4
  %26 = load i32, i32* @XCB_RANDR_MINOR_VERSION, align 4
  %27 = call i32 @xcb_randr_query_version(i32 %24, i32 %25, i32 %26)
  %28 = call %struct.TYPE_8__* @xcb_randr_query_version_reply(i32 %23, i32 %27, %struct.TYPE_8__** %6)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ELOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = call i32 @free(%struct.TYPE_8__* %36)
  %38 = call i32 (...) @fallback_to_root_output()
  br label %79

39:                                               ; preds = %22
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 1
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %47, 5
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %44, %39
  %54 = phi i1 [ false, %44 ], [ false, %39 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* @has_randr_1_5, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = call i32 @free(%struct.TYPE_8__* %56)
  %58 = call i32 (...) @randr_query_outputs()
  %59 = load i32*, i32** %3, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %3, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %53
  %67 = load i32, i32* @conn, align 4
  %68 = load i32, i32* @root, align 4
  %69 = load i32, i32* @XCB_RANDR_NOTIFY_MASK_SCREEN_CHANGE, align 4
  %70 = load i32, i32* @XCB_RANDR_NOTIFY_MASK_OUTPUT_CHANGE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @XCB_RANDR_NOTIFY_MASK_CRTC_CHANGE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @XCB_RANDR_NOTIFY_MASK_OUTPUT_PROPERTY, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @xcb_randr_select_input(i32 %67, i32 %68, i32 %75)
  %77 = load i32, i32* @conn, align 4
  %78 = call i32 @xcb_flush(i32 %77)
  br label %79

79:                                               ; preds = %66, %31, %19
  ret void
}

declare dso_local i32 @create_root_output(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @xcb_get_extension_data(i32, i32*) #1

declare dso_local i32 @DLOG(i8*) #1

declare dso_local i32 @fallback_to_root_output(...) #1

declare dso_local %struct.TYPE_8__* @xcb_randr_query_version_reply(i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @xcb_randr_query_version(i32, i32, i32) #1

declare dso_local i32 @ELOG(i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @randr_query_outputs(...) #1

declare dso_local i32 @xcb_randr_select_input(i32, i32, i32) #1

declare dso_local i32 @xcb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
