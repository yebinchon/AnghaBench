; ModuleID = '/home/carl/AnghaBench/git/extr_sideband.c_maybe_colorize_sideband.c'
source_filename = "/home/carl/AnghaBench/git/extr_sideband.c_maybe_colorize_sideband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyword_entry = type { i32, i32 }
%struct.strbuf = type { i32 }

@keywords = common dso_local global %struct.keyword_entry* null, align 8
@GIT_COLOR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i32)* @maybe_colorize_sideband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_colorize_sideband(%struct.strbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.keyword_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @use_sideband_colors()
  %11 = call i32 @want_color_stderr(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %15, i32 %16)
  br label %106

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 0, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @strbuf_addch(%struct.strbuf* %30, i8 signext %32)
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  br label %19

38:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %98, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.keyword_entry*, %struct.keyword_entry** @keywords, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.keyword_entry* %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %101

44:                                               ; preds = %39
  %45 = load %struct.keyword_entry*, %struct.keyword_entry** @keywords, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.keyword_entry, %struct.keyword_entry* %45, i64 %47
  store %struct.keyword_entry* %48, %struct.keyword_entry** %8, align 8
  %49 = load %struct.keyword_entry*, %struct.keyword_entry** %8, align 8
  %50 = getelementptr inbounds %struct.keyword_entry, %struct.keyword_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strlen(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %98

57:                                               ; preds = %44
  %58 = load %struct.keyword_entry*, %struct.keyword_entry** %8, align 8
  %59 = getelementptr inbounds %struct.keyword_entry, %struct.keyword_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @strncasecmp(i32 %60, i8* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @isalnum(i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %69, %65
  %78 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %79 = load %struct.keyword_entry*, %struct.keyword_entry** %8, align 8
  %80 = getelementptr inbounds %struct.keyword_entry, %struct.keyword_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strbuf_addstr(%struct.strbuf* %78, i32 %81)
  %83 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @strbuf_add(%struct.strbuf* %83, i8* %84, i32 %85)
  %87 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %88 = load i32, i32* @GIT_COLOR_RESET, align 4
  %89 = call i32 @strbuf_addstr(%struct.strbuf* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i8*, i8** %5, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %5, align 8
  br label %101

97:                                               ; preds = %69, %57
  br label %98

98:                                               ; preds = %97, %56
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %39

101:                                              ; preds = %77, %39
  %102 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @strbuf_add(%struct.strbuf* %102, i8* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %13
  ret void
}

declare dso_local i32 @want_color_stderr(i32) #1

declare dso_local i32 @use_sideband_colors(...) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @ARRAY_SIZE(%struct.keyword_entry*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
