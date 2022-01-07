; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff.c_file_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff.c_file_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.patch_id_args = type { i32, i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"diff--gita/%sb/%s---a/%s+++b/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, float, i8*)* @file_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_cb(%struct.TYPE_12__* %0, float %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.patch_id_args*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store float %1, float* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.patch_id_args*
  store %struct.patch_id_args* %11, %struct.patch_id_args** %7, align 8
  %12 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %13 = load float, float* %5, align 4
  %14 = call i32 @GIT_UNUSED(float %13)
  %15 = load %struct.patch_id_args*, %struct.patch_id_args** %7, align 8
  %16 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load %struct.patch_id_args*, %struct.patch_id_args** %7, align 8
  %21 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %20, i32 0, i32 2
  %22 = load %struct.patch_id_args*, %struct.patch_id_args** %7, align 8
  %23 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %22, i32 0, i32 0
  %24 = call i32 @flush_hunk(i32* %21, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %61

27:                                               ; preds = %19, %3
  %28 = load %struct.patch_id_args*, %struct.patch_id_args** %7, align 8
  %29 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @git_buf_printf(%struct.TYPE_13__* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %37, i32 %41, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  br label %61

49:                                               ; preds = %27
  %50 = call i32 @strip_spaces(%struct.TYPE_13__* %8)
  %51 = load %struct.patch_id_args*, %struct.patch_id_args** %7, align 8
  %52 = getelementptr inbounds %struct.patch_id_args, %struct.patch_id_args* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @git_hash_update(i32* %52, i32 %54, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %59, %48, %26
  %62 = call i32 @git_buf_dispose(%struct.TYPE_13__* %8)
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_UNUSED(float) #2

declare dso_local i32 @flush_hunk(i32*, i32*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_13__*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @strip_spaces(%struct.TYPE_13__*) #2

declare dso_local i32 @git_hash_update(i32*, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
