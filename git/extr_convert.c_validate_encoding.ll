; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_validate_encoding.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_validate_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"UTF\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"BOM is prohibited in '%s' if encoded as %s\00", align 1
@.str.2 = private unnamed_addr constant [92 x i8] c"The file '%s' contains a byte order mark (BOM). Please use UTF-%s as working-tree-encoding.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"BOM is required in '%s' if encoded as %s\00", align 1
@.str.5 = private unnamed_addr constant [138 x i8] c"The file '%s' is missing a byte order mark (BOM). Please use UTF-%sBE or UTF-%sLE (depending on the byte order) as working-tree-encoding.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i32)* @validate_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_encoding(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @istarts_with(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %106

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @has_prohibited_utf_bom(i8* %24, i8* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %12, align 8
  %31 = call i8* @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0))
  store i8* %31, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @xstrdup_toupper(i8* %32)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sub nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %15, align 8
  %41 = call i64 @skip_prefix(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i8*, i8** %14, align 8
  %45 = call i64 @skip_prefix(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %14)
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 (i8*, i8*, i8*, ...) @advise(i8* %47, i8* %48, i8* %49)
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @die(i8* %56, i8* %57, i8* %58)
  br label %65

60:                                               ; preds = %46
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @error(i8* %61, i8* %62, i8* %63)
  store i32 %64, i32* %6, align 4
  br label %107

65:                                               ; preds = %55
  br label %105

66:                                               ; preds = %23
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @is_missing_required_utf_bom(i8* %67, i8* %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %66
  %73 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i8* %73, i8** %16, align 8
  %74 = call i8* @_(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.5, i64 0, i64 0))
  store i8* %74, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i8* @xstrdup_toupper(i8* %75)
  store i8* %76, i8** %19, align 8
  %77 = load i8*, i8** %19, align 8
  %78 = call i64 @skip_prefix(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %18)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i8*, i8** %18, align 8
  %82 = call i64 @skip_prefix(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %18)
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i8*, i8** %17, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = call i32 (i8*, i8*, i8*, ...) @advise(i8* %84, i8* %85, i8* %86, i8* %87)
  %89 = load i8*, i8** %19, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @die(i8* %94, i8* %95, i8* %96)
  br label %103

98:                                               ; preds = %83
  %99 = load i8*, i8** %16, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @error(i8* %99, i8* %100, i8* %101)
  store i32 %102, i32* %6, align 4
  br label %107

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104, %65
  br label %106

106:                                              ; preds = %105, %5
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %98, %60
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @istarts_with(i8*, i8*) #1

declare dso_local i64 @has_prohibited_utf_bom(i8*, i8*, i64) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @xstrdup_toupper(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @advise(i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @die(i8*, i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i64 @is_missing_required_utf_bom(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
