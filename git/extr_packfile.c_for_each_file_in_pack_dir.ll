; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_for_each_file_in_pack_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_for_each_file_in_pack_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.dirent = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"/pack\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"unable to open object pack directory: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @for_each_file_in_pack_dir(i8* %0, i32 (i32, i64, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i32, i64, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dirent*, align 8
  store i8* %0, i8** %4, align 8
  store i32 (i32, i64, i8*, i8*)* %1, i32 (i32, i64, i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %12)
  %14 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32* @opendir(i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENOENT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @error_errno(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %66

30:                                               ; preds = %3
  %31 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 47)
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %45, %44, %30
  %35 = load i32*, i32** %9, align 8
  %36 = call %struct.dirent* @readdir(i32* %35)
  store %struct.dirent* %36, %struct.dirent** %10, align 8
  %37 = icmp ne %struct.dirent* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load %struct.dirent*, %struct.dirent** %10, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @is_dot_or_dotdot(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %34

45:                                               ; preds = %38
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @strbuf_setlen(%struct.strbuf* %7, i64 %46)
  %48 = load %struct.dirent*, %struct.dirent** %10, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* %50)
  %52 = load i32 (i32, i64, i8*, i8*)*, i32 (i32, i64, i8*, i8*)** %5, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dirent*, %struct.dirent** %10, align 8
  %58 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 %52(i32 %54, i64 %56, i8* %59, i8* %60)
  br label %34

62:                                               ; preds = %34
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @closedir(i32* %63)
  %65 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %66

66:                                               ; preds = %62, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32* @opendir(i32) #2

declare dso_local i32 @error_errno(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @is_dot_or_dotdot(i8*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @closedir(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
