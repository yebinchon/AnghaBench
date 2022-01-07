; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_merge_one_change.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_merge_one_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_merge_options = type { i32, i32 }
%struct.notes_merge_pair = type { i32, i32 }
%struct.notes_tree = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Using local notes for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Using remote notes for %s\0A\00", align 1
@combine_notes_overwrite = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"combine_notes_overwrite failed\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Concatenating local and remote notes for %s\0A\00", align 1
@combine_notes_concatenate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"failed to concatenate notes (combine_notes_concatenate)\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Concatenating unique lines in local and remote notes for %s\0A\00", align 1
@combine_notes_cat_sort_uniq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"failed to concatenate notes (combine_notes_cat_sort_uniq)\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unknown strategy (%i).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notes_merge_options*, %struct.notes_merge_pair*, %struct.notes_tree*)* @merge_one_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_one_change(%struct.notes_merge_options* %0, %struct.notes_merge_pair* %1, %struct.notes_tree* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notes_merge_options*, align 8
  %6 = alloca %struct.notes_merge_pair*, align 8
  %7 = alloca %struct.notes_tree*, align 8
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %5, align 8
  store %struct.notes_merge_pair* %1, %struct.notes_merge_pair** %6, align 8
  store %struct.notes_tree* %2, %struct.notes_tree** %7, align 8
  %8 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %9 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %93 [
    i32 131, label %11
    i32 130, label %16
    i32 129, label %27
    i32 128, label %49
    i32 132, label %71
  ]

11:                                               ; preds = %3
  %12 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %13 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %14 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %15 = call i32 @merge_one_change_manual(%struct.notes_merge_options* %12, %struct.notes_merge_pair* %13, %struct.notes_tree* %14)
  store i32 %15, i32* %4, align 4
  br label %98

16:                                               ; preds = %3
  %17 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %18 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %23 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %22, i32 0, i32 1
  %24 = call i8* @oid_to_hex(i32* %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %98

27:                                               ; preds = %3
  %28 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %29 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %34 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %33, i32 0, i32 1
  %35 = call i8* @oid_to_hex(i32* %34)
  %36 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %39 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %40 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %39, i32 0, i32 1
  %41 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %42 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %41, i32 0, i32 0
  %43 = load i32, i32* @combine_notes_overwrite, align 4
  %44 = call i32 @add_note(%struct.notes_tree* %38, i32* %40, i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %37
  store i32 0, i32* %4, align 4
  br label %98

49:                                               ; preds = %3
  %50 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %51 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %56 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %55, i32 0, i32 1
  %57 = call i8* @oid_to_hex(i32* %56)
  %58 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %61 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %62 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %61, i32 0, i32 1
  %63 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %64 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %63, i32 0, i32 0
  %65 = load i32, i32* @combine_notes_concatenate, align 4
  %66 = call i32 @add_note(%struct.notes_tree* %60, i32* %62, i32* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %59
  store i32 0, i32* %4, align 4
  br label %98

71:                                               ; preds = %3
  %72 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %73 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %78 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %77, i32 0, i32 1
  %79 = call i8* @oid_to_hex(i32* %78)
  %80 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.notes_tree*, %struct.notes_tree** %7, align 8
  %83 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %84 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %83, i32 0, i32 1
  %85 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %6, align 8
  %86 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %85, i32 0, i32 0
  %87 = load i32, i32* @combine_notes_cat_sort_uniq, align 4
  %88 = call i32 @add_note(%struct.notes_tree* %82, i32* %84, i32* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %81
  store i32 0, i32* %4, align 4
  br label %98

93:                                               ; preds = %3
  %94 = load %struct.notes_merge_options*, %struct.notes_merge_options** %5, align 8
  %95 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %92, %70, %48, %26, %11
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @merge_one_change_manual(%struct.notes_merge_options*, %struct.notes_merge_pair*, %struct.notes_tree*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @add_note(%struct.notes_tree*, i32*, i32*, i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @die(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
