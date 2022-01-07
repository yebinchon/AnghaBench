; ModuleID = '/home/carl/AnghaBench/git/extr_tmp-objdir.c_tmp_objdir_create.c'
source_filename = "/home/carl/AnghaBench/git/extr_tmp-objdir.c_tmp_objdir_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp_objdir = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@tmp_objdir_create.installed_handlers = internal global i32 0, align 4
@the_tmp_objdir = common dso_local global %struct.tmp_objdir* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"only one tmp_objdir can be used at a time\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s/incoming-XXXXXX\00", align 1
@remove_tmp_objdir = common dso_local global i32 0, align 4
@remove_tmp_objdir_on_signal = common dso_local global i32 0, align 4
@ALTERNATE_DB_ENVIRONMENT = common dso_local global i32 0, align 4
@DB_ENVIRONMENT = common dso_local global i32 0, align 4
@GIT_QUARANTINE_ENVIRONMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tmp_objdir* @tmp_objdir_create() #0 {
  %1 = alloca %struct.tmp_objdir*, align 8
  %2 = alloca %struct.tmp_objdir*, align 8
  %3 = load %struct.tmp_objdir*, %struct.tmp_objdir** @the_tmp_objdir, align 8
  %4 = icmp ne %struct.tmp_objdir* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = call %struct.tmp_objdir* @xmalloc(i32 8)
  store %struct.tmp_objdir* %8, %struct.tmp_objdir** %2, align 8
  %9 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %10 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %9, i32 0, i32 0
  %11 = call i32 @strbuf_init(%struct.TYPE_4__* %10, i32 0)
  %12 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %13 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %12, i32 0, i32 1
  %14 = call i32 @argv_array_init(i32* %13)
  %15 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %16 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %15, i32 0, i32 0
  %17 = call i32 (...) @get_object_directory()
  %18 = call i32 @strbuf_addf(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %20 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %19, i32 0, i32 0
  %21 = call i32 @strbuf_grow(%struct.TYPE_4__* %20, i32 1024)
  %22 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %23 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mkdtemp(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %7
  %29 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %30 = call i32 @tmp_objdir_free(%struct.tmp_objdir* %29)
  store %struct.tmp_objdir* null, %struct.tmp_objdir** %1, align 8
  br label %78

31:                                               ; preds = %7
  %32 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  store %struct.tmp_objdir* %32, %struct.tmp_objdir** @the_tmp_objdir, align 8
  %33 = load i32, i32* @tmp_objdir_create.installed_handlers, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @remove_tmp_objdir, align 4
  %37 = call i32 @atexit(i32 %36)
  %38 = load i32, i32* @remove_tmp_objdir_on_signal, align 4
  %39 = call i32 @sigchain_push_common(i32 %38)
  %40 = load i32, i32* @tmp_objdir_create.installed_handlers, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @tmp_objdir_create.installed_handlers, align 4
  br label %42

42:                                               ; preds = %35, %31
  %43 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %44 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @setup_tmp_objdir(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %51 = call i32 @tmp_objdir_destroy(%struct.tmp_objdir* %50)
  store %struct.tmp_objdir* null, %struct.tmp_objdir** %1, align 8
  br label %78

52:                                               ; preds = %42
  %53 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %54 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %53, i32 0, i32 1
  %55 = load i32, i32* @ALTERNATE_DB_ENVIRONMENT, align 4
  %56 = call i32 (...) @get_object_directory()
  %57 = call i32 @absolute_path(i32 %56)
  %58 = call i32 @env_append(i32* %54, i32 %55, i32 %57)
  %59 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %60 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %59, i32 0, i32 1
  %61 = load i32, i32* @DB_ENVIRONMENT, align 4
  %62 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %63 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @absolute_path(i32 %65)
  %67 = call i32 @env_replace(i32* %60, i32 %61, i32 %66)
  %68 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %69 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %68, i32 0, i32 1
  %70 = load i32, i32* @GIT_QUARANTINE_ENVIRONMENT, align 4
  %71 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  %72 = getelementptr inbounds %struct.tmp_objdir, %struct.tmp_objdir* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @absolute_path(i32 %74)
  %76 = call i32 @env_replace(i32* %69, i32 %70, i32 %75)
  %77 = load %struct.tmp_objdir*, %struct.tmp_objdir** %2, align 8
  store %struct.tmp_objdir* %77, %struct.tmp_objdir** %1, align 8
  br label %78

78:                                               ; preds = %52, %49, %28
  %79 = load %struct.tmp_objdir*, %struct.tmp_objdir** %1, align 8
  ret %struct.tmp_objdir* %79
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.tmp_objdir* @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @argv_array_init(i32*) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @get_object_directory(...) #1

declare dso_local i32 @strbuf_grow(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mkdtemp(i32) #1

declare dso_local i32 @tmp_objdir_free(%struct.tmp_objdir*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @sigchain_push_common(i32) #1

declare dso_local i64 @setup_tmp_objdir(i32) #1

declare dso_local i32 @tmp_objdir_destroy(%struct.tmp_objdir*) #1

declare dso_local i32 @env_append(i32*, i32, i32) #1

declare dso_local i32 @absolute_path(i32) #1

declare dso_local i32 @env_replace(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
