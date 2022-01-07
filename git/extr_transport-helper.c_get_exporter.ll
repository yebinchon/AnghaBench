; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_get_exporter.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_get_exporter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { i64, i64, i64 }
%struct.child_process = type { i32, i32, i32, i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"fast-export\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"--use-done-feature\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"--signed-tags=verbatim\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"--signed-tags=warn-strip\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"--export-marks=%s.tmp\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"--import-marks=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.child_process*, %struct.string_list*)* @get_exporter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_exporter(%struct.transport* %0, %struct.child_process* %1, %struct.string_list* %2) #0 {
  %4 = alloca %struct.transport*, align 8
  %5 = alloca %struct.child_process*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.helper_data*, align 8
  %8 = alloca %struct.child_process*, align 8
  %9 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %4, align 8
  store %struct.child_process* %1, %struct.child_process** %5, align 8
  store %struct.string_list* %2, %struct.string_list** %6, align 8
  %10 = load %struct.transport*, %struct.transport** %4, align 8
  %11 = getelementptr inbounds %struct.transport, %struct.transport* %10, i32 0, i32 0
  %12 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  store %struct.helper_data* %12, %struct.helper_data** %7, align 8
  %13 = load %struct.transport*, %struct.transport** %4, align 8
  %14 = call %struct.child_process* @get_helper(%struct.transport* %13)
  store %struct.child_process* %14, %struct.child_process** %8, align 8
  %15 = load %struct.child_process*, %struct.child_process** %5, align 8
  %16 = call i32 @child_process_init(%struct.child_process* %15)
  %17 = load %struct.child_process*, %struct.child_process** %8, align 8
  %18 = getelementptr inbounds %struct.child_process, %struct.child_process* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dup(i32 %19)
  %21 = load %struct.child_process*, %struct.child_process** %5, align 8
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.child_process*, %struct.child_process** %5, align 8
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %23, i32 0, i32 1
  %25 = call i32 @argv_array_push(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.child_process*, %struct.child_process** %5, align 8
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %26, i32 0, i32 1
  %28 = call i32 @argv_array_push(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.child_process*, %struct.child_process** %5, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %29, i32 0, i32 1
  %31 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %32 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)
  %37 = call i32 @argv_array_push(i32* %30, i8* %36)
  %38 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %39 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load %struct.child_process*, %struct.child_process** %5, align 8
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %43, i32 0, i32 1
  %45 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %46 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @argv_array_pushf(i32* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %42, %3
  %50 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %51 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.child_process*, %struct.child_process** %5, align 8
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %55, i32 0, i32 1
  %57 = load %struct.helper_data*, %struct.helper_data** %7, align 8
  %58 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @argv_array_pushf(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %54, %49
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.string_list*, %struct.string_list** %6, align 8
  %65 = getelementptr inbounds %struct.string_list, %struct.string_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load %struct.child_process*, %struct.child_process** %5, align 8
  %70 = getelementptr inbounds %struct.child_process, %struct.child_process* %69, i32 0, i32 1
  %71 = load %struct.string_list*, %struct.string_list** %6, align 8
  %72 = getelementptr inbounds %struct.string_list, %struct.string_list* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @argv_array_push(i32* %70, i8* %78)
  br label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load %struct.child_process*, %struct.child_process** %5, align 8
  %85 = getelementptr inbounds %struct.child_process, %struct.child_process* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.child_process*, %struct.child_process** %5, align 8
  %87 = call i32 @start_command(%struct.child_process* %86)
  ret i32 %87
}

declare dso_local %struct.child_process* @get_helper(%struct.transport*) #1

declare dso_local i32 @child_process_init(%struct.child_process*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @argv_array_pushf(i32*, i8*, i64) #1

declare dso_local i32 @start_command(%struct.child_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
