; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_string_list_add_note_lines.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_string_list_add_note_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.object_id = type { i32 }

@OBJ_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, %struct.object_id*)* @string_list_add_note_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_list_add_note_lines(%struct.string_list* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %9 = load %struct.object_id*, %struct.object_id** %5, align 8
  %10 = call i64 @is_null_oid(%struct.object_id* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.object_id*, %struct.object_id** %5, align 8
  %15 = call i8* @read_object_file(%struct.object_id* %14, i32* %8, i64* %7)
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @OBJ_BLOB, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22, %19, %13
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @OBJ_BLOB, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ true, %25 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %22
  %39 = load %struct.string_list*, %struct.string_list** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @string_list_split(%struct.string_list* %39, i8* %40, i8 signext 10, i32 -1)
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @free(i8* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %35, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @string_list_split(%struct.string_list*, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
