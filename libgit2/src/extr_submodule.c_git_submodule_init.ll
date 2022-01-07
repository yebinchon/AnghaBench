; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no URL configured for submodule '%s'\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"submodule.%s.url\00", align 1
@GIT_SUBMODULE_UPDATE_CHECKOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"submodule.%s.update\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_init(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = bitcast %struct.TYPE_9__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.TYPE_9__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %3, align 4
  br label %95

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @git_repository_config(i32** %10, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %95

31:                                               ; preds = %23
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @git_submodule_resolve_url(%struct.TYPE_9__* %9, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @git_buf_printf(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @git_config__update_entry(i32* %47, i8* %49, i8* %51, i32 %54, i32 0)
  store i32 %55, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46, %40, %31
  br label %89

58:                                               ; preds = %46
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @GIT_SUBMODULE_UPDATE_CHECKOUT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @git_submodule_update_to_str(i64 %68)
  br label %70

70:                                               ; preds = %65, %64
  %71 = phi i8* [ null, %64 ], [ %69, %65 ]
  store i8* %71, i8** %7, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @git_buf_printf(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %70
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @git_config__update_entry(i32* %78, i8* %80, i8* %81, i32 %84, i32 0)
  store i32 %85, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77, %70
  br label %89

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %87, %57
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @git_config_free(i32* %90)
  %92 = call i32 @git_buf_dispose(%struct.TYPE_9__* %8)
  %93 = call i32 @git_buf_dispose(%struct.TYPE_9__* %9)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %29, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_submodule_resolve_url(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i32 @git_config__update_entry(i32*, i8*, i8*, i32, i32) #2

declare dso_local i8* @git_submodule_update_to_str(i64) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
