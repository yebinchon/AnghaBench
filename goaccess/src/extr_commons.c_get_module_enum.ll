; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_commons.c_get_module_enum.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_commons.c_get_module_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"VISITORS\00", align 1
@VISITORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"REQUESTS\00", align 1
@REQUESTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"REQUESTS_STATIC\00", align 1
@REQUESTS_STATIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"NOT_FOUND\00", align 1
@NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"HOSTS\00", align 1
@HOSTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"OS\00", align 1
@OS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"BROWSERS\00", align 1
@BROWSERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"VISIT_TIMES\00", align 1
@VISIT_TIMES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"VIRTUAL_HOSTS\00", align 1
@VIRTUAL_HOSTS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"REFERRERS\00", align 1
@REFERRERS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"REFERRING_SITES\00", align 1
@REFERRING_SITES = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"KEYPHRASES\00", align 1
@KEYPHRASES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"STATUS_CODES\00", align 1
@STATUS_CODES = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"REMOTE_USER\00", align 1
@REMOTE_USER = common dso_local global i32 0, align 4
@GEO_LOCATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_module_enum(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [14 x %struct.TYPE_4__], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [14 x %struct.TYPE_4__], [14 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 16
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %7 = load i32, i32* @VISITORS, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 16
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %11 = load i32, i32* @REQUESTS, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 16
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %15 = load i32, i32* @REQUESTS_STATIC, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %19 = load i32, i32* @NOT_FOUND, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %23 = load i32, i32* @HOSTS, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %25, align 16
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %27 = load i32, i32* @OS, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %31 = load i32, i32* @BROWSERS, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %35 = load i32, i32* @VISIT_TIMES, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %37, align 16
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %39 = load i32, i32* @VIRTUAL_HOSTS, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %43 = load i32, i32* @REFERRERS, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %45, align 16
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %47 = load i32, i32* @REFERRING_SITES, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %51 = load i32, i32* @KEYPHRASES, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %53, align 16
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %55 = load i32, i32* @STATUS_CODES, align 4
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %57, align 16
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %59 = load i32, i32* @REMOTE_USER, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds [14 x %struct.TYPE_4__], [14 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %61 = getelementptr inbounds [14 x %struct.TYPE_4__], [14 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %62 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %61)
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @str2enum(%struct.TYPE_4__* %60, i32 %62, i8* %63)
  ret i32 %64
}

declare dso_local i32 @str2enum(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
