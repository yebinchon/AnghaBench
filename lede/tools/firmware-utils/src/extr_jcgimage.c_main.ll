; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_jcgimage.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_jcgimage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jcg_header = type { i32 }
%struct.uimage_header = type { i32 }

@MODE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"o:k:f:u:v:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@MODE_UIMAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"-k cannot be combined with -u\00", align 1
@MODE_KR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"-f cannot be combined with -u\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"-u cannot be combined with -k and -r\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"illegal arg \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"specify either -u or -k and -r\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"need -k and -r\00", align 1
@MAXSIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"payload too large: %zd > %zd\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"cannot open \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"cannot grow \22%s\22 to %zd bytes\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"cannot mmap \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"cannot copy %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.jcg_header*, align 8
  %7 = alloca %struct.uimage_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %24 = load i32, i32* @MODE_UNKNOWN, align 4
  store i32 %24, i32* %13, align 4
  %25 = call i32 @assert(i32 0)
  %26 = call i32 @assert(i32 0)
  %27 = call i32 (...) @set_source_date_epoch()
  br label %28

28:                                               ; preds = %69, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %67 [
    i32 111, label %35
    i32 107, label %37
    i32 102, label %46
    i32 117, label %55
    i32 118, label %64
    i32 104, label %66
  ]

35:                                               ; preds = %33
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %9, align 8
  br label %69

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @MODE_UIMAGE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* @MODE_KR, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** %10, align 8
  br label %69

46:                                               ; preds = %33
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @MODE_UIMAGE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* @MODE_KR, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** %11, align 8
  br label %69

55:                                               ; preds = %33
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @MODE_KR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* @MODE_UIMAGE, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** %10, align 8
  br label %69

64:                                               ; preds = %33
  %65 = load i8*, i8** @optarg, align 8
  store i8* %65, i8** %12, align 8
  br label %69

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %33, %66
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %64, %61, %52, %43, %35
  br label %28

70:                                               ; preds = %28
  %71 = load i32, i32* @optind, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* @optind, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %74, %70
  %82 = load i8*, i8** %9, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @MODE_UNKNOWN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @MODE_KR, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i8*, i8** %10, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i8*, i8** %11, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99, %96
  %103 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @opensize(i8* %105, i64* %18)
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %104, %92
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @opensize(i8* %108, i64* %17)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @MODE_UIMAGE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  store i64 4, i64* %21, align 8
  %114 = load i64, i64* %17, align 8
  %115 = add i64 %114, 4
  store i64 %115, i64* %19, align 8
  %116 = load i64, i64* %19, align 8
  %117 = add i64 4, %116
  store i64 %117, i64* %20, align 8
  br label %127

118:                                              ; preds = %107
  store i64 8, i64* %21, align 8
  %119 = load i64, i64* %17, align 8
  %120 = add i64 8, %119
  store i64 %120, i64* %22, align 8
  %121 = load i64, i64* %17, align 8
  %122 = add i64 4, %121
  %123 = load i64, i64* %18, align 8
  %124 = add i64 %122, %123
  store i64 %124, i64* %19, align 8
  %125 = load i64, i64* %19, align 8
  %126 = add i64 4, %125
  store i64 %126, i64* %20, align 8
  br label %127

127:                                              ; preds = %118, %113
  %128 = load i64, i64* %20, align 8
  %129 = load i64, i64* @MAXSIZE, align 8
  %130 = icmp ugt i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i64, i64* %20, align 8
  %133 = load i64, i64* @MAXSIZE, align 8
  %134 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %132, i64 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* @O_RDWR, align 4
  %138 = load i32, i32* @O_CREAT, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @O_TRUNC, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @open(i8* %136, i32 %141, i32 420)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %145, %135
  %149 = load i32, i32* %14, align 4
  %150 = load i64, i64* %20, align 8
  %151 = call i32 @ftruncate(i32 %149, i64 %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i8*, i8** %9, align 8
  %155 = load i64, i64* %20, align 8
  %156 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %154, i64 %155)
  br label %157

157:                                              ; preds = %153, %148
  %158 = load i64, i64* %20, align 8
  %159 = load i32, i32* @PROT_READ, align 4
  %160 = load i32, i32* @PROT_WRITE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @MAP_SHARED, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i8* @mmap(i32* null, i64 %158, i32 %161, i32 %162, i32 %163, i32 0)
  store i8* %164, i8** %23, align 8
  %165 = load i8*, i8** %23, align 8
  %166 = getelementptr i8, i8* %165, i64 4
  %167 = bitcast i8* %166 to %struct.uimage_header*
  store %struct.uimage_header* %167, %struct.uimage_header** %7, align 8
  %168 = load i8*, i8** %23, align 8
  %169 = load i8*, i8** @MAP_FAILED, align 8
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %157
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %171, %157
  %175 = load i32, i32* %15, align 4
  %176 = load i8*, i8** %23, align 8
  %177 = load i64, i64* %21, align 8
  %178 = getelementptr i8, i8* %176, i64 %177
  %179 = load i64, i64* %17, align 8
  %180 = call i64 @read(i32 %175, i8* %178, i64 %179)
  %181 = load i64, i64* %17, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load i8*, i8** %10, align 8
  %185 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %183, %174
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* @MODE_KR, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %186
  %191 = load i32, i32* %16, align 4
  %192 = load i8*, i8** %23, align 8
  %193 = load i64, i64* %22, align 8
  %194 = getelementptr i8, i8* %192, i64 %193
  %195 = load i64, i64* %18, align 8
  %196 = call i64 @read(i32 %191, i8* %194, i64 %195)
  %197 = load i64, i64* %18, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %199, %190
  %203 = load %struct.uimage_header*, %struct.uimage_header** %7, align 8
  %204 = load i64, i64* %17, align 8
  %205 = load i64, i64* %18, align 8
  %206 = call i32 @mkuheader(%struct.uimage_header* %203, i64 %204, i64 %205)
  br label %223

207:                                              ; preds = %186
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* @MODE_UIMAGE, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %207
  %212 = load %struct.uimage_header*, %struct.uimage_header** %7, align 8
  %213 = getelementptr inbounds %struct.uimage_header, %struct.uimage_header* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ntohl(i32 %214)
  %216 = load %struct.uimage_header*, %struct.uimage_header** %7, align 8
  %217 = bitcast %struct.uimage_header* %216 to i8*
  %218 = getelementptr i8, i8* %217, i64 4
  %219 = load i64, i64* %19, align 8
  %220 = sub i64 %219, 4
  %221 = call i32 @craftcrc(i32 %215, i8* %218, i64 %220)
  br label %222

222:                                              ; preds = %211, %207
  br label %223

223:                                              ; preds = %222, %202
  %224 = load i8*, i8** %23, align 8
  %225 = load i64, i64* %19, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = call i32 @mkjcgheader(i8* %224, i64 %225, i8* %226)
  %228 = load i8*, i8** %23, align 8
  %229 = load i64, i64* %20, align 8
  %230 = call i32 @munmap(i8* %228, i64 %229)
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @close(i32 %231)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_source_date_epoch(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @opensize(i8*, i64*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*, ...) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @mkuheader(%struct.uimage_header*, i64, i64) #1

declare dso_local i32 @craftcrc(i32, i8*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mkjcgheader(i8*, i64, i8*) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
