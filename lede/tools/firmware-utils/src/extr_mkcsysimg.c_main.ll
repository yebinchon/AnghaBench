; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_FATAL = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@opterr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"b:B:c:dhkr:vw:x:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@invalid_causes_error = common dso_local global i64 0, align 8
@keep_invalid_images = common dso_local global i64 0, align 8
@verblevel = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid option: -%c\00", align 1
@optopt = common dso_local global i8* null, align 8
@board = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@ofname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid option: %s\00", align 1
@ERR_INVALID_IMAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"generation of invalid images \22%s\22 disabled\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"generating invalid image: \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Image file %s completed.\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @ERR_FATAL, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @basename(i8* %13)
  store i32 %14, i32* @progname, align 4
  store i64 0, i64* @opterr, align 8
  br label %15

15:                                               ; preds = %2, %62
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %63

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %55 [
    i32 98, label %24
    i32 99, label %24
    i32 114, label %24
    i32 120, label %24
    i32 119, label %28
    i32 100, label %43
    i32 107, label %44
    i32 66, label %45
    i32 118, label %49
    i32 104, label %52
  ]

24:                                               ; preds = %22, %22, %22, %22
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @parse_opt_block(i32 %25, i8* %26)
  store i32 %27, i32* %6, align 4
  br label %56

28:                                               ; preds = %22
  %29 = load i8*, i8** @optarg, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** @optarg, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @optind, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @optind, align 4
  store i8* null, i8** @optarg, align 8
  br label %39

39:                                               ; preds = %36, %31, %28
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @parse_opt_block(i32 %40, i8* %41)
  store i32 %42, i32* %6, align 4
  br label %56

43:                                               ; preds = %22
  store i64 0, i64* @invalid_causes_error, align 8
  br label %56

44:                                               ; preds = %22
  store i64 1, i64* @keep_invalid_images, align 8
  br label %56

45:                                               ; preds = %22
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @parse_opt_board(i32 %46, i8* %47)
  store i32 %48, i32* %6, align 4
  br label %56

49:                                               ; preds = %22
  %50 = load i32, i32* @verblevel, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @verblevel, align 4
  br label %56

52:                                               ; preds = %22
  %53 = load i32, i32* @EXIT_SUCCESS, align 4
  %54 = call i32 @usage(i32 %53)
  br label %56

55:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %52, %49, %45, %44, %43, %39, %24
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** @optopt, align 8
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %145

62:                                               ; preds = %56
  br label %15

63:                                               ; preds = %21
  %64 = load i32*, i32** @board, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %145

68:                                               ; preds = %63
  %69 = load i32, i32* @optind, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %145

74:                                               ; preds = %68
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* @optind, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @optind, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** @ofname, align 8
  %81 = load i32, i32* @optind, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* @optind, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  br label %145

91:                                               ; preds = %74
  %92 = call i32 (...) @process_blocks()
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @ERR_FATAL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %145

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @ERR_INVALID_IMAGE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load i64, i64* @invalid_causes_error, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @ERR_FATAL, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i64, i64* @keep_invalid_images, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i8*, i8** @ofname, align 8
  %111 = call i32 @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  br label %145

112:                                              ; preds = %106
  %113 = load i8*, i8** @ofname, align 8
  %114 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %97
  %116 = load i8*, i8** @ofname, align 8
  %117 = call i32* @fopen(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %117, i32** %9, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i8*, i8** @ofname, align 8
  %122 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @ERR_FATAL, align 4
  store i32 %123, i32* %8, align 4
  br label %145

124:                                              ; preds = %115
  %125 = load i32*, i32** %9, align 8
  %126 = call i64 @write_out_blocks(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @ERR_FATAL, align 4
  store i32 %129, i32* %8, align 4
  br label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** @ofname, align 8
  %132 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %128
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @fflush(i32* %134)
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @fclose(i32* %136)
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @ERR_FATAL, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i8*, i8** @ofname, align 8
  %143 = call i32 @unlink(i8* %142)
  br label %144

144:                                              ; preds = %141, %133
  br label %145

145:                                              ; preds = %144, %120, %109, %96, %84, %72, %66, %59
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ERR_FATAL, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %150, i32* %3, align 4
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_opt_block(i32, i8*) #1

declare dso_local i32 @parse_opt_board(i32, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @process_blocks(...) #1

declare dso_local i32 @WARN(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @ERRS(i8*, i8*) #1

declare dso_local i64 @write_out_blocks(i32*) #1

declare dso_local i32 @DBG(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
