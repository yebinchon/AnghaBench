; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_open_default.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_open_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_CONFIG_LEVEL_GLOBAL = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_XDG = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_SYSTEM = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_PROGRAMDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_open_default(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  store i32** %0, i32*** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %8 = call i32 @git_config_new(i32** %5)
  store i32 %8, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %71

12:                                               ; preds = %1
  %13 = call i32 @git_config_find_global(%struct.TYPE_9__* %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 @git_config__global_location(%struct.TYPE_9__* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GIT_CONFIG_LEVEL_GLOBAL, align 4
  %23 = call i32 @git_config_add_file_ondisk(i32* %19, i32 %21, i32 %22, i32* null, i32 0)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = call i32 @git_config_find_xdg(%struct.TYPE_9__* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GIT_CONFIG_LEVEL_XDG, align 4
  %35 = call i32 @git_config_add_file_ondisk(i32* %31, i32 %33, i32 %34, i32* null, i32 0)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %27, %24
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = call i32 @git_config_find_system(%struct.TYPE_9__* %6)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GIT_CONFIG_LEVEL_SYSTEM, align 4
  %47 = call i32 @git_config_add_file_ondisk(i32* %43, i32 %45, i32 %46, i32* null, i32 0)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %39, %36
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = call i32 @git_config_find_programdata(%struct.TYPE_9__* %6)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GIT_CONFIG_LEVEL_PROGRAMDATA, align 4
  %59 = call i32 @git_config_add_file_ondisk(i32* %55, i32 %57, i32 %58, i32* null, i32 0)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %51, %48
  %61 = call i32 @git_buf_dispose(%struct.TYPE_9__* %6)
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @git_config_free(i32* %65)
  store i32* null, i32** %5, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32*, i32** %5, align 8
  %69 = load i32**, i32*** %3, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_config_new(i32**) #2

declare dso_local i32 @git_config_find_global(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config__global_location(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config_add_file_ondisk(i32*, i32, i32, i32*, i32) #2

declare dso_local i32 @git_config_find_xdg(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config_find_system(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config_find_programdata(%struct.TYPE_9__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
