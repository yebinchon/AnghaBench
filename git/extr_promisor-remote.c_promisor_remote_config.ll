; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_promisor_remote_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promisor_remote = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"core.partialclonefilter\00", align 1
@core_partial_clone_filter_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"promisor\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"partialclonefilter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @promisor_remote_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @promisor_remote_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.promisor_remote*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @git_config_string(i32* @core_partial_clone_filter_default, i8* %18, i8* %19)
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @parse_config_key(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, i32* %9, i8** %10)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %77

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @git_config_bool(i8* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %77

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i8* @xmemdupz(i8* %37, i32 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call %struct.promisor_remote* @promisor_remote_lookup(i8* %40, i32* null)
  %42 = icmp ne %struct.promisor_remote* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = call %struct.promisor_remote* @promisor_remote_new(i8* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @free(i8* %47)
  store i32 0, i32* %4, align 4
  br label %77

49:                                               ; preds = %26
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i8* @xmemdupz(i8* %54, i32 %55)
  store i8* %56, i8** %13, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = call %struct.promisor_remote* @promisor_remote_lookup(i8* %57, i32* null)
  store %struct.promisor_remote* %58, %struct.promisor_remote** %12, align 8
  %59 = load %struct.promisor_remote*, %struct.promisor_remote** %12, align 8
  %60 = icmp ne %struct.promisor_remote* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** %13, align 8
  %63 = call %struct.promisor_remote* @promisor_remote_new(i8* %62)
  store %struct.promisor_remote* %63, %struct.promisor_remote** %12, align 8
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.promisor_remote*, %struct.promisor_remote** %12, align 8
  %68 = icmp ne %struct.promisor_remote* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %77

70:                                               ; preds = %64
  %71 = load %struct.promisor_remote*, %struct.promisor_remote** %12, align 8
  %72 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %71, i32 0, i32 0
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @git_config_string(i32* %72, i8* %73, i8* %74)
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %70, %69, %46, %35, %25, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local %struct.promisor_remote* @promisor_remote_lookup(i8*, i32*) #1

declare dso_local %struct.promisor_remote* @promisor_remote_new(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
