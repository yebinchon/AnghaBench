; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_format_decorations_extended.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_format_decorations_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit = type { i32 }
%struct.name_decoration = type { i64, %struct.name_decoration* }

@DIFF_COMMIT = common dso_local global i32 0, align 4
@DECORATION_NONE = common dso_local global i64 0, align 8
@DECORATION_REF_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"tag: \00", align 1
@DECORATION_REF_HEAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c" -> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_decorations_extended(%struct.strbuf* %0, %struct.commit* %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.name_decoration*, align 8
  %14 = alloca %struct.name_decoration*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %7, align 8
  store %struct.commit* %1, %struct.commit** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @DIFF_COMMIT, align 4
  %19 = call i8* @diff_get_color(i32 %17, i32 %18)
  store i8* %19, i8** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i64, i64* @DECORATION_NONE, align 8
  %22 = call i8* @decorate_get_color(i32 %20, i64 %21)
  store i8* %22, i8** %16, align 8
  %23 = load %struct.commit*, %struct.commit** %8, align 8
  %24 = getelementptr inbounds %struct.commit, %struct.commit* %23, i32 0, i32 0
  %25 = call %struct.name_decoration* @get_name_decoration(i32* %24)
  store %struct.name_decoration* %25, %struct.name_decoration** %13, align 8
  %26 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %27 = icmp ne %struct.name_decoration* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  br label %111

29:                                               ; preds = %6
  %30 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %31 = call %struct.name_decoration* @current_pointed_by_HEAD(%struct.name_decoration* %30)
  store %struct.name_decoration* %31, %struct.name_decoration** %14, align 8
  br label %32

32:                                               ; preds = %97, %29
  %33 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %34 = icmp ne %struct.name_decoration* %33, null
  br i1 %34, label %35, label %101

35:                                               ; preds = %32
  %36 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %37 = load %struct.name_decoration*, %struct.name_decoration** %14, align 8
  %38 = icmp ne %struct.name_decoration* %36, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %35
  %40 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @strbuf_addstr(%struct.strbuf* %40, i8* %41)
  %43 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %43, i8* %44)
  %46 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = call i32 @strbuf_addstr(%struct.strbuf* %46, i8* %47)
  %49 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %52 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @decorate_get_color(i32 %50, i64 %53)
  %55 = call i32 @strbuf_addstr(%struct.strbuf* %49, i8* %54)
  %56 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %57 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DECORATION_REF_TAG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %39
  %62 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %63 = call i32 @strbuf_addstr(%struct.strbuf* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %39
  %65 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %66 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %67 = call i32 @show_name(%struct.strbuf* %65, %struct.name_decoration* %66)
  %68 = load %struct.name_decoration*, %struct.name_decoration** %14, align 8
  %69 = icmp ne %struct.name_decoration* %68, null
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %72 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DECORATION_REF_HEAD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %78 = call i32 @strbuf_addstr(%struct.strbuf* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 @strbuf_addstr(%struct.strbuf* %79, i8* %80)
  %82 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.name_decoration*, %struct.name_decoration** %14, align 8
  %85 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @decorate_get_color(i32 %83, i64 %86)
  %88 = call i32 @strbuf_addstr(%struct.strbuf* %82, i8* %87)
  %89 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %90 = load %struct.name_decoration*, %struct.name_decoration** %14, align 8
  %91 = call i32 @show_name(%struct.strbuf* %89, %struct.name_decoration* %90)
  br label %92

92:                                               ; preds = %76, %70, %64
  %93 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 @strbuf_addstr(%struct.strbuf* %93, i8* %94)
  %96 = load i8*, i8** %11, align 8
  store i8* %96, i8** %10, align 8
  br label %97

97:                                               ; preds = %92, %35
  %98 = load %struct.name_decoration*, %struct.name_decoration** %13, align 8
  %99 = getelementptr inbounds %struct.name_decoration, %struct.name_decoration* %98, i32 0, i32 1
  %100 = load %struct.name_decoration*, %struct.name_decoration** %99, align 8
  store %struct.name_decoration* %100, %struct.name_decoration** %13, align 8
  br label %32

101:                                              ; preds = %32
  %102 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @strbuf_addstr(%struct.strbuf* %102, i8* %103)
  %105 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @strbuf_addstr(%struct.strbuf* %105, i8* %106)
  %108 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @strbuf_addstr(%struct.strbuf* %108, i8* %109)
  br label %111

111:                                              ; preds = %101, %28
  ret void
}

declare dso_local i8* @diff_get_color(i32, i32) #1

declare dso_local i8* @decorate_get_color(i32, i64) #1

declare dso_local %struct.name_decoration* @get_name_decoration(i32*) #1

declare dso_local %struct.name_decoration* @current_pointed_by_HEAD(%struct.name_decoration*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @show_name(%struct.strbuf*, %struct.name_decoration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
