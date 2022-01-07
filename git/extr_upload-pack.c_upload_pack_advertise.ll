; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack_advertise.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"shallow\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"uploadpack.allowfilter\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" filter\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"uploadpack.allowrefinwant\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" ref-in-want\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"GIT_TEST_SIDEBAND_ALL\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"uploadpack.allowsidebandall\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" sideband-all\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @upload_pack_advertise(%struct.repository* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %9 = icmp ne %struct.strbuf* %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %12 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @the_repository, align 4
  %14 = call i32 @repo_config_get_bool(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = call i32 @strbuf_addstr(%struct.strbuf* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16, %10
  %23 = load i32, i32* @the_repository, align 4
  %24 = call i32 @repo_config_get_bool(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %31 = call i32 @strbuf_addstr(%struct.strbuf* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26, %22
  %33 = call i64 @git_env_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @the_repository, align 4
  %37 = call i32 @repo_config_get_bool(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %32
  %43 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %44 = call i32 @strbuf_addstr(%struct.strbuf* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39, %35
  br label %46

46:                                               ; preds = %45, %2
  ret i32 1
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @repo_config_get_bool(i32, i8*, i32*) #1

declare dso_local i64 @git_env_bool(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
