; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_block.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_block = type { i32*, i32, i32, i32 }

@MAX_ARG_LEN = common dso_local global i32 0, align 4
@MAX_ARG_COUNT = common dso_local global i32 0, align 4
@fw_num_blocks = common dso_local global i64 0, align 8
@MAX_FW_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"too many blocks specified\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"processing block option %s, count %d\00", align 1
@fw_blocks = common dso_local global %struct.fw_block* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"no block address specified in %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid block address: %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"no block length specified in %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"invalid block length: %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"empty block %s\00", align 1
@BLOCK_FLAG_HAVEHDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid block flag \22%c\22\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"file name missing in %s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_block(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_block*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @MAX_ARG_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MAX_ARG_COUNT, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i8, i8* %4, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @required_arg(i8 signext %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %138

25:                                               ; preds = %2
  %26 = load i64, i64* @fw_num_blocks, align 8
  %27 = load i64, i64* @MAX_FW_BLOCKS, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %138

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @parse_arg(i8* %32, i8* %16, i8** %19)
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i8*, i8*, ...) @dbgmsg(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load %struct.fw_block*, %struct.fw_block** @fw_blocks, align 8
  %38 = load i64, i64* @fw_num_blocks, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @fw_num_blocks, align 8
  %40 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %37, i64 %38
  store %struct.fw_block* %40, %struct.fw_block** %10, align 8
  %41 = getelementptr inbounds i8*, i8** %19, i64 0
  %42 = load i8*, i8** %41, align 16
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @is_empty_arg(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %138

49:                                               ; preds = %31
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.fw_block*, %struct.fw_block** %10, align 8
  %52 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %51, i32 0, i32 3
  %53 = call i64 @str2u32(i8* %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %138

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds i8*, i8** %19, i64 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @is_empty_arg(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %138

68:                                               ; preds = %59
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.fw_block*, %struct.fw_block** %10, align 8
  %71 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %70, i32 0, i32 2
  %72 = call i64 @str2u32(i8* %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %75)
  br label %138

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 (i32, i8*, i8*, ...) @dbgmsg(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  br label %137

84:                                               ; preds = %78
  %85 = getelementptr inbounds i8*, i8** %19, i64 2
  %86 = load i8*, i8** %85, align 16
  store i8* %86, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i64 @is_empty_arg(i8* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %112, %90
  %92 = load i8*, i8** %11, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load i8*, i8** %11, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  switch i32 %99, label %106 [
    i32 104, label %100
  ]

100:                                              ; preds = %96
  %101 = load i32, i32* @BLOCK_FLAG_HAVEHDR, align 4
  %102 = load %struct.fw_block*, %struct.fw_block** %10, align 8
  %103 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %111

106:                                              ; preds = %96
  %107 = load i8*, i8** %11, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  br label %138

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %11, align 8
  br label %91

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %115, %84
  %117 = getelementptr inbounds i8*, i8** %19, i64 3
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %11, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = call i64 @is_empty_arg(i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %123)
  br label %138

125:                                              ; preds = %116
  %126 = load i8*, i8** %11, align 8
  %127 = call i32* @strdup(i8* %126)
  %128 = load %struct.fw_block*, %struct.fw_block** %10, align 8
  %129 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %128, i32 0, i32 0
  store i32* %127, i32** %129, align 8
  %130 = load %struct.fw_block*, %struct.fw_block** %10, align 8
  %131 = getelementptr inbounds %struct.fw_block, %struct.fw_block* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %138

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %81
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %139

138:                                              ; preds = %134, %122, %106, %74, %65, %55, %46, %29, %24
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %139

139:                                              ; preds = %138, %137
  %140 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @required_arg(i8 signext, i8*) #2

declare dso_local i32 @errmsg(i32, i8*, ...) #2

declare dso_local i32 @parse_arg(i8*, i8*, i8**) #2

declare dso_local i32 @dbgmsg(i32, i8*, i8*, ...) #2

declare dso_local i64 @is_empty_arg(i8*) #2

declare dso_local i64 @str2u32(i8*, i32*) #2

declare dso_local i32* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
