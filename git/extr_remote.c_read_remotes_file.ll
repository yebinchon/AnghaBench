; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_read_remotes_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_read_remotes_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { i32, i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"remotes/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@REMOTE_REMOTES = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"URL:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Push:\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Pull:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote*)* @read_remotes_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_remotes_file(%struct.remote* %0) #0 {
  %2 = alloca %struct.remote*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.remote* %0, %struct.remote** %2, align 8
  %6 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load %struct.remote*, %struct.remote** %2, align 8
  %8 = getelementptr inbounds %struct.remote, %struct.remote* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @git_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32* @fopen_or_warn(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.remote*, %struct.remote** %2, align 8
  %17 = getelementptr inbounds %struct.remote, %struct.remote* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* @REMOTE_REMOTES, align 4
  %19 = load %struct.remote*, %struct.remote** %2, align 8
  %20 = getelementptr inbounds %struct.remote, %struct.remote* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %62, %15
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @strbuf_getline(%struct.strbuf* %3, i32* %22)
  %24 = load i64, i64* @EOF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %21
  %27 = call i32 @strbuf_rtrim(%struct.strbuf* %3)
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @skip_prefix(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.remote*, %struct.remote** %2, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @skip_spaces(i8* %34)
  %36 = call i32 @xstrdup(i32 %35)
  %37 = call i32 @add_url_alias(%struct.remote* %33, i32 %36)
  br label %62

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @skip_prefix(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %5)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.remote*, %struct.remote** %2, align 8
  %45 = getelementptr inbounds %struct.remote, %struct.remote* %44, i32 0, i32 2
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @skip_spaces(i8* %46)
  %48 = call i32 @refspec_append(i32* %45, i32 %47)
  br label %61

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @skip_prefix(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.remote*, %struct.remote** %2, align 8
  %56 = getelementptr inbounds %struct.remote, %struct.remote* %55, i32 0, i32 1
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @skip_spaces(i8* %57)
  %59 = call i32 @refspec_append(i32* %56, i32 %58)
  br label %60

60:                                               ; preds = %54, %49
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %32
  br label %21

63:                                               ; preds = %21
  %64 = call i32 @strbuf_release(%struct.strbuf* %3)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fclose(i32* %65)
  br label %67

67:                                               ; preds = %63, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen_or_warn(i32, i8*) #2

declare dso_local i32 @git_path(i8*, i32) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #2

declare dso_local i32 @add_url_alias(%struct.remote*, i32) #2

declare dso_local i32 @xstrdup(i32) #2

declare dso_local i32 @skip_spaces(i8*) #2

declare dso_local i32 @refspec_append(i32*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
