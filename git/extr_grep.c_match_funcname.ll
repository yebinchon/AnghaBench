; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_match_funcname.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_match_funcname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 (i8*, i32, i8*, i32, i32)*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.grep_source = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.userdiff_funcname }
%struct.userdiff_funcname = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.grep_source*, i8*, i8*)* @match_funcname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_funcname(%struct.grep_opt* %0, %struct.grep_source* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.grep_opt*, align 8
  %7 = alloca %struct.grep_source*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.userdiff_funcname*, align 8
  %12 = alloca [1 x i8], align 1
  store %struct.grep_opt* %0, %struct.grep_opt** %6, align 8
  store %struct.grep_source* %1, %struct.grep_source** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %14 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %55

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64 (i8*, i32, i8*, i32, i32)*, i64 (i8*, i32, i8*, i32, i32)** %20, align 8
  %22 = icmp ne i64 (i8*, i32, i8*, i32, i32)* %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %18
  %24 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %25 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %26 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @grep_source_load_driver(%struct.grep_source* %24, i32 %29)
  %31 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %32 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %23
  %39 = load %struct.grep_source*, %struct.grep_source** %7, align 8
  %40 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.userdiff_funcname* %42, %struct.userdiff_funcname** %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %11, align 8
  %45 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.userdiff_funcname*, %struct.userdiff_funcname** %11, align 8
  %48 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xdiff_set_find_func(%struct.TYPE_7__* %43, i64 %46, i32 %49)
  br label %54

51:                                               ; preds = %23
  %52 = load %struct.grep_opt*, %struct.grep_opt** %6, align 8
  %53 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %52, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %54

54:                                               ; preds = %51, %38
  br label %55

55:                                               ; preds = %54, %18, %4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64 (i8*, i32, i8*, i32, i32)*, i64 (i8*, i32, i8*, i32, i32)** %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds [1 x i8], [1 x i8]* %12, i64 0, i64 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 %61(i8* %62, i32 %68, i8* %69, i32 1, i32 %72)
  %74 = icmp sge i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %98

76:                                               ; preds = %55
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %98

81:                                               ; preds = %76
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i64 @isalpha(i8 signext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 95
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 36
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %86, %81
  store i32 1, i32* %5, align 4
  br label %98

97:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %96, %80, %58
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @grep_source_load_driver(%struct.grep_source*, i32) #1

declare dso_local i32 @xdiff_set_find_func(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @isalpha(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
