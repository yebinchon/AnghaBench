; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_get_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_name_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@GIT_REFS_TAGS_DIR = common dso_local global i32 0, align 4
@GIT_DESCRIBE_ALL = common dso_local global i64 0, align 8
@GIT_REFS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.get_name_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.get_name_data*
  store %struct.get_name_data* %15, %struct.get_name_data** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %18 = call i32 @git__prefixcmp(i8* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.get_name_data*, %struct.get_name_data** %6, align 8
  %23 = getelementptr inbounds %struct.get_name_data, %struct.get_name_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GIT_DESCRIBE_ALL, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %105

36:                                               ; preds = %32, %2
  %37 = load %struct.get_name_data*, %struct.get_name_data** %6, align 8
  %38 = getelementptr inbounds %struct.get_name_data, %struct.get_name_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load %struct.get_name_data*, %struct.get_name_data** %6, align 8
  %48 = getelementptr inbounds %struct.get_name_data, %struct.get_name_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %54 = call i32 @strlen(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = call i64 @wildmatch(i64 %51, i8* %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46, %43
  store i32 0, i32* %3, align 4
  br label %105

60:                                               ; preds = %46, %36
  %61 = load %struct.get_name_data*, %struct.get_name_data** %6, align 8
  %62 = getelementptr inbounds %struct.get_name_data, %struct.get_name_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @retrieve_peeled_tag_or_object_oid(i32* %10, i32* %11, i32 %63, i8* %64)
  store i32 %65, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %3, align 4
  br label %105

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 2, i32* %12, align 4
  br label %80

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %12, align 4
  br label %79

78:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %73
  %81 = load %struct.get_name_data*, %struct.get_name_data** %6, align 8
  %82 = getelementptr inbounds %struct.get_name_data, %struct.get_name_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.get_name_data*, %struct.get_name_data** %6, align 8
  %85 = getelementptr inbounds %struct.get_name_data, %struct.get_name_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* @GIT_REFS_DIR, align 4
  %92 = call i32 @strlen(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  br label %101

95:                                               ; preds = %80
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %98 = call i32 @strlen(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  br label %101

101:                                              ; preds = %95, %89
  %102 = phi i8* [ %94, %89 ], [ %100, %95 ]
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @add_to_known_names(i32 %83, i32 %86, i8* %102, i32* %10, i32 %103, i32* %11)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %67, %59, %35
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @git__prefixcmp(i8*, i32) #1

declare dso_local i64 @wildmatch(i64, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @retrieve_peeled_tag_or_object_oid(i32*, i32*, i32, i8*) #1

declare dso_local i32 @add_to_known_names(i32, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
