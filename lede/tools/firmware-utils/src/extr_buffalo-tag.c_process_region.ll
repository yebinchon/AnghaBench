; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_process_region.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_process_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"invalid region code '%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"M_\00", align 1
@region_code = common dso_local global i8* null, align 8
@region_mask = common dso_local global i32 0, align 4
@num_regions = common dso_local global i32 0, align 4
@region_table = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"unknown region code '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @process_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_region(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %9)
  store i32 -1, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** @region_code, align 8
  %17 = load i32, i32* @region_mask, align 4
  %18 = or i32 %17, -1
  store i32 %18, i32* @region_mask, align 4
  store i32 32, i32* @num_regions, align 4
  store i32 0, i32* %2, align 4
  br label %49

19:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** @region_table, align 8
  %23 = call i32 @ARRAY_SIZE(i8** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = load i8**, i8*** @region_table, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %26, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i8*, i8** %3, align 8
  store i8* %35, i8** @region_code, align 8
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @region_mask, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @region_mask, align 4
  %40 = load i32, i32* @num_regions, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @num_regions, align 4
  store i32 0, i32* %2, align 4
  br label %49

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i32 -1, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %34, %15, %8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ERR(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
