; ModuleID = '/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/fwtool/src/extr_fwtool.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"i:I:qs:S:t\00", align 1
@signature_file = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@MODE_APPEND = common dso_local global i32 0, align 4
@metadata_file = common dso_local global i64 0, align 8
@MODE_EXTRACT = common dso_local global i32 0, align 4
@truncate_file = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@file_mode = common dso_local global i64 0, align 8
@MODE_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Cannot append/extract metadata and signature in one run\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* @crc_table, align 4
  %13 = call i32 @crc32_filltable(i32 %12)
  br label %14

14:                                               ; preds = %43, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %39 [
    i32 83, label %21
    i32 73, label %25
    i32 115, label %29
    i32 105, label %33
    i32 116, label %37
    i32 113, label %38
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @optarg, align 4
  %23 = load i32, i32* @MODE_APPEND, align 4
  %24 = call i32 @set_file(i64* @signature_file, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %39

25:                                               ; preds = %19
  %26 = load i32, i32* @optarg, align 4
  %27 = load i32, i32* @MODE_APPEND, align 4
  %28 = call i32 @set_file(i64* @metadata_file, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %39

29:                                               ; preds = %19
  %30 = load i32, i32* @optarg, align 4
  %31 = load i32, i32* @MODE_EXTRACT, align 4
  %32 = call i32 @set_file(i64* @signature_file, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %19
  %34 = load i32, i32* @optarg, align 4
  %35 = load i32, i32* @MODE_EXTRACT, align 4
  %36 = call i32 @set_file(i64* @metadata_file, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %39

37:                                               ; preds = %19
  store i32 1, i32* @truncate_file, align 4
  br label %39

38:                                               ; preds = %19
  store i32 1, i32* @quiet, align 4
  br label %39

39:                                               ; preds = %19, %38, %37, %33, %29, %25, %21
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %84

43:                                               ; preds = %39
  br label %14

44:                                               ; preds = %14
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @usage(i8* %49)
  store i32 %50, i32* %7, align 4
  br label %84

51:                                               ; preds = %44
  %52 = load i64, i64* @file_mode, align 8
  %53 = load i64, i64* @MODE_DEFAULT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @usage(i8* %56)
  store i32 %57, i32* %7, align 4
  br label %84

58:                                               ; preds = %51
  %59 = load i64, i64* @signature_file, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* @metadata_file, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @msg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %87

66:                                               ; preds = %61, %58
  %67 = load i64, i64* @file_mode, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* @optind, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @add_data(i8* %74)
  store i32 %75, i32* %7, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load i8**, i8*** %5, align 8
  %78 = load i32, i32* @optind, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @extract_data(i8* %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83, %55, %48, %42
  %85 = call i32 (...) @cleanup()
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %64
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @crc32_filltable(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @set_file(i64*, i32, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @msg(i8*) #1

declare dso_local i32 @add_data(i8*) #1

declare dso_local i32 @extract_data(i8*) #1

declare dso_local i32 @cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
