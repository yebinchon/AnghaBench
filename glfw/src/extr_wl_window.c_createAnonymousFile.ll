; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createAnonymousFile.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_window.c_createAnonymousFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@createAnonymousFile.template = internal constant [20 x i8] c"/glfw-shared-XXXXXX\00", align 16
@.str = private unnamed_addr constant [16 x i8] c"XDG_RUNTIME_DIR\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_ADD_SEALS = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@SHM_ANON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @createAnonymousFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createAnonymousFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOENT, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = add i64 %15, 20
  %17 = call i8* @calloc(i64 %16, i32 1)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcpy(i8* %18, i8* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcat(i8* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @createAnonymousFile.template, i64 0, i64 0))
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @createTmpfileCloexec(i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %42

30:                                               ; preds = %13
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @posix_fallocate(i32 %31, i32 0, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %36, %29, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @createTmpfileCloexec(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @posix_fallocate(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
