; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdniimg.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkdniimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"B:i:o:v:r:H:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_id = common dso_local global i8* null, align 8
@ifname = common dso_local global i32* null, align 8
@ofname = common dso_local global i32* null, align 8
@version = common dso_local global i8* null, align 8
@region = common dso_local global i8* null, align 8
@hd_id = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no board specified\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"no input file specified\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"stat failed on %s\00", align 1
@DNI_HDR_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"no memory for buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"device:%s\0Aversion:V%s\0Aregion:%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"hd_id:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for reading\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"unable to read from file %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"could not open \22%s\22 for writing\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"unable to write to file %s\00", align 1

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
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @basename(i8* %21)
  store i32 %22, i32* @progname, align 4
  br label %23

23:                                               ; preds = %2, %52
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %53

30:                                               ; preds = %23
  %31 = load i32, i32* %17, align 4
  switch i32 %31, label %49 [
    i32 66, label %32
    i32 105, label %34
    i32 111, label %37
    i32 118, label %40
    i32 114, label %42
    i32 72, label %44
    i32 104, label %46
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @board_id, align 8
  br label %52

34:                                               ; preds = %30
  %35 = load i8*, i8** @optarg, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** @ifname, align 8
  br label %52

37:                                               ; preds = %30
  %38 = load i8*, i8** @optarg, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @ofname, align 8
  br label %52

40:                                               ; preds = %30
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** @version, align 8
  br label %52

42:                                               ; preds = %30
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** @region, align 8
  br label %52

44:                                               ; preds = %30
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @hd_id, align 8
  br label %52

46:                                               ; preds = %30
  %47 = load i32, i32* @EXIT_SUCCESS, align 4
  %48 = call i32 @usage(i32 %47)
  br label %52

49:                                               ; preds = %30
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @usage(i32 %50)
  br label %52

52:                                               ; preds = %49, %46, %44, %42, %40, %37, %34, %32
  br label %23

53:                                               ; preds = %29
  %54 = load i8*, i8** @board_id, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %212

58:                                               ; preds = %53
  %59 = load i32*, i32** @ifname, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %212

63:                                               ; preds = %58
  %64 = load i32*, i32** @ofname, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %212

68:                                               ; preds = %63
  %69 = load i32*, i32** @ifname, align 8
  %70 = call i32 @stat(i32* %69, %struct.stat* %9)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** @ifname, align 8
  %75 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %74)
  br label %212

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DNI_HDR_LEN, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i8* @malloc(i32 %82)
  store i8* %83, i8** %10, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %212

88:                                               ; preds = %76
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* @DNI_HDR_LEN, align 4
  %91 = call i32 @memset(i8* %89, i32 0, i32 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* @DNI_HDR_LEN, align 4
  %94 = load i8*, i8** @board_id, align 8
  %95 = load i8*, i8** @version, align 8
  %96 = load i8*, i8** @region, align 8
  %97 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %92, i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %94, i8* %95, i8* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @DNI_HDR_LEN, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %88
  %104 = load i32, i32* %12, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i8*, i8** @hd_id, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i32, i32* %12, align 4
  %115 = load i8*, i8** @hd_id, align 8
  %116 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %113, i32 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %109, %106, %103, %88
  %118 = load i32*, i32** @ifname, align 8
  %119 = call i32* @fopen(i32* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %119, i32** %16, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32*, i32** @ifname, align 8
  %124 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32* %123)
  br label %209

125:                                              ; preds = %117
  store i64 0, i64* @errno, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* @DNI_HDR_LEN, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = call i32 @fread(i8* %129, i32 %131, i32 1, i32* %132)
  %134 = load i64, i64* @errno, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %125
  %137 = load i32*, i32** @ifname, align 8
  %138 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32* %137)
  br label %206

139:                                              ; preds = %125
  store i8 0, i8* %14, align 1
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %158, %139
  %141 = load i32, i32* %13, align 4
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DNI_HDR_LEN, align 4
  %145 = add nsw i32 %143, %144
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %140
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* %14, align 1
  %155 = sext i8 %154 to i32
  %156 = add nsw i32 %155, %153
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %14, align 1
  br label %158

158:                                              ; preds = %147
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %140

161:                                              ; preds = %140
  %162 = load i8, i8* %14, align 1
  %163 = sext i8 %162 to i32
  %164 = sub nsw i32 255, %163
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %14, align 1
  %166 = load i8, i8* %14, align 1
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @DNI_HDR_LEN, align 4
  %171 = add nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %167, i64 %172
  store i8 %166, i8* %173, align 1
  %174 = load i32*, i32** @ofname, align 8
  %175 = call i32* @fopen(i32* %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %175, i32** %15, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %161
  %179 = load i32*, i32** @ofname, align 8
  %180 = call i32 @ERRS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32* %179)
  br label %206

181:                                              ; preds = %161
  store i64 0, i64* @errno, align 8
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load i32*, i32** %15, align 8
  %185 = call i32 @fwrite(i8* %182, i32 %183, i32 1, i32* %184)
  %186 = load i64, i64* @errno, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32*, i32** @ofname, align 8
  %190 = call i32 @ERRS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32* %189)
  br label %196

191:                                              ; preds = %181
  %192 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %191
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @fflush(i32* %194)
  br label %196

196:                                              ; preds = %193, %188
  %197 = load i32*, i32** %15, align 8
  %198 = call i32 @fclose(i32* %197)
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @EXIT_SUCCESS, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32*, i32** @ofname, align 8
  %204 = call i32 @unlink(i32* %203)
  br label %205

205:                                              ; preds = %202, %196
  br label %206

206:                                              ; preds = %205, %178, %136
  %207 = load i32*, i32** %16, align 8
  %208 = call i32 @fclose(i32* %207)
  br label %209

209:                                              ; preds = %206, %122
  %210 = load i8*, i8** %10, align 8
  %211 = call i32 @free(i8* %210)
  br label %212

212:                                              ; preds = %209, %86, %73, %66, %61, %56
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @ERRS(i8*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

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
