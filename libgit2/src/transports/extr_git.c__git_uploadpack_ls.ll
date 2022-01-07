; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_git.c__git_uploadpack_ls.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_git.c__git_uploadpack_ls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@GIT_NET_URL_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@prefix_git = common dso_local global i32 0, align 4
@GIT_DEFAULT_PORT = common dso_local global i8* null, align 8
@cmd_uploadpack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32**)* @_git_uploadpack_ls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_git_uploadpack_ls(%struct.TYPE_9__* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_NET_URL_INIT to i8*), i64 16, i1 false)
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i32**, i32*** %7, align 8
  store i32* null, i32** %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @prefix_git, align 4
  %19 = call i32 @git__prefixcmp(i8* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @prefix_git, align 4
  %23 = call i32 @strlen(i32 %22)
  %24 = load i8*, i8** %9, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @git_net_url_parse(%struct.TYPE_11__* %8, i8* %28)
  store i32 %29, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  br label %44

42:                                               ; preds = %33
  %43 = load i8*, i8** @GIT_DEFAULT_PORT, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i8* [ %41, %39 ], [ %43, %42 ]
  store i8* %45, i8** %11, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @cmd_uploadpack, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32**, i32*** %7, align 8
  %52 = call i32 @git_proto_stream_alloc(%struct.TYPE_9__* %46, i8* %47, i32 %48, i8* %49, i8* %50, i32** %51)
  store i32 %52, i32* %13, align 4
  %53 = call i32 @git_net_url_dispose(%struct.TYPE_11__* %8)
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32**, i32*** %7, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @git_proto_stream_free(i32* %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %79

61:                                               ; preds = %44
  %62 = load i32**, i32*** %7, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %12, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @git_stream_connect(i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32**, i32*** %7, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @git_proto_stream_free(i32* %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %61
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %70, %56, %31
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git__prefixcmp(i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @git_net_url_parse(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_proto_stream_alloc(%struct.TYPE_9__*, i8*, i32, i8*, i8*, i32**) #2

declare dso_local i32 @git_net_url_dispose(%struct.TYPE_11__*) #2

declare dso_local i32 @git_proto_stream_free(i32*) #2

declare dso_local i32 @git_stream_connect(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
