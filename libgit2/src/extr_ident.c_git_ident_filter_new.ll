; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_ident.c_git_ident_filter_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_ident.c_git_ident_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32 }

@GIT_FILTER_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"+ident\00", align 1
@git_filter_free = common dso_local global i32 0, align 4
@ident_apply = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @git_ident_filter_new() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call %struct.TYPE_4__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = icmp eq %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %1, align 8
  br label %20

7:                                                ; preds = %0
  %8 = load i32, i32* @GIT_FILTER_VERSION, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i32, i32* @git_filter_free, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ident_apply, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %1, align 8
  br label %20

20:                                               ; preds = %7, %6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %21
}

declare dso_local %struct.TYPE_4__* @git__calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
