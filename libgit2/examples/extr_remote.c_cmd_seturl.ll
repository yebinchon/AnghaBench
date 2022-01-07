; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_seturl.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_seturl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i8** }

@.str = private unnamed_addr constant [7 x i8] c"--push\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid argument to set-url\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"you need to specify remote and the new URL\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"could not set URL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.opts*)* @cmd_seturl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_seturl(i32* %0, %struct.opts* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.opts* %1, %struct.opts** %4, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %57, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.opts*, %struct.opts** %4, align 8
  %14 = getelementptr inbounds %struct.opts, %struct.opts* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = load %struct.opts*, %struct.opts** %4, align 8
  %19 = getelementptr inbounds %struct.opts, %struct.opts* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %56

29:                                               ; preds = %17
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  store i8* %39, i8** %8, align 8
  br label %55

40:                                               ; preds = %35, %29
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 45
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %9, align 8
  br label %54

51:                                               ; preds = %46, %40
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @usage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %51, %49
  br label %55

55:                                               ; preds = %54, %38
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %11

60:                                               ; preds = %11
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %60
  %67 = call i32 @usage(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* null)
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32*, i32** %3, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @git_remote_set_pushurl(i32* %72, i8* %73, i8* %74)
  store i32 %75, i32* %6, align 4
  br label %81

76:                                               ; preds = %68
  %77 = load i32*, i32** %3, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @git_remote_set_url(i32* %77, i8* %78, i8* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %6, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @check_lg2(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*, i8*) #1

declare dso_local i32 @git_remote_set_pushurl(i32*, i8*, i8*) #1

declare dso_local i32 @git_remote_set_url(i32*, i8*, i8*) #1

declare dso_local i32 @check_lg2(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
