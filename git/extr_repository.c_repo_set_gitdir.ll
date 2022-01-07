; ModuleID = '/home/carl/AnghaBench/git/extr_repository.c_repo_set_gitdir.c'
source_filename = "/home/carl/AnghaBench/git/extr_repository.c_repo_set_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i8*, i8*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.set_gitdir_args = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"info/grafts\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_set_gitdir(%struct.repository* %0, i8* %1, %struct.set_gitdir_args* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.set_gitdir_args*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.set_gitdir_args* %2, %struct.set_gitdir_args** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @read_gitfile(i8* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.repository*, %struct.repository** %4, align 8
  %12 = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i8* [ %17, %16 ], [ %19, %18 ]
  %22 = call i8* @xstrdup(i8* %21)
  %23 = load %struct.repository*, %struct.repository** %4, align 8
  %24 = getelementptr inbounds %struct.repository, %struct.repository* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load %struct.repository*, %struct.repository** %4, align 8
  %28 = load %struct.set_gitdir_args*, %struct.set_gitdir_args** %6, align 8
  %29 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @repo_set_commondir(%struct.repository* %27, i32 %30)
  %32 = load %struct.repository*, %struct.repository** %4, align 8
  %33 = getelementptr inbounds %struct.repository, %struct.repository* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %20
  %39 = call %struct.TYPE_4__* @xcalloc(i32 1, i32 8)
  %40 = load %struct.repository*, %struct.repository** %4, align 8
  %41 = getelementptr inbounds %struct.repository, %struct.repository* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.repository*, %struct.repository** %4, align 8
  %45 = getelementptr inbounds %struct.repository, %struct.repository* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.repository*, %struct.repository** %4, align 8
  %51 = getelementptr inbounds %struct.repository, %struct.repository* %50, i32 0, i32 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32* %49, i32** %53, align 8
  br label %54

54:                                               ; preds = %38, %20
  %55 = load %struct.repository*, %struct.repository** %4, align 8
  %56 = getelementptr inbounds %struct.repository, %struct.repository* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.set_gitdir_args*, %struct.set_gitdir_args** %6, align 8
  %62 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.repository*, %struct.repository** %4, align 8
  %65 = getelementptr inbounds %struct.repository, %struct.repository* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @expand_base_dir(i32* %60, i32 %63, i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.repository*, %struct.repository** %4, align 8
  %69 = getelementptr inbounds %struct.repository, %struct.repository* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load %struct.set_gitdir_args*, %struct.set_gitdir_args** %6, align 8
  %75 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @xstrdup_or_null(i32 %76)
  %78 = load %struct.repository*, %struct.repository** %4, align 8
  %79 = getelementptr inbounds %struct.repository, %struct.repository* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i8* %77, i8** %81, align 8
  %82 = load %struct.repository*, %struct.repository** %4, align 8
  %83 = getelementptr inbounds %struct.repository, %struct.repository* %82, i32 0, i32 3
  %84 = load %struct.set_gitdir_args*, %struct.set_gitdir_args** %6, align 8
  %85 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.repository*, %struct.repository** %4, align 8
  %88 = getelementptr inbounds %struct.repository, %struct.repository* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @expand_base_dir(i32* %83, i32 %86, i8* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.repository*, %struct.repository** %4, align 8
  %92 = getelementptr inbounds %struct.repository, %struct.repository* %91, i32 0, i32 2
  %93 = load %struct.set_gitdir_args*, %struct.set_gitdir_args** %6, align 8
  %94 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.repository*, %struct.repository** %4, align 8
  %97 = getelementptr inbounds %struct.repository, %struct.repository* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @expand_base_dir(i32* %92, i32 %95, i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i8* @read_gitfile(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @repo_set_commondir(%struct.repository*, i32) #1

declare dso_local %struct.TYPE_4__* @xcalloc(i32, i32) #1

declare dso_local i32 @expand_base_dir(i32*, i32, i8*, i8*) #1

declare dso_local i8* @xstrdup_or_null(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
