; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_extract_content_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_extract_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"text/\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.strbuf*, %struct.strbuf*)* @extract_content_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_content_type(%struct.strbuf* %0, %struct.strbuf* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %9 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strbuf_grow(%struct.strbuf* %10, i32 %13)
  %15 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %42, %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %42

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 59
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  br label %45

36:                                               ; preds = %28
  %37 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @tolower(i8 signext %39)
  %41 = call i32 @strbuf_addch(%struct.strbuf* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %27
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %18

45:                                               ; preds = %33, %18
  %46 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %47 = icmp ne %struct.strbuf* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %110

49:                                               ; preds = %45
  %50 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %51 = call i32 @strbuf_reset(%struct.strbuf* %50)
  br label %52

52:                                               ; preds = %95, %49
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %69, %56
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isspace(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 59
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i1 [ true, %57 ], [ %66, %62 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %57

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %75 = call i32 @extract_param(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.strbuf* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %110

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %92, %78
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isspace(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i1 [ false, %79 ], [ %89, %84 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %7, align 8
  br label %79

95:                                               ; preds = %90
  br label %52

96:                                               ; preds = %52
  %97 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %98 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @starts_with(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %109 = call i32 @strbuf_addstr(%struct.strbuf* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %48, %77, %107, %101, %96
  ret void
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @extract_param(i8*, i8*, %struct.strbuf*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
