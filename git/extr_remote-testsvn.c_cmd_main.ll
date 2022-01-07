; ModuleID = '/home/carl/AnghaBench/git/extr_remote-testsvn.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-testsvn.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i8**, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@cmd_main.remote = internal global %struct.remote* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"git-remote-svn <remote-name> [<url>]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@dump_from_file = common dso_local global i32 0, align 4
@url = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"refs/svn/%s/master\00", align 1
@private_ref = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"refs/notes/%s/revs\00", align 1
@notes_ref = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"%s/info/fast-import/remote-svn/%s.marks\00", align 1
@marksfilename = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Error reading command stream\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unexpected end of command stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = call i32 (...) @setup_git_directory()
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 3
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %2
  %24 = call i32 @usage(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %103

25:                                               ; preds = %20
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call %struct.remote* @remote_get(i8* %28)
  store %struct.remote* %29, %struct.remote** @cmd_main.remote, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  br label %42

36:                                               ; preds = %25
  %37 = load %struct.remote*, %struct.remote** @cmd_main.remote, align 8
  %38 = getelementptr inbounds %struct.remote, %struct.remote* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i8* [ %35, %32 ], [ %41, %36 ]
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @starts_with(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  store i32 1, i32* @dump_from_file, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = call i32 @url_decode(i8* %50)
  store i32 %51, i32* @url, align 4
  br label %57

52:                                               ; preds = %42
  store i32 0, i32* @dump_from_file, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @end_url_with_slash(%struct.strbuf* %7, i8* %53)
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* @url, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.remote*, %struct.remote** @cmd_main.remote, align 8
  %59 = getelementptr inbounds %struct.remote, %struct.remote* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @private_ref, align 4
  %64 = load %struct.remote*, %struct.remote** @cmd_main.remote, align 8
  %65 = getelementptr inbounds %struct.remote, %struct.remote* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* @notes_ref, align 4
  %70 = call i32 (...) @get_git_dir()
  %71 = load %struct.remote*, %struct.remote** @cmd_main.remote, align 8
  %72 = getelementptr inbounds %struct.remote, %struct.remote* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %73)
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* @marksfilename, align 4
  br label %77

77:                                               ; preds = %57, %95
  %78 = load i32, i32* @stdin, align 4
  %79 = call i64 @strbuf_getline_lf(%struct.strbuf* %6, i32 %78)
  %80 = load i64, i64* @EOF, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* @stdin, align 4
  %84 = call i64 @ferror(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %90

88:                                               ; preds = %82
  %89 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %77
  %92 = call i64 @do_command(%struct.strbuf* %6)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %97

95:                                               ; preds = %91
  %96 = call i32 @strbuf_reset(%struct.strbuf* %6)
  br label %77

97:                                               ; preds = %94
  %98 = call i32 @strbuf_release(%struct.strbuf* %6)
  %99 = call i32 @strbuf_release(%struct.strbuf* %7)
  %100 = call i32 @strbuf_release(%struct.strbuf* %8)
  %101 = call i32 @strbuf_release(%struct.strbuf* %10)
  %102 = call i32 @strbuf_release(%struct.strbuf* %9)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %97, %23
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_git_directory(...) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local %struct.remote* @remote_get(i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @url_decode(i8*) #2

declare dso_local i32 @end_url_with_slash(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i64 @ferror(i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i64 @do_command(%struct.strbuf*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
