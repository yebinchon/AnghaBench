; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_are_symlinks_supported.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_are_symlinks_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @are_symlinks_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_symlinks_supported(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32* null, i32** %3, align 8
  %9 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @git_path_supports_symlinks(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %16
  %19 = call i32 @git_buf_dispose(i32* %4)
  %20 = call i32 @git_buf_dispose(i32* %5)
  %21 = call i32 @git_buf_dispose(i32* %6)
  %22 = call i32 @git_buf_dispose(i32* %7)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_config_free(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @git_path_supports_symlinks(i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
