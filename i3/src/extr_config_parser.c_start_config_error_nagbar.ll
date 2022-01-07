; ModuleID = '/home/carl/AnghaBench/i3/src/extr_config_parser.c_start_config_error_nagbar.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_config_parser.c_start_config_error_nagbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [42 x i8] c"i3-sensible-editor \22%s\22 && i3-msg reload\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"i3-sensible-pager \22%s\22\0A\00", align 1
@errorfilename = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"You have an error in your i3 config file!\00", align 1
@.str.9 = private unnamed_addr constant [80 x i8] c"Your config is outdated. Please fix the warnings to make sure everything works.\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"edit config\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"show errors\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"show warnings\00", align 1
@config_error_nagbar_pid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_config_error_nagbar(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [14 x i8*], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @sasprintf(i8** %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i8*, i8** @errorfilename, align 8
  %11 = call i32 @sasprintf(i8** %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 0
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0, i32 0), align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0, i32 0), align 8
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %19 ]
  store i8* %21, i8** %14, align 8
  %22 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  store i8* %27, i8** %23, align 8
  %28 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.9, i64 0, i64 0)
  store i8* %33, i8** %29, align 8
  %34 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 1
  %39 = load i8*, i8** @errorfilename, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* null
  store i8* %42, i8** %38, align 8
  %43 = getelementptr inbounds i8*, i8** %38, i64 1
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)
  store i8* %47, i8** %43, align 8
  %48 = getelementptr inbounds i8*, i8** %43, i64 1
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 1
  store i8* null, i8** %50, align 8
  %51 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 0
  %52 = call i32 @start_nagbar(i32* @config_error_nagbar_pid, i8** %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @free(i8* %55)
  ret void
}

declare dso_local i32 @sasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @start_nagbar(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
