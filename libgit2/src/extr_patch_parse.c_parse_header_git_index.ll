; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_parse_header_git_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_parse.c_parse_header_git_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_16__*)* @parse_header_git_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_header_git_index(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = call i64 @parse_header_oid(i32* %13, i32* %19, %struct.TYPE_16__* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = call i64 @git_parse_advance_expected_str(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = call i64 @parse_header_oid(i32* %34, i32* %40, %struct.TYPE_16__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28, %23, %2
  store i32 -1, i32* %3, align 4
  br label %98

45:                                               ; preds = %28
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = call i64 @git_parse_peek(i8* %6, i32* %47, i32 0)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %45
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %97

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = call i32 @git_parse_advance_chars(i32* %56, i32 1)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = call i64 @parse_header_mode(i8** %7, %struct.TYPE_16__* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %98

62:                                               ; preds = %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %62
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i8* %72, i8** %78, align 8
  br label %79

79:                                               ; preds = %71, %62
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %79
  %89 = load i8*, i8** %7, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i8* %89, i8** %95, align 8
  br label %96

96:                                               ; preds = %88, %79
  br label %97

97:                                               ; preds = %96, %50, %45
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %61, %44
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @parse_header_oid(i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @git_parse_advance_expected_str(i32*, i8*) #1

declare dso_local i64 @git_parse_peek(i8*, i32*, i32) #1

declare dso_local i32 @git_parse_advance_chars(i32*, i32) #1

declare dso_local i64 @parse_header_mode(i8**, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
