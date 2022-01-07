; ModuleID = '/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_cal_extract.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/fritz-tools/src/extr_fritz_cal_extract.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_entry = type { i32, i32 }

@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"s:e:o:l:i:\00", align 1
@optarg = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to parse seek offset\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to entry id\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to create output file\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed to parse limit\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Failed to parse skip\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to seek to calibration table\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [57 x i8] c"Reached end of file, but didn't find the matching entry\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Failure during seek\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"Reached end of filesystem, but didn't find the matching entry\0A\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cal_entry, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = bitcast %struct.cal_entry* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i32*, i32** @stdin, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** @stdout, align 8
  store i32* %17, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %18

18:                                               ; preds = %70, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %14, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %68 [
    i32 115, label %25
    i32 101, label %34
    i32 111, label %44
    i32 108, label %52
    i32 105, label %60
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i64 @get_num(i8* %26)
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %168

33:                                               ; preds = %25
  br label %70

34:                                               ; preds = %23
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i64 @get_num(i8* %35)
  %37 = call i64 @htobe16(i64 %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %168

43:                                               ; preds = %34
  br label %70

44:                                               ; preds = %23
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %168

51:                                               ; preds = %44
  br label %70

52:                                               ; preds = %23
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i64 @get_num(i8* %53)
  store i64 %54, i64* %9, align 8
  %55 = load i32, i32* @errno, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %168

59:                                               ; preds = %52
  br label %70

60:                                               ; preds = %23
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i64 @get_num(i8* %61)
  store i64 %62, i64* %10, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %168

67:                                               ; preds = %60
  br label %70

68:                                               ; preds = %23
  %69 = call i32 (...) @usage()
  br label %70

70:                                               ; preds = %68, %67, %59, %51, %43, %33
  br label %18

71:                                               ; preds = %18
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (...) @usage()
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i32, i32* @optind, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32* @fopen(i8* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %168

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %79, %76
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SEEK_CUR, align 4
  %102 = call i32 @fseek(i32* %99, i32 %100, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 @perror(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %168

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %146, %108
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds %struct.cal_entry, %struct.cal_entry* %6, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @be16toh(i32 %112)
  %114 = load i32, i32* @SEEK_CUR, align 4
  %115 = call i32 @fseek(i32* %110, i32 %113, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = call i64 @feof(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 @fprintf(i32 %120, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  br label %168

122:                                              ; preds = %109
  %123 = load i32*, i32** %7, align 8
  %124 = call i64 @ferror(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %168

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @fread(%struct.cal_entry* %6, i32 1, i32 8, i32* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp ne i64 %133, 8
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %168

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %12, align 4
  %139 = getelementptr inbounds %struct.cal_entry, %struct.cal_entry* %6, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.cal_entry, %struct.cal_entry* %6, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 65535
  br label %146

146:                                              ; preds = %142, %137
  %147 = phi i1 [ true, %137 ], [ %145, %142 ]
  br i1 %147, label %109, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.cal_entry, %struct.cal_entry* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 65535
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 @fprintf(i32 %153, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0))
  br label %168

155:                                              ; preds = %148
  %156 = load i32*, i32** %7, align 8
  %157 = load i32*, i32** %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @inf(i32* %156, i32* %157, i64 %158, i64 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @Z_OK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %170

165:                                              ; preds = %155
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @zerr(i32 %166)
  br label %168

168:                                              ; preds = %165, %152, %135, %126, %119, %105, %92, %65, %57, %49, %41, %31
  %169 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %168, %164
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @fclose(i32* %171)
  %173 = load i32*, i32** %8, align 8
  %174 = call i32 @fclose(i32* %173)
  %175 = load i32, i32* %13, align 4
  ret i32 %175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i64 @get_num(i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @htobe16(i64) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @be16toh(i32) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @fread(%struct.cal_entry*, i32, i32, i32*) #2

declare dso_local i32 @inf(i32*, i32*, i64, i64) #2

declare dso_local i32 @zerr(i32) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
