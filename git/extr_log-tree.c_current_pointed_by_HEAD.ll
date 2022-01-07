; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_current_pointed_by_HEAD.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_current_pointed_by_HEAD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_decoration = type { i64, i32, %struct.name_decoration* }

@DECORATION_REF_HEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REF_ISSYMREF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@DECORATION_REF_LOCAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.name_decoration* (%struct.name_decoration*)* @current_pointed_by_HEAD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.name_decoration* @current_pointed_by_HEAD(%struct.name_decoration* %0) #0 {
  %2 = alloca %struct.name_decoration*, align 8
  %3 = alloca %struct.name_decoration*, align 8
  %4 = alloca %struct.name_decoration*, align 8
  %5 = alloca %struct.name_decoration*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.name_decoration* %0, %struct.name_decoration** %3, align 8
  store %struct.name_decoration* null, %struct.name_decoration** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.name_decoration*, %struct.name_decoration** %3, align 8
  store %struct.name_decoration* %8, %struct.name_decoration** %4, align 8
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %11 = icmp ne %struct.name_decoration* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %14 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DECORATION_REF_HEAD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  store %struct.name_decoration* %19, %struct.name_decoration** %5, align 8
  br label %25

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %23 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %22, i32 0, i32 2
  %24 = load %struct.name_decoration*, %struct.name_decoration** %23, align 8
  store %struct.name_decoration* %24, %struct.name_decoration** %4, align 8
  br label %9

25:                                               ; preds = %18, %9
  %26 = load %struct.name_decoration*, %struct.name_decoration** %5, align 8
  %27 = icmp ne %struct.name_decoration* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.name_decoration* null, %struct.name_decoration** %2, align 8
  br label %70

29:                                               ; preds = %25
  %30 = call i8* @resolve_ref_unsafe(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %7)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @REF_ISSYMREF, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %29
  store %struct.name_decoration* null, %struct.name_decoration** %2, align 8
  br label %70

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @starts_with(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store %struct.name_decoration* null, %struct.name_decoration** %2, align 8
  br label %70

44:                                               ; preds = %39
  %45 = load %struct.name_decoration*, %struct.name_decoration** %3, align 8
  store %struct.name_decoration* %45, %struct.name_decoration** %4, align 8
  br label %46

46:                                               ; preds = %65, %44
  %47 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %48 = icmp ne %struct.name_decoration* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %51 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DECORATION_REF_LOCAL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %58 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strcmp(i8* %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  store %struct.name_decoration* %63, %struct.name_decoration** %2, align 8
  br label %70

64:                                               ; preds = %55, %49
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.name_decoration*, %struct.name_decoration** %4, align 8
  %67 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %66, i32 0, i32 2
  %68 = load %struct.name_decoration*, %struct.name_decoration** %67, align 8
  store %struct.name_decoration* %68, %struct.name_decoration** %4, align 8
  br label %46

69:                                               ; preds = %46
  store %struct.name_decoration* null, %struct.name_decoration** %2, align 8
  br label %70

70:                                               ; preds = %69, %62, %43, %38, %28
  %71 = load %struct.name_decoration*, %struct.name_decoration** %2, align 8
  ret %struct.name_decoration* %71
}

declare dso_local i8* @resolve_ref_unsafe(i8*, i32, i32*, i32*) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
