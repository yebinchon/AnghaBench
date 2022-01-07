; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_f_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_f_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@MAX_METAFILE_SIZE = common dso_local global i64 0, align 8
@metafile_alloc_threshold = common dso_local global i64 0, align 8
@http_port = common dso_local global i8* null, align 8
@test_mode = common dso_local global i32 0, align 4
@utf8_mode = common dso_local global i32 0, align 4
@word_split_utf8 = common dso_local global i32 0, align 4
@half_mem = common dso_local global i32 0, align 4
@list_large_metafiles = common dso_local global i32 0, align 4
@search_enabled = common dso_local global i32 0, align 4
@persistent_history_enabled = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i32 0, align 4
@hashtags_enabled = common dso_local global i32 0, align 4
@searchtags_enabled = common dso_local global i32 0, align 4
@MIN_HOLD_ONLINE_TIME = common dso_local global i32 0, align 4
@MAX_HOLD_ONLINE_TIME = common dso_local global i32 0, align 4
@hold_online_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %86 [
    i32 90, label %8
    i32 109, label %8
    i32 72, label %60
    i32 84, label %63
    i32 85, label %64
    i32 77, label %65
    i32 76, label %66
    i32 105, label %67
    i32 121, label %68
    i32 83, label %69
    i32 116, label %70
    i32 113, label %71
    i32 111, label %72
  ]

8:                                                ; preds = %1, %1
  store i8 0, i8* %5, align 1
  %9 = load i32, i32* @optarg, align 4
  %10 = call i32 @sscanf(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %4, i8* %5)
  %11 = icmp sge i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = or i32 %15, 32
  switch i32 %16, label %29 [
    i32 107, label %17
    i32 109, label %20
    i32 103, label %23
    i32 116, label %26
  ]

17:                                               ; preds = %8
  %18 = load i64, i64* %4, align 8
  %19 = shl i64 %18, 10
  store i64 %19, i64* %4, align 8
  br label %35

20:                                               ; preds = %8
  %21 = load i64, i64* %4, align 8
  %22 = shl i64 %21, 20
  store i64 %22, i64* %4, align 8
  br label %35

23:                                               ; preds = %8
  %24 = load i64, i64* %4, align 8
  %25 = shl i64 %24, 30
  store i64 %25, i64* %4, align 8
  br label %35

26:                                               ; preds = %8
  %27 = load i64, i64* %4, align 8
  %28 = shl i64 %27, 40
  store i64 %28, i64* %4, align 8
  br label %35

29:                                               ; preds = %8
  %30 = load i8, i8* %5, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %29, %26, %23, %20, %17
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 90
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* %4, align 8
  %40 = icmp sge i64 %39, 1048576
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = icmp sle i64 %42, 21474836480
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* @dynamic_data_buffer_size, align 8
  br label %59

46:                                               ; preds = %41, %38, %35
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 109
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @MAX_METAFILE_SIZE, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i64, i64* %4, align 8
  %55 = icmp slt i64 %54, 17179869184
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %4, align 8
  store i64 %57, i64* @metafile_alloc_threshold, align 8
  br label %58

58:                                               ; preds = %56, %53, %49, %46
  br label %59

59:                                               ; preds = %58, %44
  br label %87

60:                                               ; preds = %1
  %61 = load i32, i32* @optarg, align 4
  %62 = call i8* @atoi(i32 %61)
  store i8* %62, i8** @http_port, align 8
  br label %87

63:                                               ; preds = %1
  store i32 1, i32* @test_mode, align 4
  br label %87

64:                                               ; preds = %1
  store i32 1, i32* @utf8_mode, align 4
  store i32 1, i32* @word_split_utf8, align 4
  br label %87

65:                                               ; preds = %1
  store i32 1, i32* @half_mem, align 4
  br label %87

66:                                               ; preds = %1
  store i32 1, i32* @list_large_metafiles, align 4
  br label %87

67:                                               ; preds = %1
  store i32 1, i32* @search_enabled, align 4
  br label %87

68:                                               ; preds = %1
  store i32 1, i32* @persistent_history_enabled, align 4
  br label %87

69:                                               ; preds = %1
  store i32 1, i32* @use_stemmer, align 4
  br label %87

70:                                               ; preds = %1
  store i32 1, i32* @hashtags_enabled, align 4
  br label %87

71:                                               ; preds = %1
  store i32 1, i32* @searchtags_enabled, align 4
  br label %87

72:                                               ; preds = %1
  %73 = load i32, i32* @optarg, align 4
  %74 = call i8* @atoi(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MIN_HOLD_ONLINE_TIME, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @MAX_HOLD_ONLINE_TIME, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* @hold_online_time, align 4
  br label %85

85:                                               ; preds = %83, %79, %72
  br label %87

86:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %88

87:                                               ; preds = %85, %71, %70, %69, %68, %67, %66, %65, %64, %63, %60, %59
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i64*, i8*) #1

declare dso_local i8* @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
