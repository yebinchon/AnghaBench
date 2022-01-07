; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_read_marks.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_read_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@import_marks_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@import_marks_file_ignore_missing = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot read '%s'\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"corrupt mark line: %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"object not found: %s\00", align 1
@MAX_PACK_ID = common dso_local global i32 0, align 4
@import_marks_file_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @read_marks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_marks() #0 {
  %1 = alloca [512 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @import_marks_file, align 4
  %9 = call i32* @fopen(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %25

13:                                               ; preds = %0
  %14 = load i64, i64* @import_marks_file_ignore_missing, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %99

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @import_marks_file, align 4
  %23 = call i32 @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %12
  br label %26

26:                                               ; preds = %92, %25
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @fgets(i8* %27, i32 512, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %26
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %33 = call i8* @strchr(i8* %32, i8 signext 10)
  store i8* %33, i8** %4, align 8
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 58
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %31
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %43 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i8*, i8** %4, align 8
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i32 @strtoumax(i8* %47, i8** %4, i32 10)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = icmp eq i8* %52, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 32
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call i64 @get_oid_hex(i8* %63, %struct.object_id* %5)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %56, %51, %44
  %67 = getelementptr inbounds [512 x i8], [512 x i8]* %1, i64 0, i64 0
  %68 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = call %struct.object_entry* @find_object(%struct.object_id* %5)
  store %struct.object_entry* %70, %struct.object_entry** %6, align 8
  %71 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %72 = icmp ne %struct.object_entry* %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @the_repository, align 4
  %75 = call i32 @oid_object_info(i32 %74, %struct.object_id* %5, i32* null)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ult i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = call i8* @oid_to_hex(%struct.object_id* %5)
  %80 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = call %struct.object_entry* @insert_object(%struct.object_id* %5)
  store %struct.object_entry* %82, %struct.object_entry** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %85 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @MAX_PACK_ID, align 4
  %87 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %88 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %90 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %81, %69
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %95 = call i32 @insert_mark(i32 %93, %struct.object_entry* %94)
  br label %26

96:                                               ; preds = %26
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @fclose(i32* %97)
  br label %99

99:                                               ; preds = %96, %20
  store i32 1, i32* @import_marks_file_done, align 4
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @die_errno(i8*, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @strtoumax(i8*, i8**, i32) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local %struct.object_entry* @find_object(%struct.object_id*) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.object_entry* @insert_object(%struct.object_id*) #1

declare dso_local i32 @insert_mark(i32, %struct.object_entry*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
