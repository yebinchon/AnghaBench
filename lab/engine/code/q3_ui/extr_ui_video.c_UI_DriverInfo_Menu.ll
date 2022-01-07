; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_UI_DriverInfo_Menu.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_video.c_UI_DriverInfo_Menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i8**, %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8*, i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@s_driverinfo = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@DriverInfo_MenuDraw = common dso_local global i32 0, align 4
@MTYPE_BTEXT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"DRIVER INFO\00", align 1
@color_white = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@MTYPE_BITMAP = common dso_local global i8* null, align 8
@DRIVERINFO_FRAMEL = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i8* null, align 8
@DRIVERINFO_FRAMER = common dso_local global i32 0, align 4
@DRIVERINFO_BACK0 = common dso_local global i32 0, align 4
@QMF_LEFT_JUSTIFY = common dso_local global i32 0, align 4
@QMF_PULSEIFFOCUS = common dso_local global i32 0, align 4
@DriverInfo_Event = common dso_local global i32 0, align 4
@ID_DRIVERINFOBACK = common dso_local global i32 0, align 4
@DRIVERINFO_BACK1 = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_DriverInfo_Menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DriverInfo_Menu() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @memset(%struct.TYPE_12__* @s_driverinfo, i32 0, i32 4)
  %5 = call i32 (...) @DriverInfo_Cache()
  %6 = load i32, i32* @qtrue, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 3, i32 1), align 4
  %7 = load i32, i32* @DriverInfo_MenuDraw, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 3, i32 0), align 8
  %8 = load i8*, i8** @MTYPE_BTEXT, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 7, i32 4, i32 6), align 8
  store i32 320, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 7, i32 4, i32 0), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 7, i32 4, i32 1), align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 7, i32 0), align 8
  %9 = load i32, i32* @color_white, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 7, i32 6), align 4
  %10 = load i32, i32* @UI_CENTER, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 7, i32 5), align 8
  %11 = load i8*, i8** @MTYPE_BITMAP, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6, i32 4, i32 6), align 8
  %12 = load i32, i32* @DRIVERINFO_FRAMEL, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6, i32 4, i32 5), align 4
  %13 = load i8*, i8** @QMF_INACTIVE, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6, i32 4, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6, i32 4, i32 0), align 8
  store i32 78, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6, i32 4, i32 1), align 4
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6, i32 1), align 8
  store i32 329, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6, i32 2), align 4
  %15 = load i8*, i8** @MTYPE_BITMAP, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5, i32 4, i32 6), align 8
  %16 = load i32, i32* @DRIVERINFO_FRAMER, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5, i32 4, i32 5), align 4
  %17 = load i8*, i8** @QMF_INACTIVE, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5, i32 4, i32 2), align 8
  store i32 376, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5, i32 4, i32 0), align 8
  store i32 76, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5, i32 4, i32 1), align 4
  store i32 256, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5, i32 1), align 8
  store i32 334, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5, i32 2), align 4
  %19 = load i8*, i8** @MTYPE_BITMAP, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 4, i32 6), align 8
  %20 = load i32, i32* @DRIVERINFO_BACK0, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 4, i32 5), align 4
  %21 = load i32, i32* @QMF_LEFT_JUSTIFY, align 4
  %22 = load i32, i32* @QMF_PULSEIFFOCUS, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 4, i32 2), align 8
  %24 = load i32, i32* @DriverInfo_Event, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 4, i32 4), align 8
  %25 = load i32, i32* @ID_DRIVERINFOBACK, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 4, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 4, i32 0), align 8
  store i32 416, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 4, i32 1), align 4
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 1), align 8
  store i32 64, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 2), align 4
  %26 = load i32, i32* @DRIVERINFO_BACK1, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4, i32 3), align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 0), align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uis, i32 0, i32 0, i32 0), align 4
  %29 = call i32 @Q_strncpyz(i8* %27, i32 %28, i32 1024)
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 0), align 8
  store i8* %30, i8** %1, align 8
  br label %31

31:                                               ; preds = %90, %0
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 1), align 8
  %33 = icmp slt i32 %32, 40
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %1, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %41, label %91

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i8*, i8** %1, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %1, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 32
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load i8*, i8** %1, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %1, align 8
  store i8 0, i8* %55, align 1
  br label %42

57:                                               ; preds = %52
  %58 = load i8*, i8** %1, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load i8*, i8** %1, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i8*, i8** %1, align 8
  %69 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 2), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 1), align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 1), align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  store i8* %68, i8** %73, align 8
  br label %74

74:                                               ; preds = %67, %62, %57
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i8*, i8** %1, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %1, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 32
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ false, %75 ], [ %84, %80 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i8*, i8** %1, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %1, align 8
  br label %75

90:                                               ; preds = %85
  br label %31

91:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %124, %91
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 1), align 8
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 2), align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strlen(i8* %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = icmp sgt i32 %103, 32
  br i1 %104, label %105, label %123

105:                                              ; preds = %96
  %106 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 2), align 8
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 62, i8* %114, align 1
  %115 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 2), align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %105, %96
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %2, align 4
  br label %92

127:                                              ; preds = %92
  %128 = call i32 @Menu_AddItem(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 3), %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 7))
  %129 = call i32 @Menu_AddItem(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 3), %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 6))
  %130 = call i32 @Menu_AddItem(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 3), %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 5))
  %131 = call i32 @Menu_AddItem(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 3), %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 4))
  %132 = call i32 @UI_PushMenu(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_driverinfo, i32 0, i32 3))
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @DriverInfo_Cache(...) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Menu_AddItem(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @UI_PushMenu(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
