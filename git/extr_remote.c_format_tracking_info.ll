; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_format_tracking_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_format_tracking_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Your branch is based on '%s', but the upstream is gone.\0A\00", align 1
@advice_status_hints = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"  (use \22git branch --unset-upstream\22 to fixup)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Your branch is up to date with '%s'.\0A\00", align 1
@AHEAD_BEHIND_QUICK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Your branch and '%s' refer to different commits.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  (use \22%s\22 for details)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"git status --ahead-behind\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Your branch is ahead of '%s' by %d commit.\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Your branch is ahead of '%s' by %d commits.\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"  (use \22git push\22 to publish your local commits)\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"Your branch is behind '%s' by %d commit, and can be fast-forwarded.\0A\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"Your branch is behind '%s' by %d commits, and can be fast-forwarded.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"  (use \22git pull\22 to update your local branch)\0A\00", align 1
@.str.12 = private unnamed_addr constant [93 x i8] c"Your branch and '%s' have diverged,\0Aand have %d and %d different commit each, respectively.\0A\00", align 1
@.str.13 = private unnamed_addr constant [94 x i8] c"Your branch and '%s' have diverged,\0Aand have %d and %d different commits each, respectively.\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"  (use \22git pull\22 to merge the remote branch into yours)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format_tracking_info(%struct.branch* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.branch*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.branch* %0, %struct.branch** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.branch*, %struct.branch** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @stat_tracking_info(%struct.branch* %14, i32* %8, i32* %9, i8** %11, i32 0, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %11, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %123

23:                                               ; preds = %19
  store i32 1, i32* %13, align 4
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i8*, i8** %11, align 8
  %26 = call i8* @shorten_unambiguous_ref(i8* %25, i32 0)
  store i8* %26, i8** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %31 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 (%struct.strbuf*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %30, i32 %31, i8* %32)
  %34 = load i64, i64* @advice_status_hints, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %38 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @strbuf_addstr(%struct.strbuf* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  br label %120

41:                                               ; preds = %24
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %46 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 (%struct.strbuf*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %45, i32 %46, i8* %47)
  br label %119

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @AHEAD_BEHIND_QUICK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 (%struct.strbuf*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %54, i32 %55, i8* %56)
  %58 = load i64, i64* @advice_status_hints, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %62 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 (%struct.strbuf*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %61, i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %53
  br label %118

65:                                               ; preds = %49
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %65
  %69 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @Q_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (%struct.strbuf*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %69, i32 %71, i8* %72, i32 %73)
  %75 = load i64, i64* @advice_status_hints, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %79 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %80 = call i32 @strbuf_addstr(%struct.strbuf* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %68
  br label %117

82:                                               ; preds = %65
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %82
  %86 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @Q_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0), i32 %87)
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (%struct.strbuf*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %86, i32 %88, i8* %89, i32 %90)
  %92 = load i64, i64* @advice_status_hints, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %96 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %97 = call i32 @strbuf_addstr(%struct.strbuf* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %85
  br label %116

99:                                               ; preds = %82
  %100 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @Q_(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (%struct.strbuf*, i32, i8*, ...) @strbuf_addf(%struct.strbuf* %100, i32 %104, i8* %105, i32 %106, i32 %107)
  %109 = load i64, i64* @advice_status_hints, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %113 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %114 = call i32 @strbuf_addstr(%struct.strbuf* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %99
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %81
  br label %118

118:                                              ; preds = %117, %64
  br label %119

119:                                              ; preds = %118, %44
  br label %120

120:                                              ; preds = %119, %40
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @free(i8* %121)
  store i32 1, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %22
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @stat_tracking_info(%struct.branch*, i32*, i32*, i8**, i32, i32) #1

declare dso_local i8* @shorten_unambiguous_ref(i8*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
