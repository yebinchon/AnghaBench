; ModuleID = '/home/carl/AnghaBench/git/extr_remote-testsvn.c_cmd_import.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-testsvn.c_cmd_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.rev_note = type { i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"svnrdump\00", align 1
@private_ref = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No note found for %s.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Revision number couldn't be parsed from note.\00", align 1
@dump_from_file = common dso_local global i64 0, align 8
@url = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Couldn't open svn dump file %s.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-r%u:HEAD\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Unable to start %s, code %d\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"feature import-marks-if-exists=%s\0Afeature export-marks=%s\0A\00", align 1
@marksfilename = common dso_local global i8* null, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@notes_ref = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"%s, returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmd_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_import(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.child_process, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rev_note, align 4
  store i8* %0, i8** %2, align 8
  %11 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = load i32, i32* @private_ref, align 4
  %13 = call i64 @read_ref(i32 %12, %struct.object_id* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %39

16:                                               ; preds = %1
  %17 = call i8* @read_ref_note(%struct.object_id* %6)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @private_ref, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 0, i32* %7, align 4
  br label %38

25:                                               ; preds = %16
  %26 = bitcast %struct.rev_note* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 8, i1 false)
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @parse_rev_note(i8* %27, %struct.rev_note* %10)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = getelementptr inbounds %struct.rev_note, %struct.rev_note* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %32, %20
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* %7, align 4
  %41 = sub i32 %40, 1
  %42 = call i32 @check_or_regenerate_marks(i32 %41)
  %43 = load i64, i64* @dump_from_file, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i8*, i8** @url, align 8
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i32 @open(i8* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** @url, align 8
  %53 = call i32 @die_errno(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %45
  br label %78

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i32 -1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @argv_array_push(i32* %57, i8* %58)
  %60 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %61 = call i32 @argv_array_push(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %63 = load i8*, i8** @url, align 8
  %64 = call i32 @argv_array_push(i32* %62, i8* %63)
  %65 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @argv_array_pushf(i32* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = call i32 @start_command(%struct.child_process* %8)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %55
  %76 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %54
  %79 = load i8*, i8** @marksfilename, align 8
  %80 = load i8*, i8** @marksfilename, align 8
  %81 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @STDIN_FILENO, align 4
  %84 = call i32 @svndump_init_fd(i32 %82, i32 %83)
  %85 = load i8*, i8** @url, align 8
  %86 = load i32, i32* @private_ref, align 4
  %87 = load i32, i32* @notes_ref, align 4
  %88 = call i32 @svndump_read(i8* %85, i32 %86, i32 %87)
  %89 = call i32 (...) @svndump_deinit()
  %90 = call i32 (...) @svndump_reset()
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @close(i32 %91)
  %93 = load i64, i64* @dump_from_file, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %78
  %96 = call i32 @finish_command(%struct.child_process* %8)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %78
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_ref(i32, %struct.object_id*) #2

declare dso_local i8* @read_ref_note(%struct.object_id*) #2

declare dso_local i32 @warning(i8*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @parse_rev_note(i8*, %struct.rev_note*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @check_or_regenerate_marks(i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @die_errno(i8*, i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @start_command(%struct.child_process*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @svndump_init_fd(i32, i32) #2

declare dso_local i32 @svndump_read(i8*, i32, i32) #2

declare dso_local i32 @svndump_deinit(...) #2

declare dso_local i32 @svndump_reset(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
