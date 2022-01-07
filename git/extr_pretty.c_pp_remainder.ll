; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_pp_remainder.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_pp_remainder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pretty_print_context = type { i64, i64 }
%struct.strbuf = type { i32 }

@CMIT_FMT_SHORT = common dso_local global i64 0, align 8
@CMIT_FMT_MBOXRD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_remainder(%struct.pretty_print_context* %0, i8** %1, %struct.strbuf* %2, i32 %3) #0 {
  %5 = alloca %struct.pretty_print_context*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %12

12:                                               ; preds = %90, %32, %4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @get_one_line(i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %18, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %93

25:                                               ; preds = %12
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @is_blank_line(i8* %26, i32* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %12

33:                                               ; preds = %29
  %34 = load %struct.pretty_print_context*, %struct.pretty_print_context** %5, align 8
  %35 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CMIT_FMT_SHORT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %93

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %25
  store i32 0, i32* %9, align 4
  %42 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %43, %44
  %46 = add nsw i32 %45, 20
  %47 = call i32 @strbuf_grow(%struct.strbuf* %42, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load %struct.pretty_print_context*, %struct.pretty_print_context** %5, align 8
  %52 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @pp_handle_indent(%struct.pretty_print_context* %51, %struct.strbuf* %52, i32 %53, i8* %54, i32 %55)
  br label %90

57:                                               ; preds = %41
  %58 = load %struct.pretty_print_context*, %struct.pretty_print_context** %5, align 8
  %59 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %64 = load %struct.pretty_print_context*, %struct.pretty_print_context** %5, align 8
  %65 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @strbuf_add_tabexpand(%struct.strbuf* %63, i64 %66, i8* %67, i32 %68)
  br label %89

70:                                               ; preds = %57
  %71 = load %struct.pretty_print_context*, %struct.pretty_print_context** %5, align 8
  %72 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CMIT_FMT_MBOXRD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @is_mboxrd_from(i8* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %83 = call i32 @strbuf_addch(%struct.strbuf* %82, i8 signext 62)
  br label %84

84:                                               ; preds = %81, %76, %70
  %85 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @strbuf_add(%struct.strbuf* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %62
  br label %90

90:                                               ; preds = %89, %50
  %91 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %92 = call i32 @strbuf_addch(%struct.strbuf* %91, i8 signext 10)
  br label %12

93:                                               ; preds = %39, %24
  ret void
}

declare dso_local i32 @get_one_line(i8*) #1

declare dso_local i64 @is_blank_line(i8*, i32*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @pp_handle_indent(%struct.pretty_print_context*, %struct.strbuf*, i32, i8*, i32) #1

declare dso_local i32 @strbuf_add_tabexpand(%struct.strbuf*, i64, i8*, i32) #1

declare dso_local i64 @is_mboxrd_from(i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
