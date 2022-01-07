; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcameofw.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcameofw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"M:S:V:R:k:K:I:r:o:hc\00", align 1
@optarg = common dso_local global i8* null, align 8
@model = common dso_local global i8* null, align 8
@signature = common dso_local global i8* null, align 8
@version = common dso_local global i8* null, align 8
@region = common dso_local global i8* null, align 8
@kernel_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@kernel_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s is invalid '%s'\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"kernel size\00", align 1
@image_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"image size\00", align 1
@rootfs_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@combined = common dso_local global i32 0, align 4
@ofname = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @basename(i8* %11)
  store i32 %12, i32* @progname, align 4
  br label %13

13:                                               ; preds = %2, %59
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %60

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %56 [
    i32 77, label %22
    i32 83, label %24
    i32 86, label %26
    i32 82, label %28
    i32 107, label %30
    i32 75, label %32
    i32 73, label %40
    i32 114, label %48
    i32 99, label %50
    i32 111, label %51
    i32 104, label %53
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @model, align 8
  br label %59

24:                                               ; preds = %20
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @signature, align 8
  br label %59

26:                                               ; preds = %20
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** @version, align 8
  br label %59

28:                                               ; preds = %20
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** @region, align 8
  br label %59

30:                                               ; preds = %20
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kernel_info, i32 0, i32 0), align 8
  br label %59

32:                                               ; preds = %20
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @str2u32(i8* %33, i32* @kernel_size)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  br label %67

39:                                               ; preds = %32
  br label %59

40:                                               ; preds = %20
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @str2u32(i8* %41, i32* @image_size)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %67

47:                                               ; preds = %40
  br label %59

48:                                               ; preds = %20
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rootfs_info, i32 0, i32 0), align 8
  br label %59

50:                                               ; preds = %20
  store i32 1, i32* @combined, align 4
  br label %59

51:                                               ; preds = %20
  %52 = load i8*, i8** @optarg, align 8
  store i8* %52, i8** @ofname, align 8
  br label %59

53:                                               ; preds = %20
  %54 = load i32, i32* @EXIT_SUCCESS, align 4
  %55 = call i32 @usage(i32 %54)
  br label %59

56:                                               ; preds = %20
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 @usage(i32 %57)
  br label %59

59:                                               ; preds = %56, %53, %51, %50, %48, %47, %39, %30, %28, %26, %24, %22
  br label %13

60:                                               ; preds = %19
  %61 = call i32 (...) @check_options()
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @build_fw()
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %64, %44, %36
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @str2u32(i8*, i32*) #1

declare dso_local i32 @ERR(i8*, i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @build_fw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
