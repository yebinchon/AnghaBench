; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_show-index.c_lg2_show_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_show-index.c_lg2_show_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"usage: showindex [<repo-dir>]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"could not open index\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"could not open repository\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"could not open repository index\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Empty index\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"File Path: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"    Stage: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" Blob SHA: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"File Mode: %07o\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"File Size: %d bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Dev/Inode: %d/%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"  UID/GID: %d/%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"    ctime: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"    mtime: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_show_index(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %15 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ugt i64 %37, 5
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = getelementptr inbounds i8, i8* %42, i64 -5
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @git_index_open(i32** %7, i8* %47)
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @check_lg2(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %61

51:                                               ; preds = %39, %34
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @git_repository_open_ext(i32** %4, i8* %52, i32 0, i32* null)
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @check_lg2(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @git_repository_index(i32** %7, i32* %56)
  %58 = call i32 @check_lg2(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @git_repository_free(i32* %59)
  br label %61

61:                                               ; preds = %51, %46
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @git_index_read(i32* %62, i32 0)
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @git_index_entrycount(i32* %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %61
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %130, %70
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %133

75:                                               ; preds = %71
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call %struct.TYPE_8__* @git_index_get_byindex(i32* %76, i64 %77)
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %14, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 9
  %81 = call i32 @git_oid_fmt(i8* %19, i32* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %87 = call i32 @git_index_entry_stage(%struct.TYPE_8__* %86)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %19)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %102, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %111, i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %127)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %130

130:                                              ; preds = %75
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %8, align 8
  br label %71

133:                                              ; preds = %71
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @git_index_free(i32* %134)
  %136 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %136)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fatal(i8*, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @check_lg2(i32, i8*, i8*) #2

declare dso_local i32 @git_index_open(i32**, i8*) #2

declare dso_local i32 @git_repository_open_ext(i32**, i8*, i32, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_index_read(i32*, i32) #2

declare dso_local i64 @git_index_entrycount(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local %struct.TYPE_8__* @git_index_get_byindex(i32*, i64) #2

declare dso_local i32 @git_oid_fmt(i8*, i32*) #2

declare dso_local i32 @git_index_entry_stage(%struct.TYPE_8__*) #2

declare dso_local i32 @git_index_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
