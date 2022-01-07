; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_section_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_parse.c_parse_section_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"missing ']' in section header\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unexpected character in header\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unexpected end of file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**)* @parse_section_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_section_header(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @git_parse_advance_ws(%struct.TYPE_7__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @git__strndup(i32 %20, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %145

29:                                               ; preds = %2
  %30 = load i8*, i8** %12, align 8
  %31 = call i8* @strrchr(i8* %30, i8 signext 93)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @git__free(i8* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = call i32 @set_parse_error(%struct.TYPE_6__* %37, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %145

39:                                               ; preds = %29
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %13, i64 %44, i32 1)
  %46 = load i64, i64* %13, align 8
  %47 = call i8* @git__malloc(i64 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %48)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 91
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %108, %39
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @git__isspace(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = call i32 @parse_subsection_header(%struct.TYPE_6__* %77, i8* %78, i32 %79, i8* %80, i8** %81)
  store i32 %82, i32* %11, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @git__free(i8* %83)
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @git__free(i8* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %145

88:                                               ; preds = %68
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @config_keychar(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 46
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @set_parse_error(%struct.TYPE_6__* %96, i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %140

99:                                               ; preds = %92, %88
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @git__tolower(i32 %100)
  %102 = trunc i64 %101 to i8
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  br label %108

108:                                              ; preds = %99
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  store i32 %115, i32* %9, align 4
  %116 = icmp ne i32 %115, 93
  br i1 %116, label %68, label %117

117:                                              ; preds = %108
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 93
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @set_parse_error(%struct.TYPE_6__* %127, i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %140

130:                                              ; preds = %117
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @git__free(i8* %131)
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %6, align 8
  %138 = load i8**, i8*** %5, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %3, align 4
  br label %145

140:                                              ; preds = %126, %95
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 @git__free(i8* %141)
  %143 = load i8*, i8** %6, align 8
  %144 = call i32 @git__free(i8* %143)
  store i32 -1, i32* %3, align 4
  br label %145

145:                                              ; preds = %140, %130, %72, %34, %28
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @git_parse_advance_ws(%struct.TYPE_7__*) #1

declare dso_local i8* @git__strndup(i32, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @set_parse_error(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git__isspace(i32) #1

declare dso_local i32 @parse_subsection_header(%struct.TYPE_6__*, i8*, i32, i8*, i8**) #1

declare dso_local i32 @config_keychar(i32) #1

declare dso_local i64 @git__tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
