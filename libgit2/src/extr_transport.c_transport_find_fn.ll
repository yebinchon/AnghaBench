; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_transport.c_transport_find_fn.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_transport.c_transport_find_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ssh://\00", align 1
@local_transport_definition = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**)* @transport_find_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transport_find_fn(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.TYPE_4__* @transport_find_by_url(i8* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strrchr(i8* %14, i8 signext 58)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call %struct.TYPE_4__* @transport_find_by_url(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  br label %19

19:                                               ; preds = %17, %13, %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @git_path_exists(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @git_path_isdir(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.TYPE_4__* @local_transport_definition, %struct.TYPE_4__** %8, align 8
  br label %31

31:                                               ; preds = %30, %26, %22, %19
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %7, align 8
  store i8* %43, i8** %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %36, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_4__* @transport_find_by_url(i8*) #1

declare dso_local i64 @strrchr(i8*, i8 signext) #1

declare dso_local i64 @git_path_exists(i8*) #1

declare dso_local i64 @git_path_isdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
