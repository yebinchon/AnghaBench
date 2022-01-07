; ModuleID = '/home/carl/AnghaBench/i3/src/extr_config_directives.c_event_state_from_str.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_config_directives.c_event_state_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"Mod1\00", align 1
@XCB_KEY_BUT_MASK_MOD_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Mod2\00", align 1
@XCB_KEY_BUT_MASK_MOD_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Mod3\00", align 1
@XCB_KEY_BUT_MASK_MOD_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Mod4\00", align 1
@XCB_KEY_BUT_MASK_MOD_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Mod5\00", align 1
@XCB_KEY_BUT_MASK_MOD_5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@XCB_KEY_BUT_MASK_CONTROL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@XCB_KEY_BUT_MASK_SHIFT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"Group1\00", align 1
@I3_XKB_GROUP_MASK_1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"Group2\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Mode_switch\00", align 1
@I3_XKB_GROUP_MASK_2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"Group3\00", align 1
@I3_XKB_GROUP_MASK_3 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"Group4\00", align 1
@I3_XKB_GROUP_MASK_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_state_from_str(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %2, align 4
  br label %111

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @strstr(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @XCB_KEY_BUT_MASK_MOD_1, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @strstr(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @XCB_KEY_BUT_MASK_MOD_2, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i8*, i8** %3, align 8
  %27 = call i32* @strstr(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @XCB_KEY_BUT_MASK_MOD_3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %3, align 8
  %35 = call i32* @strstr(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @XCB_KEY_BUT_MASK_MOD_4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %3, align 8
  %43 = call i32* @strstr(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @XCB_KEY_BUT_MASK_MOD_5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i8*, i8** %3, align 8
  %51 = call i32* @strstr(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %3, align 8
  %55 = call i32* @strstr(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @XCB_KEY_BUT_MASK_CONTROL, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i8*, i8** %3, align 8
  %63 = call i32* @strstr(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @XCB_KEY_BUT_MASK_SHIFT, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8*, i8** %3, align 8
  %71 = call i32* @strstr(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* @I3_XKB_GROUP_MASK_1, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i8*, i8** %3, align 8
  %80 = call i32* @strstr(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %81 = icmp ne i32* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %3, align 8
  %84 = call i32* @strstr(i8* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %78
  %87 = load i32, i32* @I3_XKB_GROUP_MASK_2, align 4
  %88 = shl i32 %87, 16
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i8*, i8** %3, align 8
  %93 = call i32* @strstr(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* @I3_XKB_GROUP_MASK_3, align 4
  %97 = shl i32 %96, 16
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %91
  %101 = load i8*, i8** %3, align 8
  %102 = call i32* @strstr(i8* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* @I3_XKB_GROUP_MASK_4, align 4
  %106 = shl i32 %105, 16
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %100
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %7
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
