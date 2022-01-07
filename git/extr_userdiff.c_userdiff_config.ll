; ModuleID = '/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdiff_driver = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@drivers = common dso_local global %struct.userdiff_driver* null, align 8
@ndrivers = common dso_local global i64 0, align 8
@drivers_alloc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"funcname\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xfuncname\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"textconv\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"cachetextconv\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"wordregex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @userdiff_config(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.userdiff_driver*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @parse_config_key(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, i32* %9, i8** %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %114

17:                                               ; preds = %13
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.userdiff_driver* @userdiff_find_by_namelen(i8* %18, i32 %19)
  store %struct.userdiff_driver* %20, %struct.userdiff_driver** %6, align 8
  %21 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %22 = icmp ne %struct.userdiff_driver* %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %17
  %24 = load %struct.userdiff_driver*, %struct.userdiff_driver** @drivers, align 8
  %25 = load i64, i64* @ndrivers, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i32, i32* @drivers_alloc, align 4
  %28 = call i32 @ALLOC_GROW(%struct.userdiff_driver* %24, i64 %26, i32 %27)
  %29 = load %struct.userdiff_driver*, %struct.userdiff_driver** @drivers, align 8
  %30 = load i64, i64* @ndrivers, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* @ndrivers, align 8
  %32 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %29, i64 %30
  store %struct.userdiff_driver* %32, %struct.userdiff_driver** %6, align 8
  %33 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %34 = call i32 @memset(%struct.userdiff_driver* %33, i32 0, i32 28)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @xmemdupz(i8* %35, i32 %36)
  %38 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %39 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %41 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  br label %42

42:                                               ; preds = %23, %17
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %48 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %47, i32 0, i32 5
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @parse_funcname(i32* %48, i8* %49, i8* %50, i32 0)
  store i32 %51, i32* %3, align 4
  br label %114

52:                                               ; preds = %42
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %58 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %57, i32 0, i32 5
  %59 = load i8*, i8** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @REG_EXTENDED, align 4
  %62 = call i32 @parse_funcname(i32* %58, i8* %59, i8* %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %114

63:                                               ; preds = %52
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %69 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %68, i32 0, i32 0
  %70 = load i8*, i8** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @parse_tristate(i32* %69, i8* %70, i8* %71)
  store i32 %72, i32* %3, align 4
  br label %114

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %79 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %78, i32 0, i32 4
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @git_config_string(i32* %79, i8* %80, i8* %81)
  store i32 %82, i32* %3, align 4
  br label %114

83:                                               ; preds = %73
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %89 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %88, i32 0, i32 3
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @git_config_string(i32* %89, i8* %90, i8* %91)
  store i32 %92, i32* %3, align 4
  br label %114

93:                                               ; preds = %83
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %99 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %98, i32 0, i32 2
  %100 = load i8*, i8** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @parse_bool(i32* %99, i8* %100, i8* %101)
  store i32 %102, i32* %3, align 4
  br label %114

103:                                              ; preds = %93
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = load %struct.userdiff_driver*, %struct.userdiff_driver** %6, align 8
  %109 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %108, i32 0, i32 1
  %110 = load i8*, i8** %4, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @git_config_string(i32* %109, i8* %110, i8* %111)
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %107, %97, %87, %77, %67, %56, %46, %16
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local %struct.userdiff_driver* @userdiff_find_by_namelen(i8*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.userdiff_driver*, i64, i32) #1

declare dso_local i32 @memset(%struct.userdiff_driver*, i32, i32) #1

declare dso_local i32 @xmemdupz(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_funcname(i32*, i8*, i8*, i32) #1

declare dso_local i32 @parse_tristate(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @parse_bool(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
