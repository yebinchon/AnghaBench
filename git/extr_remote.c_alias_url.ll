; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_alias_url.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_alias_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rewrites = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, %struct.counted_string* }
%struct.counted_string = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.rewrites*)* @alias_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alias_url(i8* %0, %struct.rewrites* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rewrites*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.counted_string*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.rewrites* %1, %struct.rewrites** %5, align 8
  store %struct.counted_string* null, %struct.counted_string** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %98, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %13 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %101

16:                                               ; preds = %10
  %17 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %18 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %98

26:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %94, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %30 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %28, %37
  br i1 %38, label %39, label %97

39:                                               ; preds = %27
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %42 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load %struct.counted_string*, %struct.counted_string** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.counted_string, %struct.counted_string* %49, i64 %51
  %53 = getelementptr inbounds %struct.counted_string, %struct.counted_string* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @starts_with(i8* %40, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %39
  %58 = load %struct.counted_string*, %struct.counted_string** %8, align 8
  %59 = icmp ne %struct.counted_string* %58, null
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load %struct.counted_string*, %struct.counted_string** %8, align 8
  %62 = getelementptr inbounds %struct.counted_string, %struct.counted_string* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %65 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %66, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load %struct.counted_string*, %struct.counted_string** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.counted_string, %struct.counted_string* %72, i64 %74
  %76 = getelementptr inbounds %struct.counted_string, %struct.counted_string* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %63, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %60, %57
  %80 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %81 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load %struct.counted_string*, %struct.counted_string** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.counted_string, %struct.counted_string* %88, i64 %90
  store %struct.counted_string* %91, %struct.counted_string** %8, align 8
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %79, %60, %39
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %27

97:                                               ; preds = %27
  br label %98

98:                                               ; preds = %97, %25
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %10

101:                                              ; preds = %10
  %102 = load %struct.counted_string*, %struct.counted_string** %8, align 8
  %103 = icmp ne %struct.counted_string* %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %4, align 8
  store i8* %105, i8** %3, align 8
  br label %122

106:                                              ; preds = %101
  %107 = load %struct.rewrites*, %struct.rewrites** %5, align 8
  %108 = getelementptr inbounds %struct.rewrites, %struct.rewrites* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %4, align 8
  %117 = load %struct.counted_string*, %struct.counted_string** %8, align 8
  %118 = getelementptr inbounds %struct.counted_string, %struct.counted_string* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  %121 = call i8* @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %115, i8* %120)
  store i8* %121, i8** %3, align 8
  br label %122

122:                                              ; preds = %106, %104
  %123 = load i8*, i8** %3, align 8
  ret i8* %123
}

declare dso_local i64 @starts_with(i8*, i32) #1

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
