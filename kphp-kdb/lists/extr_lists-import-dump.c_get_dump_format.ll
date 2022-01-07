; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_get_dump_format.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_get_dump_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"member_groups\00", align 1
@TF_MEMBER_GROUPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"group_members\00", align 1
@TF_GROUP_MEMBERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"groups_short\00", align 1
@TF_GROUPS_SHORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"app_fans_settings\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"app_members_settings\00", align 1
@TF_APP_FANS_SETTINGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"fan_apps_settings\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"member_apps_settings\00", align 1
@TF_FAN_APPS_SETTINGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"fan_apps_balance\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"member_apps_balance\00", align 1
@TF_FAN_APPS_BALANCE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"app_fans_notify\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"app_members_notify\00", align 1
@TF_APP_FANS_NOTIFY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"fan_apps_notify\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"member_apps_notify\00", align 1
@TF_FAN_APPS_NOTIFY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"app_fans\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"app_members\00", align 1
@TF_APP_FANS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"fan_apps\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"member_apps\00", align 1
@TF_FAN_APPS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@TF_FAMILY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"widget_comments\00", align 1
@TF_WIDGET_COMMENTS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"widget_votes\00", align 1
@TF_WIDGET_VOTES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@TF_BLACKLIST = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"blacklisted\00", align 1
@TF_BLACKLISTED = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"banlist\00", align 1
@TF_BANLIST = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"banlisted\00", align 1
@TF_BANLISTED = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"photorev\00", align 1
@TF_PHOTO_REV = common dso_local global i32 0, align 4
@TF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dump_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @TF_MEMBER_GROUPS, align 4
  store i32 %8, i32* %2, align 4
  br label %141

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @TF_GROUP_MEMBERS, align 4
  store i32 %14, i32* %2, align 4
  br label %141

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @TF_GROUPS_SHORT, align 4
  store i32 %20, i32* %2, align 4
  br label %141

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 17)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 20)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @TF_APP_FANS_SETTINGS, align 4
  store i32 %30, i32* %2, align 4
  br label %141

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 17)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strncmp(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 20)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @TF_FAN_APPS_SETTINGS, align 4
  store i32 %40, i32* %2, align 4
  br label %141

41:                                               ; preds = %35
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 16)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 19)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @TF_FAN_APPS_BALANCE, align 4
  store i32 %50, i32* %2, align 4
  br label %141

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 15)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 18)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @TF_APP_FANS_NOTIFY, align 4
  store i32 %60, i32* %2, align 4
  br label %141

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 15)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 18)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @TF_FAN_APPS_NOTIFY, align 4
  store i32 %70, i32* %2, align 4
  br label %141

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @strncmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 8)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 11)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @TF_APP_FANS, align 4
  store i32 %80, i32* %2, align 4
  br label %141

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @strncmp(i8* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 11)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* @TF_FAN_APPS, align 4
  store i32 %90, i32* %2, align 4
  br label %141

91:                                               ; preds = %85
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 6)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @TF_FAMILY, align 4
  store i32 %96, i32* %2, align 4
  br label %141

97:                                               ; preds = %91
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 15)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @TF_WIDGET_COMMENTS, align 4
  store i32 %102, i32* %2, align 4
  br label %141

103:                                              ; preds = %97
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @strncmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 12)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @TF_WIDGET_VOTES, align 4
  store i32 %108, i32* %2, align 4
  br label %141

109:                                              ; preds = %103
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @strncmp(i8* %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i32 10)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @TF_BLACKLIST, align 4
  store i32 %114, i32* %2, align 4
  br label %141

115:                                              ; preds = %109
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @strncmp(i8* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 12)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* @TF_BLACKLISTED, align 4
  store i32 %120, i32* %2, align 4
  br label %141

121:                                              ; preds = %115
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @strncmp(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 8)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* @TF_BANLIST, align 4
  store i32 %126, i32* %2, align 4
  br label %141

127:                                              ; preds = %121
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 @strncmp(i8* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 10)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @TF_BANLISTED, align 4
  store i32 %132, i32* %2, align 4
  br label %141

133:                                              ; preds = %127
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 @strncmp(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 9)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @TF_PHOTO_REV, align 4
  store i32 %138, i32* %2, align 4
  br label %141

139:                                              ; preds = %133
  %140 = load i32, i32* @TF_NONE, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %139, %137, %131, %125, %119, %113, %107, %101, %95, %89, %79, %69, %59, %49, %39, %29, %19, %13, %7
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
