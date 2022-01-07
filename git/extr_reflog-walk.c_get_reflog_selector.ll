; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_selector.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.reflog_walk_info = type { %struct.commit_reflog* }
%struct.commit_reflog = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i32, %struct.reflog_info* }
%struct.reflog_info = type { i32, i32 }
%struct.date_mode = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s@{\00", align 1
@SELECTOR_DATE = common dso_local global i64 0, align 8
@SELECTOR_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_reflog_selector(%struct.strbuf* %0, %struct.reflog_walk_info* %1, %struct.date_mode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.reflog_walk_info*, align 8
  %8 = alloca %struct.date_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit_reflog*, align 8
  %12 = alloca %struct.reflog_info*, align 8
  %13 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store %struct.reflog_walk_info* %1, %struct.reflog_walk_info** %7, align 8
  store %struct.date_mode* %2, %struct.date_mode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %7, align 8
  %15 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %14, i32 0, i32 0
  %16 = load %struct.commit_reflog*, %struct.commit_reflog** %15, align 8
  store %struct.commit_reflog* %16, %struct.commit_reflog** %11, align 8
  %17 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %18 = icmp ne %struct.commit_reflog* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %109

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %25 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %23
  %31 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %32 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @shorten_unambiguous_ref(i8* %35, i32 0)
  %37 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %38 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %30, %23
  %42 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %43 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %13, align 8
  br label %53

47:                                               ; preds = %20
  %48 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %49 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %13, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %58 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SELECTOR_DATE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %64 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SELECTOR_NONE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %68, %53
  %72 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %73 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load %struct.reflog_info*, %struct.reflog_info** %75, align 8
  %77 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %78 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %76, i64 %81
  store %struct.reflog_info* %82, %struct.reflog_info** %12, align 8
  %83 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %84 = load %struct.reflog_info*, %struct.reflog_info** %12, align 8
  %85 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.reflog_info*, %struct.reflog_info** %12, align 8
  %88 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.date_mode*, %struct.date_mode** %8, align 8
  %91 = call i32 @show_date(i32 %86, i32 %89, %struct.date_mode* %90)
  %92 = call i32 @strbuf_addstr(%struct.strbuf* %83, i32 %91)
  br label %106

93:                                               ; preds = %68, %62
  %94 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %95 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %96 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %99, 2
  %101 = load %struct.commit_reflog*, %struct.commit_reflog** %11, align 8
  %102 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  %105 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %93, %71
  %107 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %108 = call i32 @strbuf_addch(%struct.strbuf* %107, i8 signext 125)
  br label %109

109:                                              ; preds = %106, %19
  ret void
}

declare dso_local i8* @shorten_unambiguous_ref(i8*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @show_date(i32, i32, %struct.date_mode*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
