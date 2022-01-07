; ModuleID = '/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_wrt350nv2-builder.c_create_img_file.c'
source_filename = "/home/carl/AnghaBench/lede/tools/wrt350nv2-builder/src/extr_wrt350nv2-builder.c_create_img_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@img_hdr = common dso_local global i8* null, align 8
@fw_version = common dso_local global i32 0, align 4
@DEBUG_LVL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" adding img header\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"output file %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" adding zip file\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"input file %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" adding img eof byte\0A\00", align 1
@img_eof = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"A^gU*<>?RFY@#DR&Z\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c" writing md5 checksum into img header of file\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"output file %s: unspecified write error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_img_file(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [1 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** @img_hdr, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 50
  %16 = load i32, i32* @fw_version, align 4
  %17 = call i32 @memcpy(i8* %15, i32 %16, i32 2)
  %18 = load i8*, i8** @img_hdr, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 480
  %20 = call i32 @memset(i8* %19, i32 0, i32 16)
  %21 = call i32 @md5_init(i32* %8)
  %22 = load i32, i32* @DEBUG_LVL2, align 4
  %23 = call i32 @lprintf(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %52, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 512
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load i8*, i8** @img_hdr, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fputc(i8 zeroext %32, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @EOF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ferror(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %41, i8* %43)
  br label %55

45:                                               ; preds = %27
  %46 = load i8*, i8** @img_hdr, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to i32*
  %51 = call i32 @md5_append(i32* %8, i32* %50, i32 1)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %24

55:                                               ; preds = %38, %24
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %112, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @DEBUG_LVL2, align 4
  %60 = call i32 @lprintf(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %6, align 8
  %62 = call i32* @fopen(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @errno, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i8* @strerror(i32 %68)
  %70 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %67, i8* %69)
  br label %111

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %95, %71
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @fgetc(i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @EOF, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  store i8 %79, i8* %80, align 1
  %81 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @fputc(i8 zeroext %82, i32* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @EOF, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ferror(i32* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i8* @strerror(i32 %92)
  %94 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %91, i8* %93)
  br label %99

95:                                               ; preds = %77
  %96 = getelementptr inbounds [1 x i8], [1 x i8]* %13, i64 0, i64 0
  %97 = bitcast i8* %96 to i32*
  %98 = call i32 @md5_append(i32* %8, i32* %97, i32 1)
  br label %72

99:                                               ; preds = %88, %72
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @ferror(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @ferror(i32* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i8* @strerror(i32 %107)
  %109 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %106, i8* %108)
  br label %110

110:                                              ; preds = %103, %99
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111, %55
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @DEBUG_LVL2, align 4
  %117 = call i32 @lprintf(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i8*, i8** @img_eof, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @fputc(i8 zeroext %120, i32* %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @EOF, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @ferror(i32* %127)
  store i32 %128, i32* %7, align 4
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i8* @strerror(i32 %130)
  %132 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %129, i8* %131)
  br label %133

133:                                              ; preds = %126, %115
  %134 = load i8*, i8** @img_eof, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = call i32 @md5_append(i32* %8, i32* %135, i32 1)
  br label %137

137:                                              ; preds = %133, %112
  %138 = call i32 @md5_append(i32* %8, i32* bitcast ([18 x i8]* @.str.6 to i32*), i32 17)
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %140 = call i32 @md5_finish(i32* %8, i32* %139)
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %182, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @DEBUG_LVL2, align 4
  %145 = call i32 @lprintf(i32 %144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* @SEEK_SET, align 4
  %148 = call i32 @fseek(i32* %146, i32 480, i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = load i32, i32* @errno, align 4
  store i32 %152, i32* %7, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i8* @strerror(i32 %154)
  %156 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %153, i8* %155)
  br label %179

157:                                              ; preds = %143
  %158 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @fwrite(i32* %158, i32 16, i32 1, i32* %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 1
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @ferror(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @ferror(i32* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i8*, i8** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i8* @strerror(i32 %171)
  %173 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %170, i8* %172)
  br label %177

174:                                              ; preds = %163
  store i32 1, i32* %7, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %167
  br label %178

178:                                              ; preds = %177, %157
  br label %179

179:                                              ; preds = %178, %151
  %180 = load i32*, i32** %12, align 8
  %181 = call i32 @fclose(i32* %180)
  br label %182

182:                                              ; preds = %179, %137
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @md5_init(i32*) #1

declare dso_local i32 @lprintf(i32, i8*) #1

declare dso_local i32 @fputc(i8 zeroext, i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @md5_append(i32*, i32*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @md5_finish(i32*, i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
