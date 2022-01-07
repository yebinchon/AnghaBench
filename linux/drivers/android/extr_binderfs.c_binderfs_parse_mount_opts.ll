; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_parse_mount_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_parse_mount_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binderfs_mount_opts = type { i32, i32 }

@BINDERFS_MAX_MINOR = common dso_local global i32 0, align 4
@STATS_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@STATS_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid mount options\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.binderfs_mount_opts*)* @binderfs_parse_mount_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binderfs_parse_mount_opts(i8* %0, %struct.binderfs_mount_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.binderfs_mount_opts*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.binderfs_mount_opts* %1, %struct.binderfs_mount_opts** %5, align 8
  %13 = load i32, i32* @BINDERFS_MAX_MINOR, align 4
  %14 = load %struct.binderfs_mount_opts*, %struct.binderfs_mount_opts** %5, align 8
  %15 = getelementptr inbounds %struct.binderfs_mount_opts, %struct.binderfs_mount_opts* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @STATS_NONE, align 4
  %17 = load %struct.binderfs_mount_opts*, %struct.binderfs_mount_opts** %5, align 8
  %18 = getelementptr inbounds %struct.binderfs_mount_opts, %struct.binderfs_mount_opts* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %92, %89, %2
  %20 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %93

22:                                               ; preds = %19
  %23 = load i32, i32* @MAX_OPT_ARGS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 2, i32* %12, align 4
  br label %89

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @tokens, align 4
  %34 = call i32 @match_token(i8* %32, i32 %33, i32* %26)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %84 [
    i32 129, label %36
    i32 128, label %54
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds i32, i32* %26, i64 0
  %38 = call i32 @match_int(i32* %37, i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @BINDERFS_MAX_MINOR, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %40, %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %89

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.binderfs_mount_opts*, %struct.binderfs_mount_opts** %5, align 8
  %53 = getelementptr inbounds %struct.binderfs_mount_opts, %struct.binderfs_mount_opts* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %88

54:                                               ; preds = %31
  %55 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %56 = call i32 @capable(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %89

61:                                               ; preds = %54
  %62 = getelementptr inbounds i32, i32* %26, i64 0
  %63 = call i8* @match_strdup(i32* %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %89

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %89

78:                                               ; preds = %69
  %79 = load i32, i32* @STATS_GLOBAL, align 4
  %80 = load %struct.binderfs_mount_opts*, %struct.binderfs_mount_opts** %5, align 8
  %81 = getelementptr inbounds %struct.binderfs_mount_opts, %struct.binderfs_mount_opts* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @kfree(i8* %82)
  br label %88

84:                                               ; preds = %31
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %89

88:                                               ; preds = %78, %50
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %84, %73, %66, %58, %47, %30
  %90 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %12, align 4
  switch i32 %91, label %96 [
    i32 0, label %92
    i32 2, label %19
    i32 1, label %94
  ]

92:                                               ; preds = %89
  br label %19

93:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i32, i32* %3, align 4
  ret i32 %95

96:                                               ; preds = %89
  unreachable
}

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i8* @match_strdup(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
