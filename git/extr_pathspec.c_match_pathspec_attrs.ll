; ModuleID = '/home/carl/AnghaBench/git/extr_pathspec.c_match_pathspec_attrs.c'
source_filename = "/home/carl/AnghaBench/git/extr_pathspec.c_match_pathspec_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.pathspec_item = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@MATCH_SET = common dso_local global i32 0, align 4
@MATCH_UNSET = common dso_local global i32 0, align 4
@MATCH_UNSPECIFIED = common dso_local global i32 0, align 4
@MATCH_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_pathspec_attrs(%struct.index_state* %0, i8* %1, i32 %2, %struct.pathspec_item* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pathspec_item*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pathspec_item* %3, %struct.pathspec_item** %9, align 8
  store i8* null, i8** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @xmemdupz(i8* %22, i32 %23)
  store i8* %24, i8** %11, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.index_state*, %struct.index_state** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %29 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @git_check_attr(%struct.index_state* %26, i8* %27, %struct.TYPE_6__* %30)
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @free(i8* %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %112, %25
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %37 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %115

40:                                               ; preds = %34
  %41 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %42 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %12, align 8
  %51 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %52 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = call i64 @ATTR_TRUE(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %40
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @MATCH_SET, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %13, align 4
  br label %107

67:                                               ; preds = %40
  %68 = load i8*, i8** %12, align 8
  %69 = call i64 @ATTR_FALSE(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @MATCH_UNSET, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %13, align 4
  br label %106

76:                                               ; preds = %67
  %77 = load i8*, i8** %12, align 8
  %78 = call i64 @ATTR_UNSET(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @MATCH_UNSPECIFIED, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %13, align 4
  br label %105

85:                                               ; preds = %76
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @MATCH_VALUE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load %struct.pathspec_item*, %struct.pathspec_item** %9, align 8
  %91 = getelementptr inbounds %struct.pathspec_item, %struct.pathspec_item* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @strcmp(i32 %97, i8* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %89, %85
  %103 = phi i1 [ false, %85 ], [ %101, %89 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %102, %80
  br label %106

106:                                              ; preds = %105, %71
  br label %107

107:                                              ; preds = %106, %62
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  store i32 0, i32* %5, align 4
  br label %116

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %34

115:                                              ; preds = %34
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %110
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i32 @git_check_attr(%struct.index_state*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ATTR_TRUE(i8*) #1

declare dso_local i64 @ATTR_FALSE(i8*) #1

declare dso_local i64 @ATTR_UNSET(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
