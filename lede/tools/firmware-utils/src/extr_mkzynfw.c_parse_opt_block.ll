; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_parse_opt_block.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_parse_opt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_block = type { i32, i64, i32, i32* }

@MAX_ARG_LEN = common dso_local global i32 0, align 4
@MAX_ARG_COUNT = common dso_local global i32 0, align 4
@num_blocks = common dso_local global i64 0, align 8
@MAX_NUM_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"too many blocks specified\00", align 1
@blocks = common dso_local global %struct.fw_block* null, align 8
@bootext_block = common dso_local global %struct.fw_block* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"only one boot extension block allowed\00", align 1
@BLOCK_TYPE_BOOTEXT = common dso_local global i64 0, align 8
@BLOCK_TYPE_RAW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"no file specified in %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"invalid block align in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_block(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.fw_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @MAX_ARG_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @MAX_ARG_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i64, i64* @num_blocks, align 8
  %22 = load i64, i64* @MAX_NUM_BLOCKS, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

26:                                               ; preds = %2
  %27 = load %struct.fw_block*, %struct.fw_block** @blocks, align 8
  %28 = load i64, i64* @num_blocks, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @num_blocks, align 8
  %30 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %27, i64 %28
  store %struct.fw_block* %30, %struct.fw_block** %11, align 8
  %31 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  %32 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %31, i32 0, i32 0
  store i32 255, i32* %32, align 8
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %49 [
    i32 98, label %35
    i32 114, label %45
  ]

35:                                               ; preds = %26
  %36 = load %struct.fw_block*, %struct.fw_block** @bootext_block, align 8
  %37 = icmp ne %struct.fw_block* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %49

40:                                               ; preds = %35
  %41 = load i64, i64* @BLOCK_TYPE_BOOTEXT, align 8
  %42 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  %43 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  store %struct.fw_block* %44, %struct.fw_block** @bootext_block, align 8
  br label %49

45:                                               ; preds = %26
  %46 = load i64, i64* @BLOCK_TYPE_RAW, align 8
  %47 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  %48 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %26, %45, %40, %38
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @parse_arg(i8* %50, i8* %17, i8** %20)
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8*, i8** %20, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @is_empty_arg(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

63:                                               ; preds = %49
  %64 = load i8*, i8** %10, align 8
  %65 = call i32* @strdup(i8* %64)
  %66 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  %67 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  %69 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  %77 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BLOCK_TYPE_BOOTEXT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

82:                                               ; preds = %75
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8*, i8** %20, i64 %85
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i64 @is_empty_arg(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.fw_block*, %struct.fw_block** %11, align 8
  %94 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %93, i32 0, i32 2
  %95 = call i64 @str2u32(i8* %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %82
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %101, %97, %81, %72, %60, %24
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ERR(i8*, ...) #2

declare dso_local i32 @parse_arg(i8*, i8*, i8**) #2

declare dso_local i64 @is_empty_arg(i8*) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i64 @str2u32(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
