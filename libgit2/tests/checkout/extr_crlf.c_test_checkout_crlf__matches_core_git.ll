; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_crlf.c_test_checkout_crlf__matches_core_git.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_crlf.c_test_checkout_crlf__matches_core_git.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@__const.test_checkout_crlf__matches_core_git.autocrlf = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-crlf\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-text\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"eol=crlf\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"eol=lf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"text eol=crlf\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"text eol=lf\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"text=auto\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"text=auto eol=crlf\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"text=auto eol=lf\00", align 1
@__const.test_checkout_crlf__matches_core_git.attrs = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_crlf__matches_core_git() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca [12 x i8*], align 16
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = bitcast [4 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([4 x i8*]* @__const.test_checkout_crlf__matches_core_git.autocrlf to i8*), i64 32, i1 false)
  %6 = bitcast [12 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([12 x i8*]* @__const.test_checkout_crlf__matches_core_git.attrs to i8*), i64 96, i1 false)
  %7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  store i8** %7, i8*** %3, align 8
  br label %8

8:                                                ; preds = %29, %0
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = getelementptr inbounds [12 x i8*], [12 x i8*]* %2, i64 0, i64 0
  store i8** %13, i8*** %4, align 8
  br label %14

14:                                               ; preds = %25, %12
  %15 = load i8**, i8*** %4, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = call i32 @empty_workdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %20 = load i8**, i8*** %3, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @test_checkout(i8* %21, i8* %23)
  br label %25

25:                                               ; preds = %18
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i32 1
  store i8** %27, i8*** %4, align 8
  br label %14

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i8**, i8*** %3, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i32 1
  store i8** %31, i8*** %3, align 8
  br label %8

32:                                               ; preds = %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @empty_workdir(i8*) #2

declare dso_local i32 @test_checkout(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
