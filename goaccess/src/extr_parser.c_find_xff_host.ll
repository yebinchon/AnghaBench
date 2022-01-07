; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_find_xff_host.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_find_xff_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@TYPE_IPINV = common dso_local global i32 0, align 4
@SPEC_SFMT_MIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**, i8**)* @find_xff_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_xff_host(%struct.TYPE_4__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @TYPE_IPINV, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i8**, i8*** %7, align 8
  %16 = call i8* @extract_braces(i8** %15)
  store i8* %16, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i32, i32* @SPEC_SFMT_MIS, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @spec_err(%struct.TYPE_4__* %19, i32 %20, i8 signext %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  br label %99

25:                                               ; preds = %3
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %85, %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strcspn(i8* %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  br label %85

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = call i8* @parsed_string(i8* %48, i8** %49, i32 0)
  store i8* %50, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %91

53:                                               ; preds = %43
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @invalid_ipaddr(i8* %54, i32* %13)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  br label %91

66:                                               ; preds = %60, %53
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = call i32* @xstrdup(i8* %75)
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %74, %71, %66
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %38
  %86 = load i32, i32* %12, align 4
  %87 = load i8**, i8*** %6, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %87, align 8
  br label %28

91:                                               ; preds = %63, %52, %28
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %91, %18
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i8* @extract_braces(i8**) #1

declare dso_local i32 @spec_err(%struct.TYPE_4__*, i32, i8 signext, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @parsed_string(i8*, i8**, i32) #1

declare dso_local i32 @invalid_ipaddr(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
