; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_handle_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_handle_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mailinfo = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.strbuf**, %struct.strbuf**, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.strbuf = type { i8* }

@header = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Author: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Email: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mailinfo*)* @handle_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_info(%struct.mailinfo* %0) #0 {
  %2 = alloca %struct.mailinfo*, align 8
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.mailinfo* %0, %struct.mailinfo** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %125, %1
  %6 = load i8**, i8*** @header, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %6, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %128

12:                                               ; preds = %5
  %13 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %14 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %19 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %18, i32 0, i32 5
  %20 = load %struct.strbuf**, %struct.strbuf*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %20, i64 %22
  %24 = load %struct.strbuf*, %struct.strbuf** %23, align 8
  %25 = icmp ne %struct.strbuf* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %28 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %27, i32 0, i32 5
  %29 = load %struct.strbuf**, %struct.strbuf*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %29, i64 %31
  %33 = load %struct.strbuf*, %struct.strbuf** %32, align 8
  store %struct.strbuf* %33, %struct.strbuf** %3, align 8
  br label %53

34:                                               ; preds = %17, %12
  %35 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %36 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %35, i32 0, i32 4
  %37 = load %struct.strbuf**, %struct.strbuf*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %37, i64 %39
  %41 = load %struct.strbuf*, %struct.strbuf** %40, align 8
  %42 = icmp ne %struct.strbuf* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %45 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %44, i32 0, i32 4
  %46 = load %struct.strbuf**, %struct.strbuf*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %46, i64 %48
  %50 = load %struct.strbuf*, %struct.strbuf** %49, align 8
  store %struct.strbuf* %50, %struct.strbuf** %3, align 8
  br label %52

51:                                               ; preds = %34
  br label %125

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i8**, i8*** @header, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %53
  %62 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %63 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %68 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %69 = call i32 @cleanup_subject(%struct.mailinfo* %67, %struct.strbuf* %68)
  %70 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %71 = call i32 @cleanup_space(%struct.strbuf* %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %74 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %77 = call i32 @output_header_lines(i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.strbuf* %76)
  br label %124

78:                                               ; preds = %53
  %79 = load i8**, i8*** @header, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %78
  %87 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %88 = call i32 @cleanup_space(%struct.strbuf* %87)
  %89 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %90 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %91 = call i32 @handle_from(%struct.mailinfo* %89, %struct.strbuf* %90)
  %92 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %93 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %96 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  %100 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %101 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %104 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  br label %123

108:                                              ; preds = %78
  %109 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %110 = call i32 @cleanup_space(%struct.strbuf* %109)
  %111 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %112 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i8**, i8*** @header, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %118, i8* %121)
  br label %123

123:                                              ; preds = %108, %86
  br label %124

124:                                              ; preds = %123, %72
  br label %125

125:                                              ; preds = %124, %51
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %5

128:                                              ; preds = %5
  %129 = load %struct.mailinfo*, %struct.mailinfo** %2, align 8
  %130 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cleanup_subject(%struct.mailinfo*, %struct.strbuf*) #1

declare dso_local i32 @cleanup_space(%struct.strbuf*) #1

declare dso_local i32 @output_header_lines(i32, i8*, %struct.strbuf*) #1

declare dso_local i32 @handle_from(%struct.mailinfo*, %struct.strbuf*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
