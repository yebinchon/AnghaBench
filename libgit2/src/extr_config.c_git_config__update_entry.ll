; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config__update_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config__update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config__update_entry(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @git_config__lookup_entry(%struct.TYPE_4__** %13, i32* %14, i8* %15, i32 0)
  store i32 %16, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %81

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %81

27:                                               ; preds = %23, %20
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %81

34:                                               ; preds = %30, %27
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @strcmp(i64 %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %81

53:                                               ; preds = %45, %40, %37, %34
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %58 = icmp ne %struct.TYPE_4__* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %56
  store i32 0, i32* %6, align 4
  br label %81

65:                                               ; preds = %59, %53
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @git_config_delete_entry(i32* %69, i8* %70)
  store i32 %71, i32* %12, align 4
  br label %77

72:                                               ; preds = %65
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @git_config_set_string(i32* %73, i8* %74, i8* %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %79 = call i32 @git_config_entry_free(%struct.TYPE_4__* %78)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %64, %52, %33, %26, %18
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @git_config__lookup_entry(%struct.TYPE_4__**, i32*, i8*, i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @git_config_delete_entry(i32*, i8*) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_entry_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
