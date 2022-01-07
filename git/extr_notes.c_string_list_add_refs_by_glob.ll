; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_string_list_add_refs_by_glob.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_string_list_add_refs_by_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.object_id = type { i32 }

@string_list_add_one_ref = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"notes ref %s is invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_list_add_refs_by_glob(%struct.string_list* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.string_list*, %struct.string_list** %3, align 8
  %7 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @has_glob_specials(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @string_list_add_one_ref, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.string_list*, %struct.string_list** %3, align 8
  %17 = call i32 @for_each_glob_ref(i32 %14, i8* %15, %struct.string_list* %16)
  br label %35

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @get_oid(i8* %19, %struct.object_id* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.string_list*, %struct.string_list** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @unsorted_string_list_has_string(%struct.string_list* %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.string_list*, %struct.string_list** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @string_list_append(%struct.string_list* %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %13
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @has_glob_specials(i8*) #1

declare dso_local i32 @for_each_glob_ref(i32, i8*, %struct.string_list*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @unsorted_string_list_has_string(%struct.string_list*, i8*) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
