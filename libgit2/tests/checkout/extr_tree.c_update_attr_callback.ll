; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_update_attr_callback.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_update_attr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"ident1.txt\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"testrepo/.gitattributes\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"*.txt ident\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_attr_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @GIT_UNUSED(i8* %10)
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @GIT_UNUSED(i8* %13)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @GIT_UNUSED(i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = load i32, i32* @O_CREAT, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @cl_git_write2file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12, i32 %26, i32 438)
  br label %28

28:                                               ; preds = %23, %19, %4
  ret void
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cl_git_write2file(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
