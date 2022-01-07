; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i32, %struct.string_list_item* }
%struct.string_list_item = type { %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.string_list_item* }
%struct.TYPE_4__ = type { i32, %struct.string_list_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_porcelain_v2_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_porcelain_v2_print(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca %struct.wt_status_change_data*, align 8
  %4 = alloca %struct.string_list_item*, align 8
  %5 = alloca i32, align 4
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %6 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %7 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %12 = call i32 @wt_porcelain_v2_print_tracking(%struct.wt_status* %11)
  br label %13

13:                                               ; preds = %10, %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %17 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %14
  %22 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %23 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.string_list_item*, %struct.string_list_item** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %25, i64 %27
  store %struct.string_list_item* %28, %struct.string_list_item** %4, align 8
  %29 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %30 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %29, i32 0, i32 0
  %31 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %30, align 8
  store %struct.wt_status_change_data* %31, %struct.wt_status_change_data** %3, align 8
  %32 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %33 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %21
  %37 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %38 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %39 = call i32 @wt_porcelain_v2_print_changed_entry(%struct.string_list_item* %37, %struct.wt_status* %38)
  br label %40

40:                                               ; preds = %36, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %14

44:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %48 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %54 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.string_list_item*, %struct.string_list_item** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %56, i64 %58
  store %struct.string_list_item* %59, %struct.string_list_item** %4, align 8
  %60 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %61 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %60, i32 0, i32 0
  %62 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %61, align 8
  store %struct.wt_status_change_data* %62, %struct.wt_status_change_data** %3, align 8
  %63 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %3, align 8
  %64 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %52
  %68 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %69 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %70 = call i32 @wt_porcelain_v2_print_unmerged_entry(%struct.string_list_item* %68, %struct.wt_status* %69)
  br label %71

71:                                               ; preds = %67, %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %45

75:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %79 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %85 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load %struct.string_list_item*, %struct.string_list_item** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %87, i64 %89
  store %struct.string_list_item* %90, %struct.string_list_item** %4, align 8
  %91 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %92 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %93 = call i32 @wt_porcelain_v2_print_other(%struct.string_list_item* %91, %struct.wt_status* %92, i8 signext 63)
  br label %94

94:                                               ; preds = %83
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %76

97:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %101 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %107 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load %struct.string_list_item*, %struct.string_list_item** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %109, i64 %111
  store %struct.string_list_item* %112, %struct.string_list_item** %4, align 8
  %113 = load %struct.string_list_item*, %struct.string_list_item** %4, align 8
  %114 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %115 = call i32 @wt_porcelain_v2_print_other(%struct.string_list_item* %113, %struct.wt_status* %114, i8 signext 33)
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %98

119:                                              ; preds = %98
  ret void
}

declare dso_local i32 @wt_porcelain_v2_print_tracking(%struct.wt_status*) #1

declare dso_local i32 @wt_porcelain_v2_print_changed_entry(%struct.string_list_item*, %struct.wt_status*) #1

declare dso_local i32 @wt_porcelain_v2_print_unmerged_entry(%struct.string_list_item*, %struct.wt_status*) #1

declare dso_local i32 @wt_porcelain_v2_print_other(%struct.string_list_item*, %struct.wt_status*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
