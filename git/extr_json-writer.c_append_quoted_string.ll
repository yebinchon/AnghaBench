; ModuleID = '/home/carl/AnghaBench/git/extr_json-writer.c_append_quoted_string.c'
source_filename = "/home/carl/AnghaBench/git/extr_json-writer.c_append_quoted_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @append_quoted_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_quoted_string(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 34)
  br label %8

8:                                                ; preds = %82, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %83

14:                                               ; preds = %8
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %82

21:                                               ; preds = %14
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %81

28:                                               ; preds = %21
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %80

35:                                               ; preds = %28
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %41 = call i32 @strbuf_addstr(%struct.strbuf* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %79

42:                                               ; preds = %35
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %48 = call i32 @strbuf_addstr(%struct.strbuf* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %78

49:                                               ; preds = %42
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %55 = call i32 @strbuf_addstr(%struct.strbuf* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %77

56:                                               ; preds = %49
  %57 = load i8, i8* %5, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %62 = call i32 @strbuf_addstr(%struct.strbuf* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %76

63:                                               ; preds = %56
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp slt i32 %65, 32
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %69 = load i8, i8* %5, align 1
  %70 = call i32 @strbuf_addf(%struct.strbuf* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8 zeroext %69)
  br label %75

71:                                               ; preds = %63
  %72 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %73 = load i8, i8* %5, align 1
  %74 = call i32 @strbuf_addch(%struct.strbuf* %72, i8 signext %73)
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %60
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %46
  br label %79

79:                                               ; preds = %78, %39
  br label %80

80:                                               ; preds = %79, %32
  br label %81

81:                                               ; preds = %80, %25
  br label %82

82:                                               ; preds = %81, %18
  br label %8

83:                                               ; preds = %8
  %84 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %85 = call i32 @strbuf_addch(%struct.strbuf* %84, i8 signext 34)
  ret void
}

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
