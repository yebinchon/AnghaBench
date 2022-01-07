; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_find_longest_prefixes_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_find_longest_prefixes_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.strbuf = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, %struct.strbuf*, i8**, i64)* @find_longest_prefixes_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_longest_prefixes_1(%struct.string_list* %0, %struct.strbuf* %1, i8** %2, i64 %3) #0 {
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  store %struct.string_list* %0, %struct.string_list** %5, align 8
  store %struct.strbuf* %1, %struct.strbuf** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %39, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load i8**, i8*** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %10, align 1
  %26 = load i8, i8* %10, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i8, i8* %10, align 1
  %30 = call i64 @is_glob_special(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %16
  %33 = load %struct.string_list*, %struct.string_list** %5, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @string_list_append(%struct.string_list* %33, i32 %36)
  br label %109

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %12

42:                                               ; preds = %12
  store i64 0, i64* %9, align 8
  br label %43

43:                                               ; preds = %81, %42
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %109

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %78, %47
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i8**, i8*** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8**, i8*** %7, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %64, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %54
  br label %81

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %50

81:                                               ; preds = %76, %50
  %82 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %83 = load i8**, i8*** %7, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @strbuf_addch(%struct.strbuf* %82, i8 signext %91)
  %93 = load %struct.string_list*, %struct.string_list** %5, align 8
  %94 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %95 = load i8**, i8*** %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %98, %99
  call void @find_longest_prefixes_1(%struct.string_list* %93, %struct.strbuf* %94, i8** %97, i64 %100)
  %101 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %102 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, 1
  %106 = trunc i64 %105 to i32
  %107 = call i32 @strbuf_setlen(%struct.strbuf* %101, i32 %106)
  %108 = load i64, i64* %11, align 8
  store i64 %108, i64* %9, align 8
  br label %43

109:                                              ; preds = %32, %43
  ret void
}

declare dso_local i64 @is_glob_special(i8 signext) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
