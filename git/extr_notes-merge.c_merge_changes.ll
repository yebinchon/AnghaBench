; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_merge_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_merge_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_merge_options = type { i32 }
%struct.notes_merge_pair = type { i32, i32, i32, i32 }
%struct.notes_tree = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"\09merge_changes(num_changes = %i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\09\09%.7s: %.7s -> %.7s/%.7s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\09\09\09skipping (no remote change)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\09\09\09skipping (local == remote)\0A\00", align 1
@uninitialized = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\09\09\09no local change, adopted remote\0A\00", align 1
@combine_notes_overwrite = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"combine_notes_overwrite failed\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\09\09\09need content-level merge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notes_merge_options*, %struct.notes_merge_pair*, i32*, %struct.notes_tree*)* @merge_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_changes(%struct.notes_merge_options* %0, %struct.notes_merge_pair* %1, i32* %2, %struct.notes_tree* %3) #0 {
  %5 = alloca %struct.notes_merge_options*, align 8
  %6 = alloca %struct.notes_merge_pair*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.notes_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.notes_merge_pair*, align 8
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %5, align 8
  store %struct.notes_merge_pair* %1, %struct.notes_merge_pair** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.notes_tree* %3, %struct.notes_tree** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %93, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %15
  %21 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %21, i64 %23
  store %struct.notes_merge_pair* %24, %struct.notes_merge_pair** %11, align 8
  %25 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %26 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %25, i32 0, i32 1
  %27 = call i32 @oid_to_hex(i32* %26)
  %28 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %29 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %28, i32 0, i32 2
  %30 = call i32 @oid_to_hex(i32* %29)
  %31 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %32 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %31, i32 0, i32 3
  %33 = call i32 @oid_to_hex(i32* %32)
  %34 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %35 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %34, i32 0, i32 0
  %36 = call i32 @oid_to_hex(i32* %35)
  %37 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %39 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %38, i32 0, i32 2
  %40 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %41 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %40, i32 0, i32 0
  %42 = call i64 @oideq(i32* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %92

46:                                               ; preds = %20
  %47 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %48 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %47, i32 0, i32 3
  %49 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %50 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %49, i32 0, i32 0
  %51 = call i64 @oideq(i32* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %91

55:                                               ; preds = %46
  %56 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %57 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %56, i32 0, i32 3
  %58 = call i64 @oideq(i32* %57, i32* @uninitialized)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %62 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %61, i32 0, i32 3
  %63 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %64 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %63, i32 0, i32 2
  %65 = call i64 @oideq(i32* %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %60, %55
  %68 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %70 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %71 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %70, i32 0, i32 1
  %72 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %73 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %72, i32 0, i32 0
  %74 = load i32, i32* @combine_notes_overwrite, align 4
  %75 = call i64 @add_note(%struct.notes_tree* %69, i32* %71, i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %67
  br label %90

80:                                               ; preds = %60
  %81 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %82 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %83 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %11, align 8
  %84 = load %struct.notes_tree*, %struct.notes_tree** %8, align 8
  %85 = call i64 @merge_one_change(%struct.notes_merge_options* %82, %struct.notes_merge_pair* %83, %struct.notes_tree* %84)
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %80, %79
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91, %44
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %15

96:                                               ; preds = %15
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @trace_printf(i8*, ...) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @add_note(%struct.notes_tree*, i32*, i32*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @merge_one_change(%struct.notes_merge_options*, %struct.notes_merge_pair*, %struct.notes_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
