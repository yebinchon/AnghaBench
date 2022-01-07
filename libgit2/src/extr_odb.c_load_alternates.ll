; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_load_alternates.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_load_alternates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GIT_ALTERNATES_MAX_DEPTH = common dso_local global i32 0, align 4
@GIT_ALTERNATES_FILE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @load_alternates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_alternates(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %14 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GIT_ALTERNATES_MAX_DEPTH, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %86

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** @GIT_ALTERNATES_FILE, align 8
  %22 = call i32 @git_buf_joinpath(%struct.TYPE_7__* %8, i8* %20, i8* %21)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %86

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @git_path_exists(i64 %27)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 @git_buf_dispose(%struct.TYPE_7__* %8)
  store i32 0, i32* %4, align 4
  br label %86

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @git_futils_readbuffer(%struct.TYPE_7__* %9, i64 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 @git_buf_dispose(%struct.TYPE_7__* %8)
  store i32 -1, i32* %4, align 4
  br label %86

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %81, %56, %39
  %44 = call i8* @git__strtok(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %82

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 35
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46
  br label %43

57:                                               ; preds = %51
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @git_buf_joinpath(%struct.TYPE_7__* %8, i8* %66, i8* %67)
  store i32 %68, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %82

71:                                               ; preds = %65
  %72 = call i8* @git_buf_cstr(%struct.TYPE_7__* %8)
  store i8* %72, i8** %11, align 8
  br label %73

73:                                               ; preds = %71, %62, %57
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @git_odb__add_default_backends(i32* %74, i8* %75, i32 1, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %82

81:                                               ; preds = %73
  br label %43

82:                                               ; preds = %80, %70, %43
  %83 = call i32 @git_buf_dispose(%struct.TYPE_7__* %8)
  %84 = call i32 @git_buf_dispose(%struct.TYPE_7__* %9)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %37, %30, %24, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_7__*, i8*, i8*) #2

declare dso_local i32 @git_path_exists(i64) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

declare dso_local i64 @git_futils_readbuffer(%struct.TYPE_7__*, i64) #2

declare dso_local i8* @git__strtok(i8**, i8*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_7__*) #2

declare dso_local i32 @git_odb__add_default_backends(i32*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
