; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkrasimage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64 }

@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"b:k:o:r:s:v:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_name = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@kernel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@out = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@rootfs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@rootfs_size = common dso_local global i64 0, align 8
@version_name = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@rootfs_out = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

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
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @basename(i8* %10)
  store i32 %11, i32* @progname, align 4
  br label %12

12:                                               ; preds = %2, %40
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %41

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %37 [
    i32 98, label %21
    i32 104, label %23
    i32 107, label %26
    i32 111, label %28
    i32 114, label %30
    i32 115, label %32
    i32 118, label %35
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** @board_name, align 8
  br label %40

23:                                               ; preds = %19
  %24 = load i32, i32* @EXIT_SUCCESS, align 4
  %25 = call i32 @usage(i32 %24)
  br label %40

26:                                               ; preds = %19
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kernel, i32 0, i32 0), align 8
  br label %40

28:                                               ; preds = %19
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @out, i32 0, i32 0), align 8
  br label %40

30:                                               ; preds = %19
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs, i32 0, i32 1), align 8
  br label %40

32:                                               ; preds = %19
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64* @rootfs_size)
  br label %40

35:                                               ; preds = %19
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @version_name, align 8
  br label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @usage(i32 %38)
  br label %40

40:                                               ; preds = %37, %35, %32, %30, %28, %26, %23, %21
  br label %12

41:                                               ; preds = %18
  %42 = call i32 (...) @check_options()
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = call i32 @usage(i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i64, i64* @rootfs_size, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs, i32 0, i32 0), align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rootfs, i32 0, i32 0), align 8
  br label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @rootfs_size, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rootfs_out, i32 0, i32 0), align 8
  %58 = call i32 (...) @build_image()
  ret i32 %58
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @build_image(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
