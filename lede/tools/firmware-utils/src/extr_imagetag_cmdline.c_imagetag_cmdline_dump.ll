; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_dump.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_imagetag_cmdline_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gengetopt_args_info = type { i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: cannot dump options to stream\0A\00", align 1
@IMAGETAG_CMDLINE_PACKAGE = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cfe\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"boardid\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"chipid\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"flash-start\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"image-offset\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"tag-version\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"signature2\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"load-addr\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"layoutver\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"info1\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"altinfo\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"root-first\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"rsa-signature\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"second-image-flag\00", align 1
@imagetag_cmdline_second_image_flag_values = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@imagetag_cmdline_inactive_values = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"reserved2\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"kernel-file-has-header\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"align-rootfs\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imagetag_cmdline_dump(i32* %0, %struct.gengetopt_args_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gengetopt_args_info*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.gengetopt_args_info* %1, %struct.gengetopt_args_info** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** @IMAGETAG_CMDLINE_PACKAGE, align 8
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %13, i32* %3, align 4
  br label %312

14:                                               ; preds = %2
  %15 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %16 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %15, i32 0, i32 50
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @write_into_file(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %24 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %23, i32 0, i32 49
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @write_into_file(i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %32 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %31, i32 0, i32 48
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %38 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %37, i32 0, i32 47
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @write_into_file(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 0)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %43 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %42, i32 0, i32 46
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %49 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %48, i32 0, i32 45
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @write_into_file(i32* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 0)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %54 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %53, i32 0, i32 44
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %60 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %59, i32 0, i32 43
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @write_into_file(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 0)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %65 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %64, i32 0, i32 42
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %71 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %70, i32 0, i32 41
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @write_into_file(i32* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 0)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %76 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %75, i32 0, i32 40
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %82 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %81, i32 0, i32 39
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @write_into_file(i32* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %83, i32 0)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %87 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %86, i32 0, i32 38
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %93 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %92, i32 0, i32 37
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @write_into_file(i32* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %94, i32 0)
  br label %96

96:                                               ; preds = %90, %85
  %97 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %98 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %97, i32 0, i32 36
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %104 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %103, i32 0, i32 35
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @write_into_file(i32* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %105, i32 0)
  br label %107

107:                                              ; preds = %101, %96
  %108 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %109 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %108, i32 0, i32 34
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %115 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %114, i32 0, i32 33
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @write_into_file(i32* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %116, i32 0)
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %120 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %119, i32 0, i32 32
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32*, i32** %4, align 8
  %125 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %126 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %125, i32 0, i32 31
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @write_into_file(i32* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %127, i32 0)
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %131 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %130, i32 0, i32 30
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32*, i32** %4, align 8
  %136 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %137 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %136, i32 0, i32 29
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @write_into_file(i32* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %138, i32 0)
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %142 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %141, i32 0, i32 28
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32*, i32** %4, align 8
  %147 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %148 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %147, i32 0, i32 27
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @write_into_file(i32* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %149, i32 0)
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %153 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %152, i32 0, i32 26
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32*, i32** %4, align 8
  %158 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %159 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %158, i32 0, i32 25
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @write_into_file(i32* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %160, i32 0)
  br label %162

162:                                              ; preds = %156, %151
  %163 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %164 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %163, i32 0, i32 24
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load i32*, i32** %4, align 8
  %169 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %170 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %169, i32 0, i32 23
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @write_into_file(i32* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %171, i32 0)
  br label %173

173:                                              ; preds = %167, %162
  %174 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %175 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %174, i32 0, i32 22
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i32*, i32** %4, align 8
  %180 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %181 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %180, i32 0, i32 21
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @write_into_file(i32* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %182, i32 0)
  br label %184

184:                                              ; preds = %178, %173
  %185 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %186 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %185, i32 0, i32 20
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i32*, i32** %4, align 8
  %191 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %192 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %191, i32 0, i32 19
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @write_into_file(i32* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %193, i32 0)
  br label %195

195:                                              ; preds = %189, %184
  %196 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %197 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %196, i32 0, i32 18
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32*, i32** %4, align 8
  %202 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %203 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %202, i32 0, i32 17
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @write_into_file(i32* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %204, i32 0)
  br label %206

206:                                              ; preds = %200, %195
  %207 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %208 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %207, i32 0, i32 16
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i32*, i32** %4, align 8
  %213 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %214 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %213, i32 0, i32 15
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @write_into_file(i32* %212, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %215, i32 0)
  br label %217

217:                                              ; preds = %211, %206
  %218 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %219 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %218, i32 0, i32 14
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32*, i32** %4, align 8
  %224 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %225 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %224, i32 0, i32 13
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @write_into_file(i32* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 %226, i32 0)
  br label %228

228:                                              ; preds = %222, %217
  %229 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %230 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %229, i32 0, i32 12
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @write_into_file(i32* %234, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 0)
  br label %236

236:                                              ; preds = %233, %228
  %237 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %238 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %237, i32 0, i32 11
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = load i32*, i32** %4, align 8
  %243 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %244 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %243, i32 0, i32 10
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @write_into_file(i32* %242, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %245, i32 0)
  br label %247

247:                                              ; preds = %241, %236
  %248 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %249 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %248, i32 0, i32 9
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load i32*, i32** %4, align 8
  %254 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %255 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @imagetag_cmdline_second_image_flag_values, align 4
  %258 = call i32 @write_into_file(i32* %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %256, i32 %257)
  br label %259

259:                                              ; preds = %252, %247
  %260 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %261 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %260, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load i32*, i32** %4, align 8
  %266 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %267 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @imagetag_cmdline_inactive_values, align 4
  %270 = call i32 @write_into_file(i32* %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %264, %259
  %272 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %273 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %272, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %271
  %277 = load i32*, i32** %4, align 8
  %278 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %279 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @write_into_file(i32* %277, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 %280, i32 0)
  br label %282

282:                                              ; preds = %276, %271
  %283 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %284 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32*, i32** %4, align 8
  %289 = call i32 @write_into_file(i32* %288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 0, i32 0)
  br label %290

290:                                              ; preds = %287, %282
  %291 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %292 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %290
  %296 = load i32*, i32** %4, align 8
  %297 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %298 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @write_into_file(i32* %296, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %299, i32 0)
  br label %301

301:                                              ; preds = %295, %290
  %302 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %5, align 8
  %303 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load i32*, i32** %4, align 8
  %308 = call i32 @write_into_file(i32* %307, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i32 0, i32 0)
  br label %309

309:                                              ; preds = %306, %301
  %310 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %310, i32* %6, align 4
  %311 = load i32, i32* %6, align 4
  store i32 %311, i32* %3, align 4
  br label %312

312:                                              ; preds = %309, %9
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @write_into_file(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
