; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_add_pattern.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-data.c_add_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"$2%s pattern_%s[%10d]$3 %10u,%10u,%5u,$1|$3%.*s%s$1| = %d$^\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@MAX_DISPLAYED_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [83 x i8] c"$5%s pattern_%s[%10d] %10u,%10u,%5u,|%.*s%s| = %d (rejected: possibly wrong id)$^\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i32, i8*)* @add_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_pattern(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @antispam_add(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %5
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sge i32 %25, 3
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MAX_DISPLAYED_LEN, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %7, align 4
  br label %50

47:                                               ; preds = %27
  %48 = load i32, i32* @MAX_DISPLAYED_LEN, align 4
  %49 = sub nsw i32 %48, 3
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %49, %47 ]
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MAX_DISPLAYED_LEN, align 4
  %55 = icmp sle i32 %53, %54
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @st_printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i32 %34, i32 %36, i32 %38, i32 %41, i32 %51, i8* %52, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %50, %24
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %6, align 4
  br label %100

62:                                               ; preds = %5
  %63 = load i32, i32* @verbosity, align 4
  %64 = icmp sge i32 %63, 3
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @MAX_DISPLAYED_LEN, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = load i32, i32* %7, align 4
  br label %88

85:                                               ; preds = %65
  %86 = load i32, i32* @MAX_DISPLAYED_LEN, align 4
  %87 = sub nsw i32 %86, 3
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi i32 [ %84, %83 ], [ %87, %85 ]
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @MAX_DISPLAYED_LEN, align 4
  %93 = icmp sle i32 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @st_printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i8* %69, i8* %70, i32 %72, i32 %74, i32 %76, i32 %79, i32 %89, i8* %90, i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %62
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %60
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @antispam_add(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8, i8*, i32) #1

declare dso_local i32 @st_printf(i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
