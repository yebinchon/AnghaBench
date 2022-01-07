; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_unmerged_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_unmerged_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i32 }

@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Unmerged paths:\00", align 1
@FROM_COMMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"  (use \22git restore --staged <file>...\22 to unstage)\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"  (use \22git restore --source=%s --staged <file>...\22 to unstage)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  (use \22git rm --cached <file>...\22 to unstage)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"  (use \22git add <file>...\22 to mark resolution)\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"  (use \22git add/rm <file>...\22 as appropriate to mark resolution)\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"  (use \22git rm <file>...\22 to mark resolution)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_unmerged_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_unmerged_header(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.string_list_item*, align 8
  %9 = alloca %struct.wt_status_change_data*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @WT_STATUS_HEADER, align 4
  %11 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %12 = call i8* @color(i32 %10, %struct.wt_status* %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %13, i8* %14, i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %43, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %20 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %26 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.string_list_item*, %struct.string_list_item** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %28, i64 %30
  store %struct.string_list_item* %31, %struct.string_list_item** %8, align 8
  %32 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %33 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %32, i32 0, i32 0
  %34 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %33, align 8
  store %struct.wt_status_change_data* %34, %struct.wt_status_change_data** %9, align 8
  %35 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %9, align 8
  %36 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %41 [
    i32 0, label %38
    i32 1, label %39
    i32 3, label %40
    i32 5, label %40
  ]

38:                                               ; preds = %24
  br label %42

39:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %42

40:                                               ; preds = %24, %24
  store i32 1, i32* %4, align 4
  br label %42

41:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40, %39, %38
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %17

46:                                               ; preds = %17
  %47 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %48 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %124

52:                                               ; preds = %46
  %53 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %54 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FROM_COMMIT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %90

59:                                               ; preds = %52
  %60 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %61 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %59
  %65 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %66 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @strcmp(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %71, i8* %72, i32 %73)
  br label %83

75:                                               ; preds = %64
  %76 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %80 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %76, i8* %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %75, %70
  br label %89

84:                                               ; preds = %59
  %85 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %83
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %100 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %97, i8* %98, i32 %99)
  br label %106

101:                                              ; preds = %93
  %102 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %105 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %102, i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %124

107:                                              ; preds = %90
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %117 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %114, i8* %115, i32 %116)
  br label %123

118:                                              ; preds = %110, %107
  %119 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 (%struct.wt_status*, i8*, i32, ...) @status_printf_ln(%struct.wt_status* %119, i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %51, %123, %106
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
