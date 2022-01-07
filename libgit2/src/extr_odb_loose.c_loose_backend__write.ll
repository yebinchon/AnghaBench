; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__write.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@MAX_HEADER_LEN = common dso_local global i32 0, align 4
@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tmp_object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64, i32)* @loose_backend__write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_backend__write(i32* %0, i32* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %19 = load i32, i32* @MAX_HEADER_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %17, align 8
  %26 = trunc i64 %20 to i32
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @git_odb__format_object_header(i64* %15, i8* %22, i32 %26, i64 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %70

32:                                               ; preds = %5
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @git_buf_joinpath(%struct.TYPE_12__* %12, i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %42 = call i32 @filebuf_flags(%struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @git_filebuf_open(i32* %16, i32 %40, i32 %42, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38, %32
  store i32 -1, i32* %11, align 4
  br label %70

49:                                               ; preds = %38
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @git_filebuf_write(i32* %16, i8* %22, i64 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @git_filebuf_write(i32* %16, i8* %52, i64 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @object_file_name(%struct.TYPE_12__* %12, %struct.TYPE_11__* %55, i32* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %49
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %61 = call i64 @object_mkdir(%struct.TYPE_12__* %12, %struct.TYPE_11__* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @git_filebuf_commit_at(i32* %16, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %59, %49
  store i32 -1, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %48, %31
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @git_filebuf_cleanup(i32* %16)
  br label %75

75:                                               ; preds = %73, %70
  %76 = call i32 @git_buf_dispose(%struct.TYPE_12__* %12)
  %77 = load i32, i32* %11, align 4
  %78 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @git_odb__format_object_header(i64*, i8*, i32, i64, i32) #3

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_12__*, i32, i8*) #3

declare dso_local i64 @git_filebuf_open(i32*, i32, i32, i32) #3

declare dso_local i32 @filebuf_flags(%struct.TYPE_11__*) #3

declare dso_local i32 @git_filebuf_write(i32*, i8*, i64) #3

declare dso_local i64 @object_file_name(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #3

declare dso_local i64 @object_mkdir(%struct.TYPE_12__*, %struct.TYPE_11__*) #3

declare dso_local i64 @git_filebuf_commit_at(i32*, i32) #3

declare dso_local i32 @git_filebuf_cleanup(i32*) #3

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
