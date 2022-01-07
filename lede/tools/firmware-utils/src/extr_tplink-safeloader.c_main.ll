; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_info = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"B:k:r:o:V:jSh:x:d:z:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"r%u\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"No factory/oem image given via -x <file>. Output directory is only valid with -x\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Can not extract an image without output directory. Use -d <dir>\00", align 1
@.str.4 = private unnamed_addr constant [93 x i8] c"Can not convert a factory/oem image into sysupgrade image without output file. Use -o <file>\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"no board has been specified\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"no kernel image has been specified\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"no rootfs image has been specified\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"no output filename has been specified\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"unsupported board %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device_info*, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = call i32 (...) @set_source_date_epoch()
  br label %19

19:                                               ; preds = %2, %57
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %58

26:                                               ; preds = %19
  %27 = load i32, i32* %17, align 4
  switch i32 %27, label %52 [
    i32 66, label %28
    i32 107, label %30
    i32 114, label %32
    i32 111, label %34
    i32 86, label %36
    i32 106, label %39
    i32 83, label %40
    i32 104, label %41
    i32 100, label %46
    i32 120, label %48
    i32 122, label %50
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %6, align 8
  br label %57

30:                                               ; preds = %26
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %7, align 8
  br label %57

32:                                               ; preds = %26
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** %8, align 8
  br label %57

34:                                               ; preds = %26
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** %9, align 8
  br label %57

36:                                               ; preds = %26
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  br label %57

39:                                               ; preds = %26
  store i32 1, i32* %13, align 4
  br label %57

40:                                               ; preds = %26
  store i32 1, i32* %14, align 4
  br label %57

41:                                               ; preds = %26
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @usage(i8* %44)
  store i32 0, i32* %3, align 4
  br label %129

46:                                               ; preds = %26
  %47 = load i8*, i8** @optarg, align 8
  store i8* %47, i8** %11, align 8
  br label %57

48:                                               ; preds = %26
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** %10, align 8
  br label %57

50:                                               ; preds = %26
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** %12, align 8
  br label %57

52:                                               ; preds = %26
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @usage(i8* %55)
  store i32 1, i32* %3, align 4
  br label %129

57:                                               ; preds = %50, %48, %46, %40, %39, %36, %34, %32, %30, %28
  br label %19

58:                                               ; preds = %25
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %61, %58
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @extract_firmware(i8* %75, i8* %76)
  br label %128

78:                                               ; preds = %61
  %79 = load i8*, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i8*, i8** %9, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @convert_firmware(i8* %87, i8* %88)
  br label %127

90:                                               ; preds = %78
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i8*, i8** %7, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i8*, i8** %6, align 8
  %112 = call %struct.device_info* @find_board(i8* %111)
  store %struct.device_info* %112, %struct.device_info** %16, align 8
  %113 = load %struct.device_info*, %struct.device_info** %16, align 8
  %114 = icmp eq %struct.device_info* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.device_info*, %struct.device_info** %16, align 8
  %126 = call i32 @build_image(i8* %119, i8* %120, i8* %121, i32 %122, i32 %123, i32 %124, %struct.device_info* %125)
  br label %127

127:                                              ; preds = %118, %86
  br label %128

128:                                              ; preds = %127, %74
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %52, %41
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @set_source_date_epoch(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @extract_firmware(i8*, i8*) #1

declare dso_local i32 @convert_firmware(i8*, i8*) #1

declare dso_local %struct.device_info* @find_board(i8*) #1

declare dso_local i32 @build_image(i8*, i8*, i8*, i32, i32, i32, %struct.device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
