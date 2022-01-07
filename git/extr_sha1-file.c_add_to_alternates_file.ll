; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_add_to_alternates_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_add_to_alternates_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.strbuf = type { i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"objects/info/alternates\00", align 1
@LOCK_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to fdopen alternates lockfile\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@EOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to read alternates file\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"unable to move new alternates file into place\00", align 1
@the_repository = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_alternates_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lock_file, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %2, align 8
  %9 = bitcast %struct.lock_file* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %10 = call i8* @git_pathdup(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @LOCK_DIE_ON_ERROR, align 4
  %13 = call i32 @hold_lock_file_for_update(%struct.lock_file* %3, i8* %11, i32 %12)
  %14 = call i32* @fdopen_lock_file(%struct.lock_file* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @die_errno(i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  br label %27

27:                                               ; preds = %39, %25
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @strbuf_getline(%struct.strbuf* %8, i32* %28)
  %30 = load i64, i64* @EOF, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %33, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @fprintf_or_die(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  br label %27

44:                                               ; preds = %38, %27
  %45 = call i32 @strbuf_release(%struct.strbuf* %8)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @fclose(i32* %46)
  br label %56

48:                                               ; preds = %20
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOENT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 @die_errno(i32 %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @rollback_lock_file(%struct.lock_file* %3)
  br label %82

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @fprintf_or_die(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = call i64 @commit_lock_file(%struct.lock_file* %3)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %69 = call i32 @die_errno(i32 %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @the_repository, align 8
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @link_alt_odb_entries(%struct.TYPE_5__* %78, i8* %79, i8 signext 10, i32* null, i32 0)
  br label %81

81:                                               ; preds = %77, %70
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @free(i8* %83)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_pathdup(i8*) #2

declare dso_local i32 @hold_lock_file_for_update(%struct.lock_file*, i8*, i32) #2

declare dso_local i32* @fdopen_lock_file(%struct.lock_file*, i8*) #2

declare dso_local i32 @die_errno(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf_or_die(i32*, i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i64 @commit_lock_file(%struct.lock_file*) #2

declare dso_local i32 @link_alt_odb_entries(%struct.TYPE_5__*, i8*, i8 signext, i32*, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
