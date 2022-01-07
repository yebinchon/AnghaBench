; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_gitmodules_fetch_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_gitmodules_fetch_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_config = type { i32*, i32* }

@.str = private unnamed_addr constant [20 x i8] c"submodule.fetchjobs\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"fetch.recursesubmodules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @gitmodules_fetch_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gitmodules_fetch_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fetch_config*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.fetch_config*
  store %struct.fetch_config* %10, %struct.fetch_config** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @parse_submodule_fetchjobs(i8* %15, i8* %16)
  %18 = load %struct.fetch_config*, %struct.fetch_config** %8, align 8
  %19 = getelementptr inbounds %struct.fetch_config, %struct.fetch_config* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32 %17, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @parse_fetch_recurse_submodules_arg(i8* %26, i8* %27)
  %29 = load %struct.fetch_config*, %struct.fetch_config** %8, align 8
  %30 = getelementptr inbounds %struct.fetch_config, %struct.fetch_config* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32 %28, i32* %31, align 4
  store i32 0, i32* %4, align 4
  br label %34

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %25, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_submodule_fetchjobs(i8*, i8*) #1

declare dso_local i32 @parse_fetch_recurse_submodules_arg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
