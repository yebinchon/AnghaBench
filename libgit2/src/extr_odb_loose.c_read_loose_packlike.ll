; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_loose_packlike.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_loose_packlike.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_ERROR_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to inflate loose object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @read_loose_packlike to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_loose_packlike(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %12 = bitcast %struct.TYPE_14__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @parse_header_packlike(%struct.TYPE_12__* %7, i64* %9, i8* %20, i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %71

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_object_typeisloose(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %25
  %35 = load i32, i32* @GIT_ERROR_ODB, align 4
  %36 = call i32 @git_error_set(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %71

37:                                               ; preds = %30
  %38 = load i64, i64* %9, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %10, i32 %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @git_buf_init(%struct.TYPE_14__* %5, i64 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %37
  store i32 -1, i32* %11, align 4
  br label %71

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @git_zstream_inflatebuf(%struct.TYPE_14__* %5, i8* %54, i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %71

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = call i32 @git_buf_detach(%struct.TYPE_14__* %5)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %59, %58, %52, %34, %24
  %72 = call i32 @git_buf_dispose(%struct.TYPE_14__* %5)
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @parse_header_packlike(%struct.TYPE_12__*, i64*, i8*, i64) #2

declare dso_local i32 @git_object_typeisloose(i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i32, i32) #2

declare dso_local i64 @git_buf_init(%struct.TYPE_14__*, i64) #2

declare dso_local i32 @git_zstream_inflatebuf(%struct.TYPE_14__*, i8*, i64) #2

declare dso_local i32 @git_buf_detach(%struct.TYPE_14__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
