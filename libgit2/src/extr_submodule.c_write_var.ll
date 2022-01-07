; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_write_var.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_write_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GITMODULES_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"submodule.%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*)* @write_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_var(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @GITMODULES_CREATE, align 4
  %16 = call i32* @open_gitmodules(i32* %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @git_buf_printf(%struct.TYPE_5__* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  store i32 %23, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %42

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @git_config_backend_set_string(i32* %30, i32 %32, i8* %33)
  store i32 %34, i32* %12, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @git_config_backend_delete(i32* %36, i32 %38)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %35, %29
  %41 = call i32 @git_buf_dispose(%struct.TYPE_5__* %10)
  br label %42

42:                                               ; preds = %40, %25
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @git_config_backend_free(i32* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @open_gitmodules(i32*, i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_5__*, i8*, i8*, i8*) #2

declare dso_local i32 @git_config_backend_set_string(i32*, i32, i8*) #2

declare dso_local i32 @git_config_backend_delete(i32*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_config_backend_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
