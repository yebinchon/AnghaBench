; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_maybe_append_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_maybe_append_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }

@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@GIT_HEAD_FILE = common dso_local global i8* null, align 8
@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i8*)* @maybe_append_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_append_head(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %113

22:                                               ; preds = %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @git_reference_name_to_id(i32* %11, i32 %25, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 @memset(i32* %11, i32 0, i32 4)
  br label %33

33:                                               ; preds = %31, %22
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %38 = call i32 @git_reference_lookup(%struct.TYPE_14__** %13, i32 %36, i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %113

42:                                               ; preds = %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %44 = call i64 @git_reference_type(%struct.TYPE_14__* %43)
  %45 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %107

48:                                               ; preds = %42
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %53 = call i32 @git_reference_lookup(%struct.TYPE_14__** %12, i32 %51, i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %107

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %72, %56
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %59 = call i64 @git_reference_type(%struct.TYPE_14__* %58)
  %60 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %67 = call i8* @git_reference_symbolic_target(%struct.TYPE_14__* %66)
  %68 = call i32 @git_reference_lookup(%struct.TYPE_14__** %14, i32 %65, i8* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %76

72:                                               ; preds = %62
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = call i32 @git_reference_free(%struct.TYPE_14__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %12, align 8
  br label %57

76:                                               ; preds = %71, %57
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @GIT_ENOTFOUND, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = call i8* @git_reference_symbolic_target(%struct.TYPE_14__* %81)
  store i8* %82, i8** %15, align 8
  br label %91

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %107

87:                                               ; preds = %83
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %89 = call i8* @git_reference_name(%struct.TYPE_14__* %88)
  store i8* %89, i8** %15, align 8
  br label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %80
  %92 = load i8*, i8** %15, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @strcmp(i8* %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %107

99:                                               ; preds = %91
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = call i32 @git_reference_target(%struct.TYPE_14__* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @reflog_append(%struct.TYPE_13__* %100, %struct.TYPE_14__* %101, i32* %11, i32 %103, i32* %104, i8* %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %99, %98, %86, %55, %47
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = call i32 @git_reference_free(%struct.TYPE_14__* %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = call i32 @git_reference_free(%struct.TYPE_14__* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %107, %40, %21
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @git_reference_name_to_id(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_14__**, i32, i8*) #1

declare dso_local i64 @git_reference_type(%struct.TYPE_14__*) #1

declare dso_local i8* @git_reference_symbolic_target(%struct.TYPE_14__*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_14__*) #1

declare dso_local i8* @git_reference_name(%struct.TYPE_14__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @reflog_append(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
