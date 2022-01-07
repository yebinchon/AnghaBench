; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_match_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_match_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_filter = type { i8**, i64 }

@WM_CASEFOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_filter*, i8*)* @match_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_pattern(%struct.ref_filter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.ref_filter* %0, %struct.ref_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %9 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ref_filter*, %struct.ref_filter** %4, align 8
  %12 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @WM_CASEFOLD, align 4
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @skip_prefix(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @skip_prefix(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @skip_prefix(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @skip_prefix(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %5)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %31, %27, %23, %19
  %36 = phi i1 [ true, %27 ], [ true, %23 ], [ true, %19 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %51, %35
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @wildmatch(i8* %44, i8* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %55

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i8**, i8*** %6, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %6, align 8
  br label %38

54:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @wildmatch(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
