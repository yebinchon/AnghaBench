; ModuleID = '/home/carl/AnghaBench/git/extr_help.c_list_commands_in_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_help.c_list_commands_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.cmdnames = type { i32 }
%struct.dirent = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdnames*, i8*, i8*)* @list_commands_in_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_commands_in_dir(%struct.cmdnames* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.cmdnames* %0, %struct.cmdnames** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @opendir(i8* %13)
  store i32* %14, i32** %7, align 8
  %15 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %65

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %52, %51, %39, %23
  %29 = load i32*, i32** %7, align 8
  %30 = call %struct.dirent* @readdir(i32* %29)
  store %struct.dirent* %30, %struct.dirent** %8, align 8
  %31 = icmp ne %struct.dirent* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.dirent*, %struct.dirent** %8, align 8
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @skip_prefix(i32 %35, i8* %36, i8** %11)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %28

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @strbuf_setlen(%struct.strbuf* %9, i32 %41)
  %43 = load %struct.dirent*, %struct.dirent** %8, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strbuf_addstr(%struct.strbuf* %9, i32 %45)
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @is_executable(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %28

52:                                               ; preds = %40
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %12, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strip_suffix(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %12)
  %57 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @add_cmdname(%struct.cmdnames* %57, i8* %58, i64 %59)
  br label %28

61:                                               ; preds = %28
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @closedir(i32* %62)
  %64 = call i32 @strbuf_release(%struct.strbuf* %9)
  br label %65

65:                                               ; preds = %61, %18
  ret void
}

declare dso_local i32* @opendir(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @skip_prefix(i32, i8*, i8**) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @is_executable(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strip_suffix(i8*, i8*, i64*) #1

declare dso_local i32 @add_cmdname(%struct.cmdnames*, i8*, i64) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
