; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbuffaloimg.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbuffaloimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"B:i:o:v:r:R:K:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_id = common dso_local global i8* null, align 8
@ifname = common dso_local global i32* null, align 8
@ofname = common dso_local global i32* null, align 8
@version = common dso_local global i8* null, align 8
@region = common dso_local global i8* null, align 8
@rootfs_size = common dso_local global i8* null, align 8
@kernel_size = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no rootfs_size specified\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no kernel_size specified\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@DNI_HDR_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"device:%s\0Aversion:%s\0Aregion:%s\0ARootfsSize:%s\0AKernelSize:%s\0AInfoHeadSize:128\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"unable to write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @basename(i8* %19)
  store i32 %20, i32* @progname, align 4
  br label %21

21:                                               ; preds = %2, %52
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %53

28:                                               ; preds = %21
  %29 = load i32, i32* %15, align 4
  switch i32 %29, label %49 [
    i32 66, label %30
    i32 105, label %32
    i32 111, label %35
    i32 118, label %38
    i32 114, label %40
    i32 82, label %42
    i32 75, label %44
    i32 104, label %46
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** @board_id, align 8
  br label %52

32:                                               ; preds = %28
  %33 = load i8*, i8** @optarg, align 8
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** @ifname, align 8
  br label %52

35:                                               ; preds = %28
  %36 = load i8*, i8** @optarg, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** @ofname, align 8
  br label %52

38:                                               ; preds = %28
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** @version, align 8
  br label %52

40:                                               ; preds = %28
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** @region, align 8
  br label %52

42:                                               ; preds = %28
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** @rootfs_size, align 8
  br label %52

44:                                               ; preds = %28
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @kernel_size, align 8
  br label %52

46:                                               ; preds = %28
  %47 = load i32, i32* @EXIT_SUCCESS, align 4
  %48 = call i32 @usage(i32 %47)
  br label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @usage(i32 %50)
  br label %52

52:                                               ; preds = %49, %46, %44, %42, %40, %38, %35, %32, %30
  br label %21

53:                                               ; preds = %27
  %54 = load i8*, i8** @board_id, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %210

58:                                               ; preds = %53
  %59 = load i8*, i8** @rootfs_size, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %210

63:                                               ; preds = %58
  %64 = load i8*, i8** @kernel_size, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %210

68:                                               ; preds = %63
  %69 = load i32*, i32** @ifname, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %210

73:                                               ; preds = %68
  %74 = load i32*, i32** @ofname, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %210

78:                                               ; preds = %73
  %79 = load i32*, i32** @ifname, align 8
  %80 = call i32 @stat(i32* %79, %struct.stat* %9)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** @ifname, align 8
  %85 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %84)
  br label %210

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DNI_HDR_LEN, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i8* @malloc(i32 %92)
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %86
  %97 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %210

98:                                               ; preds = %86
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @DNI_HDR_LEN, align 4
  %101 = call i32 @memset(i8* %99, i32 0, i32 %100)
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* @DNI_HDR_LEN, align 4
  %104 = load i8*, i8** @board_id, align 8
  %105 = load i8*, i8** @version, align 8
  %106 = load i8*, i8** @region, align 8
  %107 = load i8*, i8** @rootfs_size, align 8
  %108 = load i8*, i8** @kernel_size, align 8
  %109 = call i32 @snprintf(i8* %102, i32 %103, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i8* %104, i8* %105, i8* %106, i8* %107, i8* %108)
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* @DNI_HDR_LEN, align 4
  %112 = sub nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 18, i8* %114, align 1
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* @DNI_HDR_LEN, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8 50, i8* %119, align 1
  %120 = load i32*, i32** @ifname, align 8
  %121 = call i32* @fopen(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32* %121, i32** %14, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %98
  %125 = load i32*, i32** @ifname, align 8
  %126 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32* %125)
  br label %207

127:                                              ; preds = %98
  store i64 0, i64* @errno, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @DNI_HDR_LEN, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = call i32 @fread(i8* %131, i32 %133, i32 1, i32* %134)
  %136 = load i64, i64* @errno, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %127
  %139 = load i32*, i32** @ifname, align 8
  %140 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32* %139)
  br label %204

141:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %158, %141
  %143 = load i32, i32* %11, align 4
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @DNI_HDR_LEN, align 4
  %147 = add nsw i32 %145, %146
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %142
  %150 = load i8*, i8** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %12, align 4
  br label %158

158:                                              ; preds = %149
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %142

161:                                              ; preds = %142
  %162 = load i32, i32* %12, align 4
  %163 = sub nsw i32 255, %162
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %10, align 8
  %167 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @DNI_HDR_LEN, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %166, i64 %171
  store i8 %165, i8* %172, align 1
  %173 = load i32*, i32** @ofname, align 8
  %174 = call i32* @fopen(i32* %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %174, i32** %13, align 8
  %175 = load i32*, i32** %13, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %161
  %178 = load i32*, i32** @ofname, align 8
  %179 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32* %178)
  br label %204

180:                                              ; preds = %161
  store i64 0, i64* @errno, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = call i32 @fwrite(i8* %181, i32 %182, i32 1, i32* %183)
  %185 = load i64, i64* @errno, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load i32*, i32** @ofname, align 8
  %189 = call i32 @ERRS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32* %188)
  br label %194

190:                                              ; preds = %180
  %191 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %191, i32* %6, align 4
  %192 = load i32*, i32** %13, align 8
  %193 = call i32 @fflush(i32* %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @fclose(i32* %195)
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @EXIT_SUCCESS, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i32*, i32** @ofname, align 8
  %202 = call i32 @unlink(i32* %201)
  br label %203

203:                                              ; preds = %200, %194
  br label %204

204:                                              ; preds = %203, %177, %138
  %205 = load i32*, i32** %14, align 8
  %206 = call i32 @fclose(i32* %205)
  br label %207

207:                                              ; preds = %204, %124
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 @free(i8* %208)
  br label %210

210:                                              ; preds = %207, %96, %83, %76, %71, %66, %61, %56
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
