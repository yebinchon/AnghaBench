; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_fetch.c_update_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_fetch.c_update_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"[new]     %.20s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[updated] %.10s..%.10s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i8*)* @update_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_cb(i8* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @git_oid_fmt(i8* %20, i32* %22)
  %24 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @git_oid_is_zero(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %31)
  br label %41

33:                                               ; preds = %4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @git_oid_fmt(i8* %16, i32* %34)
  %36 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %16, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %20, i8* %39)
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %42)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_oid_fmt(i8*, i32*) #2

declare dso_local i64 @git_oid_is_zero(i32*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
