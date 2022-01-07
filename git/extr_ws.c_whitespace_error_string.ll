; ModuleID = '/home/carl/AnghaBench/git/extr_ws.c_whitespace_error_string.c'
source_filename = "/home/carl/AnghaBench/git/extr_ws.c_whitespace_error_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@WS_TRAILING_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"trailing whitespace\00", align 1
@WS_BLANK_AT_EOL = common dso_local global i32 0, align 4
@WS_BLANK_AT_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"new blank line at EOF\00", align 1
@WS_SPACE_BEFORE_TAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"space before tab in indent\00", align 1
@WS_INDENT_WITH_NON_TAB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"indent with spaces\00", align 1
@WS_TAB_IN_INDENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"tab in indent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @whitespace_error_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @WS_TRAILING_SPACE, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @WS_TRAILING_SPACE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @WS_BLANK_AT_EOL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @WS_BLANK_AT_EOF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %19
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @WS_SPACE_BEFORE_TAB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @WS_INDENT_WITH_NON_TAB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @WS_TAB_IN_INDENT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %59
  %73 = call i8* @strbuf_detach(%struct.strbuf* %3, i32* null)
  ret i8* %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
