; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_backend_foreach_match.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_backend_foreach_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_12__**, %struct.TYPE_14__*)* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_13__**, %struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_backend_foreach_match(%struct.TYPE_14__* %0, i8* %1, i32 (%struct.TYPE_13__*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (%struct.TYPE_13__*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (%struct.TYPE_13__*, i8*)* %2, i32 (%struct.TYPE_13__*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %8, align 8
  %18 = icmp ne i32 (%struct.TYPE_13__*, i8*)* %17, null
  br label %19

19:                                               ; preds = %16, %4
  %20 = phi i1 [ false, %4 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @git_regexp_compile(i32* %12, i8* %26, i32 0)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %79

30:                                               ; preds = %25, %19
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_12__**, %struct.TYPE_14__*)*, i32 (%struct.TYPE_12__**, %struct.TYPE_14__*)** %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = call i32 %33(%struct.TYPE_12__** %11, %struct.TYPE_14__* %34)
  store i32 %35, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %11, align 8
  store i32 -1, i32* %5, align 4
  br label %79

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %66, %56, %38
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64 (%struct.TYPE_13__**, %struct.TYPE_12__*)*, i64 (%struct.TYPE_13__**, %struct.TYPE_12__*)** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = call i64 %42(%struct.TYPE_13__** %10, %struct.TYPE_12__* %43)
  %45 = icmp slt i64 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %67

47:                                               ; preds = %39
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @git_regexp_match(i32* %12, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %39

57:                                               ; preds = %50, %47
  %58 = load i32 (%struct.TYPE_13__*, i8*)*, i32 (%struct.TYPE_13__*, i8*)** %8, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 %58(%struct.TYPE_13__* %59, i8* %60)
  store i32 %61, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @git_error_set_after_callback(i32 %64)
  br label %67

66:                                               ; preds = %57
  br label %39

67:                                               ; preds = %63, %39
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @git_regexp_dispose(i32* %12)
  br label %72

72:                                               ; preds = %70, %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %77 = call i32 %75(%struct.TYPE_12__* %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %37, %29
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_regexp_compile(i32*, i8*, i32) #1

declare dso_local i64 @git_regexp_match(i32*, i32) #1

declare dso_local i32 @git_error_set_after_callback(i32) #1

declare dso_local i32 @git_regexp_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
