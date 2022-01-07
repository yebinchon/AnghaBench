; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_path__skip_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_path__skip_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH__NT_NAMESPACE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 85, i32 78, i32 67, i32 92, i32 0], align 4
@PATH__ABSOLUTE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @path__skip_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @path__skip_prefix(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @path__is_nt_namespace(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load i32, i32* @PATH__NT_NAMESPACE_LEN, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @wcsncmp(i32* %11, i8* bitcast ([5 x i32]* @.str to i8*), i32 4)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = call i32* @path__skip_server(i32* %16)
  store i32* %17, i32** %2, align 8
  br label %28

18:                                               ; preds = %6
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @git_path_is_absolute(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @PATH__ABSOLUTE_LEN, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %2, align 8
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %14
  br label %48

29:                                               ; preds = %1
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @git_path_is_absolute(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @PATH__ABSOLUTE_LEN, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %2, align 8
  br label %47

38:                                               ; preds = %29
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @path__is_unc(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = call i32* @path__skip_server(i32* %44)
  store i32* %45, i32** %2, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

declare dso_local i64 @path__is_nt_namespace(i32*) #1

declare dso_local i64 @wcsncmp(i32*, i8*, i32) #1

declare dso_local i32* @path__skip_server(i32*) #1

declare dso_local i64 @git_path_is_absolute(i32*) #1

declare dso_local i64 @path__is_unc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
