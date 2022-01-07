; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_read_branches_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_read_branches_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.remote = type { i32, i32, i32, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"branches/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@REMOTE_BRANCHES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"refs/heads/%s:refs/heads/%s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"HEAD:refs/heads/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote*)* @read_branches_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_branches_file(%struct.remote* %0) #0 {
  %2 = alloca %struct.remote*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i32*, align 8
  store %struct.remote* %0, %struct.remote** %2, align 8
  %6 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %7 = load %struct.remote*, %struct.remote** %2, align 8
  %8 = getelementptr inbounds %struct.remote, %struct.remote* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @git_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32* @fopen_or_warn(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @strbuf_getline_lf(%struct.strbuf* %4, i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @fclose(i32* %18)
  %20 = call i32 @strbuf_trim(%struct.strbuf* %4)
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 @strbuf_release(%struct.strbuf* %4)
  br label %66

26:                                               ; preds = %15
  %27 = load %struct.remote*, %struct.remote** %2, align 8
  %28 = getelementptr inbounds %struct.remote, %struct.remote* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @REMOTE_BRANCHES, align 4
  %30 = load %struct.remote*, %struct.remote** %2, align 8
  %31 = getelementptr inbounds %struct.remote, %struct.remote* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @strchr(i32 %33, i8 signext 35)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  store i8 0, i8* %38, align 1
  br label %41

40:                                               ; preds = %26
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.remote*, %struct.remote** %2, align 8
  %43 = call i32 @strbuf_detach(%struct.strbuf* %4, i32* null)
  %44 = call i32 @add_url_alias(%struct.remote* %42, i32 %43)
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.remote*, %struct.remote** %2, align 8
  %47 = getelementptr inbounds %struct.remote, %struct.remote* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 %48)
  %50 = load %struct.remote*, %struct.remote** %2, align 8
  %51 = getelementptr inbounds %struct.remote, %struct.remote* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @refspec_append(i32* %51, i32 %53)
  %55 = call i32 @strbuf_reset(%struct.strbuf* %4)
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = load %struct.remote*, %struct.remote** %2, align 8
  %59 = getelementptr inbounds %struct.remote, %struct.remote* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @refspec_append(i32* %59, i32 %61)
  %63 = load %struct.remote*, %struct.remote** %2, align 8
  %64 = getelementptr inbounds %struct.remote, %struct.remote* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = call i32 @strbuf_release(%struct.strbuf* %4)
  br label %66

66:                                               ; preds = %41, %24, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fopen_or_warn(i32, i8*) #2

declare dso_local i32 @git_path(i8*, i32) #2

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i8* @strchr(i32, i8 signext) #2

declare dso_local i32 @add_url_alias(%struct.remote*, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @refspec_append(i32*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
