; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_git_pkt_parse_line.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_git_pkt_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PACK\00", align 1
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unexpected pack file\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"bad packet length\00", align 1
@PKT_LEN_SIZE = common dso_local global i64 0, align 8
@GIT_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid empty packet\00", align 1
@GIT_SIDE_BAND_DATA = common dso_local global i8 0, align 1
@GIT_SIDE_BAND_PROGRESS = common dso_local global i8 0, align 1
@GIT_SIDE_BAND_ERROR = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_pkt_parse_line(i32** %0, i8** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @parse_len(i64* %11, i8* %12, i64 %13)
  store i32 %14, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GIT_EBUFS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @git__prefixncmp(i8* %22, i64 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @GIT_ERROR_NET, align 4
  %28 = call i32 @git_error_set(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @GIT_ERROR_NET, align 4
  %31 = call i32 @git_error_set(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %196

35:                                               ; preds = %4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %40, i32* %5, align 4
  br label %196

41:                                               ; preds = %35
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @PKT_LEN_SIZE, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @GIT_ERROR, align 4
  store i32 %49, i32* %5, align 4
  br label %196

50:                                               ; preds = %44, %41
  %51 = load i64, i64* @PKT_LEN_SIZE, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @PKT_LEN_SIZE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @GIT_ERROR_NET, align 4
  %59 = call i32 @git_error_set_str(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @GIT_ERROR, align 4
  store i32 %60, i32* %5, align 4
  br label %196

61:                                               ; preds = %50
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i32**, i32*** %6, align 8
  %68 = call i32 @flush_pkt(i32** %67)
  store i32 %68, i32* %5, align 4
  br label %196

69:                                               ; preds = %61
  %70 = load i64, i64* @PKT_LEN_SIZE, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* @GIT_SIDE_BAND_DATA, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load i32**, i32*** %6, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @data_pkt(i32** %80, i8* %81, i64 %82)
  store i32 %83, i32* %10, align 4
  br label %190

84:                                               ; preds = %69
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @GIT_SIDE_BAND_PROGRESS, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i32**, i32*** %6, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @sideband_progress_pkt(i32** %92, i8* %93, i64 %94)
  store i32 %95, i32* %10, align 4
  br label %189

96:                                               ; preds = %84
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @GIT_SIDE_BAND_ERROR, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32**, i32*** %6, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @sideband_error_pkt(i32** %104, i8* %105, i64 %106)
  store i32 %107, i32* %10, align 4
  br label %188

108:                                              ; preds = %96
  %109 = load i8*, i8** %8, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @git__prefixncmp(i8* %109, i64 %110, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32**, i32*** %6, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @ack_pkt(i32** %114, i8* %115, i64 %116)
  store i32 %117, i32* %10, align 4
  br label %187

118:                                              ; preds = %108
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @git__prefixncmp(i8* %119, i64 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = load i32**, i32*** %6, align 8
  %125 = call i32 @nak_pkt(i32** %124)
  store i32 %125, i32* %10, align 4
  br label %186

126:                                              ; preds = %118
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @git__prefixncmp(i8* %127, i64 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i32**, i32*** %6, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @err_pkt(i32** %132, i8* %133, i64 %134)
  store i32 %135, i32* %10, align 4
  br label %185

136:                                              ; preds = %126
  %137 = load i8*, i8** %8, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 35
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32**, i32*** %6, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @comment_pkt(i32** %142, i8* %143, i64 %144)
  store i32 %145, i32* %10, align 4
  br label %184

146:                                              ; preds = %136
  %147 = load i8*, i8** %8, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @git__prefixncmp(i8* %147, i64 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load i32**, i32*** %6, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i64, i64* %11, align 8
  %155 = call i32 @ok_pkt(i32** %152, i8* %153, i64 %154)
  store i32 %155, i32* %10, align 4
  br label %183

156:                                              ; preds = %146
  %157 = load i8*, i8** %8, align 8
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @git__prefixncmp(i8* %157, i64 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i32**, i32*** %6, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @ng_pkt(i32** %162, i8* %163, i64 %164)
  store i32 %165, i32* %10, align 4
  br label %182

166:                                              ; preds = %156
  %167 = load i8*, i8** %8, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @git__prefixncmp(i8* %167, i64 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = load i32**, i32*** %6, align 8
  %173 = load i8*, i8** %8, align 8
  %174 = load i64, i64* %11, align 8
  %175 = call i32 @unpack_pkt(i32** %172, i8* %173, i64 %174)
  store i32 %175, i32* %10, align 4
  br label %181

176:                                              ; preds = %166
  %177 = load i32**, i32*** %6, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = load i64, i64* %11, align 8
  %180 = call i32 @ref_pkt(i32** %177, i8* %178, i64 %179)
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %176, %171
  br label %182

182:                                              ; preds = %181, %161
  br label %183

183:                                              ; preds = %182, %151
  br label %184

184:                                              ; preds = %183, %141
  br label %185

185:                                              ; preds = %184, %131
  br label %186

186:                                              ; preds = %185, %123
  br label %187

187:                                              ; preds = %186, %113
  br label %188

188:                                              ; preds = %187, %103
  br label %189

189:                                              ; preds = %188, %91
  br label %190

190:                                              ; preds = %189, %79
  %191 = load i8*, i8** %8, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  %194 = load i8**, i8*** %7, align 8
  store i8* %193, i8** %194, align 8
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %190, %64, %57, %48, %39, %33
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @parse_len(i64*, i8*, i64) #1

declare dso_local i32 @git__prefixncmp(i8*, i64, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_error_set_str(i32, i8*) #1

declare dso_local i32 @flush_pkt(i32**) #1

declare dso_local i32 @data_pkt(i32**, i8*, i64) #1

declare dso_local i32 @sideband_progress_pkt(i32**, i8*, i64) #1

declare dso_local i32 @sideband_error_pkt(i32**, i8*, i64) #1

declare dso_local i32 @ack_pkt(i32**, i8*, i64) #1

declare dso_local i32 @nak_pkt(i32**) #1

declare dso_local i32 @err_pkt(i32**, i8*, i64) #1

declare dso_local i32 @comment_pkt(i32**, i8*, i64) #1

declare dso_local i32 @ok_pkt(i32**, i8*, i64) #1

declare dso_local i32 @ng_pkt(i32**, i8*, i64) #1

declare dso_local i32 @unpack_pkt(i32**, i8*, i64) #1

declare dso_local i32 @ref_pkt(i32**, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
