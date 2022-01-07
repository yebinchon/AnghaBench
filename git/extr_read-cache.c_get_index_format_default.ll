; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_get_index_format_default.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_get_index_format_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"GIT_INDEX_VERSION\00", align 1
@INDEX_FORMAT_DEFAULT = common dso_local global i32 0, align 4
@INDEX_FORMAT_LB = common dso_local global i32 0, align 4
@INDEX_FORMAT_UB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"index.version set, but the value is invalid.\0AUsing version %i\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"GIT_INDEX_VERSION set, but the value is invalid.\0AUsing version %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*)* @get_index_format_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_index_format_default(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i32, i32* @INDEX_FORMAT_DEFAULT, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %1
  %12 = load %struct.repository*, %struct.repository** %3, align 8
  %13 = call i32 @prepare_repo_settings(%struct.repository* %12)
  %14 = load %struct.repository*, %struct.repository** %3, align 8
  %15 = getelementptr inbounds %struct.repository, %struct.repository* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp uge i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.repository*, %struct.repository** %3, align 8
  %21 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %11
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @INDEX_FORMAT_LB, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @INDEX_FORMAT_UB, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %24
  %33 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @INDEX_FORMAT_DEFAULT, align 4
  %35 = call i32 @warning(i32 %33, i32 %34)
  %36 = load i32, i32* @INDEX_FORMAT_DEFAULT, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %1
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strtoul(i8* %40, i8** %5, i32 10)
  store i32 %41, i32* %6, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @INDEX_FORMAT_LB, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @INDEX_FORMAT_UB, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %46, %39
  %55 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @INDEX_FORMAT_DEFAULT, align 4
  %57 = call i32 @warning(i32 %55, i32 %56)
  %58 = load i32, i32* @INDEX_FORMAT_DEFAULT, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %37, %32
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @prepare_repo_settings(%struct.repository*) #1

declare dso_local i32 @warning(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
