; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_interpret_nth_prior_checkout.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_interpret_nth_prior_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.strbuf = type { i32 }
%struct.grab_nth_branch_switch_cbdata = type { i64, %struct.strbuf* }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@grab_nth_branch_switch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i32, %struct.strbuf*)* @interpret_nth_prior_checkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_nth_prior_checkout(%struct.repository* %0, i8* %1, i32 %2, %struct.strbuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.grab_nth_branch_switch_cbdata, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 64
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 123
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 45
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %18
  store i32 -1, i32* %5, align 4
  br label %78

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @memchr(i8* %38, i8 signext 125, i32 %39)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %78

44:                                               ; preds = %37
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = call i64 @strtol(i8* %46, i8** %14, i32 10)
  store i64 %47, i64* %10, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %78

52:                                               ; preds = %44
  %53 = load i64, i64* %10, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %78

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.grab_nth_branch_switch_cbdata, %struct.grab_nth_branch_switch_cbdata* %12, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %60 = getelementptr inbounds %struct.grab_nth_branch_switch_cbdata, %struct.grab_nth_branch_switch_cbdata* %12, i32 0, i32 1
  store %struct.strbuf* %59, %struct.strbuf** %60, align 8
  %61 = load %struct.repository*, %struct.repository** %6, align 8
  %62 = call i32 @get_main_ref_store(%struct.repository* %61)
  %63 = load i32, i32* @grab_nth_branch_switch, align 4
  %64 = call i32 @refs_for_each_reflog_ent_reverse(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63, %struct.grab_nth_branch_switch_cbdata* %12)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 0, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = add nsw i64 %72, 1
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  br label %76

75:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %67
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %55, %51, %43, %36, %17
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @refs_for_each_reflog_ent_reverse(i32, i8*, i32, %struct.grab_nth_branch_switch_cbdata*) #1

declare dso_local i32 @get_main_ref_store(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
