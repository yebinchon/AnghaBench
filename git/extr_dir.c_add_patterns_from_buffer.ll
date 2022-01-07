; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_add_patterns_from_buffer.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_add_patterns_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_list = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32, %struct.pattern_list*)* @add_patterns_from_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_patterns_from_buffer(i8* %0, i64 %1, i8* %2, i32 %3, %struct.pattern_list* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pattern_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.pattern_list* %4, %struct.pattern_list** %10, align 8
  store i32 1, i32* %12, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.pattern_list*, %struct.pattern_list** %10, align 8
  %16 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @skip_utf8_bom(i8** %6, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.pattern_list*, %struct.pattern_list** %10, align 8
  %23 = getelementptr inbounds %struct.pattern_list, %struct.pattern_list* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %20, %5
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %95, %30
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %94

45:                                               ; preds = %37
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = icmp ne i8* %46, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 35
  br i1 %57, label %58, label %86

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 13
  br label %72

72:                                               ; preds = %63, %58
  %73 = phi i1 [ false, %58 ], [ %71, %63 ]
  %74 = zext i1 %73 to i32
  %75 = sub nsw i32 %60, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %59, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @trim_trailing_spaces(i8* %78)
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.pattern_list*, %struct.pattern_list** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @add_pattern(i8* %80, i8* %81, i32 %82, %struct.pattern_list* %83, i32 %84)
  br label %86

86:                                               ; preds = %72, %52, %45
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8* %93, i8** %13, align 8
  br label %94

94:                                               ; preds = %86, %37
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %32

98:                                               ; preds = %32
  ret i32 0
}

declare dso_local i64 @skip_utf8_bom(i8**, i64) #1

declare dso_local i32 @trim_trailing_spaces(i8*) #1

declare dso_local i32 @add_pattern(i8*, i8*, i32, %struct.pattern_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
