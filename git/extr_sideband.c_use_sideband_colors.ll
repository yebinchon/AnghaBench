; ModuleID = '/home/carl/AnghaBench/git/extr_sideband.c_use_sideband_colors.c'
source_filename = "/home/carl/AnghaBench/git/extr_sideband.c_use_sideband_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.TYPE_3__ = type { i32, i32 }

@use_sideband_colors.use_sideband_colors_cached = internal global i32 -1, align 4
@.str = private unnamed_addr constant [13 x i8] c"color.remote\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"color.ui\00", align 1
@GIT_COLOR_AUTO = common dso_local global i32 0, align 4
@keywords = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @use_sideband_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_sideband_colors() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %6 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %7 = load i32, i32* @use_sideband_colors.use_sideband_colors_cached, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* @use_sideband_colors.use_sideband_colors_cached, align 4
  store i32 %10, i32* %1, align 4
  br label %67

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @git_config_get_string(i8* %12, i8** %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @git_config_colorbool(i8* %16, i8* %17)
  store i32 %18, i32* @use_sideband_colors.use_sideband_colors_cached, align 4
  br label %28

19:                                               ; preds = %11
  %20 = call i64 @git_config_get_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @git_config_colorbool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 %24, i32* @use_sideband_colors.use_sideband_colors_cached, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @GIT_COLOR_AUTO, align 4
  store i32 %26, i32* @use_sideband_colors.use_sideband_colors_cached, align 4
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %15
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keywords, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = call i32 @strbuf_reset(%struct.strbuf* %3)
  %36 = load i8*, i8** %2, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keywords, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %42)
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @git_config_get_string(i8* %45, i8** %4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %61

49:                                               ; preds = %34
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keywords, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @color_parse(i8* %50, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %59, %48
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %29

64:                                               ; preds = %29
  %65 = call i32 @strbuf_release(%struct.strbuf* %3)
  %66 = load i32, i32* @use_sideband_colors.use_sideband_colors_cached, align 4
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %64, %9
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_config_get_string(i8*, i8**) #2

declare dso_local i32 @git_config_colorbool(i8*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i32) #2

declare dso_local i64 @color_parse(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
