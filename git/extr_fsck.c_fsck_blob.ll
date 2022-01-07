; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blob = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fsck_options = type { i32 }
%struct.fsck_gitmodules_data = type { i32, %struct.fsck_options*, %struct.TYPE_3__* }
%struct.config_options = type { i32, i32 }

@gitmodules_found = common dso_local global i32 0, align 4
@gitmodules_done = common dso_local global i32 0, align 4
@FSCK_MSG_GITMODULES_LARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c".gitmodules too large to parse\00", align 1
@CONFIG_ERROR_SILENT = common dso_local global i32 0, align 4
@fsck_gitmodules_fn = common dso_local global i32 0, align 4
@CONFIG_ORIGIN_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@FSCK_MSG_GITMODULES_PARSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"could not parse gitmodules blob\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blob*, i8*, i64, %struct.fsck_options*)* @fsck_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_blob(%struct.blob* %0, i8* %1, i64 %2, %struct.fsck_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blob*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fsck_options*, align 8
  %10 = alloca %struct.fsck_gitmodules_data, align 8
  %11 = alloca %struct.config_options, align 4
  store %struct.blob* %0, %struct.blob** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.fsck_options* %3, %struct.fsck_options** %9, align 8
  %12 = bitcast %struct.config_options* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.blob*, %struct.blob** %6, align 8
  %14 = getelementptr inbounds %struct.blob, %struct.blob* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @oidset_contains(i32* @gitmodules_found, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %66

19:                                               ; preds = %4
  %20 = load %struct.blob*, %struct.blob** %6, align 8
  %21 = getelementptr inbounds %struct.blob, %struct.blob* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @oidset_insert(i32* @gitmodules_done, i32* %22)
  %24 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %25 = load %struct.blob*, %struct.blob** %6, align 8
  %26 = getelementptr inbounds %struct.blob, %struct.blob* %25, i32 0, i32 0
  %27 = call i64 @object_on_skiplist(%struct.fsck_options* %24, %struct.TYPE_3__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %66

30:                                               ; preds = %19
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %35 = load %struct.blob*, %struct.blob** %6, align 8
  %36 = getelementptr inbounds %struct.blob, %struct.blob* %35, i32 0, i32 0
  %37 = load i32, i32* @FSCK_MSG_GITMODULES_LARGE, align 4
  %38 = call i32 @report(%struct.fsck_options* %34, %struct.TYPE_3__* %36, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  br label %66

39:                                               ; preds = %30
  %40 = load %struct.blob*, %struct.blob** %6, align 8
  %41 = getelementptr inbounds %struct.blob, %struct.blob* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %10, i32 0, i32 2
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %42, align 8
  %43 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %44 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %10, i32 0, i32 1
  store %struct.fsck_options* %43, %struct.fsck_options** %44, align 8
  %45 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %10, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32, i32* @CONFIG_ERROR_SILENT, align 4
  %47 = getelementptr inbounds %struct.config_options, %struct.config_options* %11, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @fsck_gitmodules_fn, align 4
  %49 = load i32, i32* @CONFIG_ORIGIN_BLOB, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @git_config_from_mem(i32 %48, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %50, i64 %51, %struct.fsck_gitmodules_data* %10, %struct.config_options* %11)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load %struct.fsck_options*, %struct.fsck_options** %9, align 8
  %56 = load %struct.blob*, %struct.blob** %6, align 8
  %57 = getelementptr inbounds %struct.blob, %struct.blob* %56, i32 0, i32 0
  %58 = load i32, i32* @FSCK_MSG_GITMODULES_PARSE, align 4
  %59 = call i32 @report(%struct.fsck_options* %55, %struct.TYPE_3__* %57, i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %54, %39
  %64 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %33, %29, %18
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @oidset_contains(i32*, i32*) #2

declare dso_local i32 @oidset_insert(i32*, i32*) #2

declare dso_local i64 @object_on_skiplist(%struct.fsck_options*, %struct.TYPE_3__*) #2

declare dso_local i32 @report(%struct.fsck_options*, %struct.TYPE_3__*, i32, i8*) #2

declare dso_local i64 @git_config_from_mem(i32, i32, i8*, i8*, i64, %struct.fsck_gitmodules_data*, %struct.config_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
