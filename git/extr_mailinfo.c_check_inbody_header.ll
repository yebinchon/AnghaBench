; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_check_inbody_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_check_inbody_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { %struct.TYPE_3__, i32*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.strbuf = type { i8*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c">From\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[PATCH]\00", align 1
@header = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mailinfo*, %struct.strbuf*)* @check_inbody_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_inbody_header(%struct.mailinfo* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mailinfo*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.mailinfo* %0, %struct.mailinfo** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %7 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %8 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %28, label %20

20:                                               ; preds = %12
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %50

28:                                               ; preds = %20, %12
  %29 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %30 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @is_scissors_line(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %41 = call i32 @flush_inbody_header_accum(%struct.mailinfo* %40)
  store i32 0, i32* %3, align 4
  br label %131

42:                                               ; preds = %33, %28
  %43 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %44 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %43, i32 0, i32 0
  %45 = call i32 @strbuf_strip_suffix(%struct.TYPE_3__* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %47 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %46, i32 0, i32 0
  %48 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %49 = call i32 @strbuf_addbuf(%struct.TYPE_3__* %47, %struct.strbuf* %48)
  store i32 1, i32* %3, align 4
  br label %131

50:                                               ; preds = %20, %2
  %51 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %52 = call i32 @flush_inbody_header_accum(%struct.mailinfo* %51)
  %53 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @starts_with(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 5
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = call i32 @is_format_patch_separator(i8* %70, i64 %74)
  store i32 %75, i32* %3, align 4
  br label %131

76:                                               ; preds = %58, %50
  %77 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @starts_with(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %76
  %83 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 7
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @isspace(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %116, %90
  %92 = load i64*, i64** @header, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = load i64*, i64** @header, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %98
  %107 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %108 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %114 = call i32 @handle_header(i32* %112, %struct.strbuf* %113)
  store i32 1, i32* %3, align 4
  br label %131

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %91

119:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %131

120:                                              ; preds = %82, %76
  %121 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %122 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %123 = call i64 @is_inbody_header(%struct.mailinfo* %121, %struct.strbuf* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.mailinfo*, %struct.mailinfo** %4, align 8
  %127 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %126, i32 0, i32 0
  %128 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %129 = call i32 @strbuf_addbuf(%struct.TYPE_3__* %127, %struct.strbuf* %128)
  store i32 1, i32* %3, align 4
  br label %131

130:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %125, %119, %106, %66, %42, %39
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @is_scissors_line(i8*) #1

declare dso_local i32 @flush_inbody_header_accum(%struct.mailinfo*) #1

declare dso_local i32 @strbuf_strip_suffix(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @strbuf_addbuf(%struct.TYPE_3__*, %struct.strbuf*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @is_format_patch_separator(i8*, i64) #1

declare dso_local i32 @strcmp(i8*, i64) #1

declare dso_local i32 @handle_header(i32*, %struct.strbuf*) #1

declare dso_local i64 @is_inbody_header(%struct.mailinfo*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
