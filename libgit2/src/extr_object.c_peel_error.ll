; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_object.c_peel_error.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_object.c_peel_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"the git_object of id '%s' can not be successfully peeled into a %s (git_object_t=%i).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @peel_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @peel_error(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @git_object_type2string(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @git_oid_fmt(i8* %14, i32* %17)
  %19 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %14, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @git_error_set(i32 %22, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %27)
  ret i32 %26
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @git_object_type2string(i32) #2

declare dso_local i32 @git_oid_fmt(i8*, i32*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
