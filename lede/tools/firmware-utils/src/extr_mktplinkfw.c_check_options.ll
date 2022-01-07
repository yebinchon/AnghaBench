; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw.c_check_options.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw.c_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }

@inspect_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@extract = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"no firmware for inspection specified\00", align 1
@opt_hw_id = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"hardware id not specified\00", align 1
@hw_id = common dso_local global i8* null, align 8
@combined = common dso_local global i64 0, align 8
@layout_id = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"flash layout is not specified\00", align 1
@opt_hw_rev = common dso_local global i32* null, align 8
@hw_rev = common dso_local global i32 0, align 4
@country = common dso_local global i32 0, align 4
@region = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unknown region code \22%s\22\00", align 1
@kernel_la = common dso_local global i64 0, align 8
@kernel_ep = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [76 x i8] c"kernel loading address and entry point must be specified for combined image\00", align 1
@layouts = common dso_local global i32 0, align 4
@layout = common dso_local global %struct.TYPE_8__* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"unknown flash layout \22%s\22\00", align 1
@rootfs_ofs = common dso_local global i32 0, align 4
@reserved_space = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"reserved space is not valid\00", align 1
@kernel_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"no kernel image specified\00", align 1
@kernel_len = common dso_local global i32 0, align 4
@fw_max_len = common dso_local global i32 0, align 4
@rootfs_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"no rootfs image specified\00", align 1
@rootfs_align = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"rootfs offset aligned to 0x%u\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"images are too big by %i bytes\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"kernel image is too big by %i bytes\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"rootfs image is too big by %i bytes\00", align 1
@ofname = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@fw_ver = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@fw_ver_hi = common dso_local global i32 0, align 4
@fw_ver_mid = common dso_local global i32 0, align 4
@fw_ver_lo = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"invalid firmware version '%s'\00", align 1
@opt_hdr_ver = common dso_local global i32 0, align 4
@HEADER_VERSION_V1 = common dso_local global i32 0, align 4
@hdr_ver = common dso_local global i32 0, align 4
@HEADER_VERSION_V2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"invalid header version '%u'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inspect_info, i32 0, i32 1), align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = call i32 @get_file_stat(%struct.TYPE_7__* @inspect_info)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %223

12:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %223

13:                                               ; preds = %0
  %14 = load i64, i64* @extract, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  %20 = load i32*, i32** @opt_hw_id, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

24:                                               ; preds = %19
  %25 = load i32*, i32** @opt_hw_id, align 8
  %26 = call i8* @strtoul(i32* %25, i32* null, i32 0)
  store i8* %26, i8** @hw_id, align 8
  %27 = load i64, i64* @combined, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** @layout_id, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

34:                                               ; preds = %29, %24
  %35 = load i32*, i32** @opt_hw_rev, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** @opt_hw_rev, align 8
  %39 = call i8* @strtoul(i32* %38, i32* null, i32 0)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* @hw_rev, align 4
  br label %42

41:                                               ; preds = %34
  store i32 1, i32* @hw_rev, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* @country, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* @country, align 4
  %47 = call i32 @find_region(i32 %46)
  store i32 %47, i32* @region, align 4
  %48 = load i32, i32* @region, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @country, align 4
  %52 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %1, align 4
  br label %223

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i64, i64* @combined, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i64, i64* @kernel_la, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* @kernel_ep, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60, %57
  %64 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

65:                                               ; preds = %60
  br label %105

66:                                               ; preds = %54
  %67 = load i32, i32* @layouts, align 4
  %68 = load i32*, i32** @layout_id, align 8
  %69 = call %struct.TYPE_8__* @find_layout(i32 %67, i32* %68)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** @layout, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %71 = icmp eq %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32*, i32** @layout_id, align 8
  %74 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %73)
  store i32 -1, i32* %1, align 4
  br label %223

75:                                               ; preds = %66
  %76 = load i64, i64* @kernel_la, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* @kernel_la, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i64, i64* @kernel_ep, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* @kernel_ep, align 8
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* @rootfs_ofs, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* @rootfs_ofs, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i64, i64* @reserved_space, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %65
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kernel_info, i32 0, i32 1), align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

110:                                              ; preds = %105
  %111 = call i32 @get_file_stat(%struct.TYPE_7__* @kernel_info)
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i32, i32* %2, align 4
  store i32 %115, i32* %1, align 4
  br label %223

116:                                              ; preds = %110
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kernel_info, i32 0, i32 0), align 8
  store i32 %117, i32* @kernel_len, align 4
  %118 = load i64, i64* @combined, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %195, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @layout, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @reserved_space, align 8
  %125 = sub nsw i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* @fw_max_len, align 4
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rootfs_info, i32 0, i32 1), align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

131:                                              ; preds = %120
  %132 = call i32 @get_file_stat(%struct.TYPE_7__* @rootfs_info)
  store i32 %132, i32* %2, align 4
  %133 = load i32, i32* %2, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %2, align 4
  store i32 %136, i32* %1, align 4
  br label %223

137:                                              ; preds = %131
  %138 = load i64, i64* @rootfs_align, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %169

140:                                              ; preds = %137
  %141 = load i32, i32* @kernel_len, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 %142, 4
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* @kernel_len, align 4
  %145 = load i32, i32* @kernel_len, align 4
  %146 = load i64, i64* @rootfs_align, align 8
  %147 = call i32 @ALIGN(i32 %145, i64 %146)
  store i32 %147, i32* @rootfs_ofs, align 4
  %148 = load i32, i32* @kernel_len, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, 4
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* @kernel_len, align 4
  %152 = load i32, i32* @rootfs_ofs, align 4
  %153 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @kernel_len, align 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rootfs_info, i32 0, i32 0), align 8
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = load i32, i32* @fw_max_len, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 %159, 4
  %161 = sub i64 %157, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %140
  %166 = load i32, i32* %3, align 4
  %167 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %166)
  store i32 -1, i32* %1, align 4
  br label %223

168:                                              ; preds = %140
  br label %194

169:                                              ; preds = %137
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kernel_info, i32 0, i32 0), align 8
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* @rootfs_ofs, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, 4
  %175 = sub i64 %171, %174
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %3, align 4
  %177 = load i32, i32* %3, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %169
  %180 = load i32, i32* %3, align 4
  %181 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %180)
  store i32 -1, i32* %1, align 4
  br label %223

182:                                              ; preds = %169
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rootfs_info, i32 0, i32 0), align 8
  %184 = load i32, i32* @fw_max_len, align 4
  %185 = load i32, i32* @rootfs_ofs, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sub nsw i32 %183, %186
  store i32 %187, i32* %3, align 4
  %188 = load i32, i32* %3, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load i32, i32* %3, align 4
  %192 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %191)
  store i32 -1, i32* %1, align 4
  br label %223

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193, %168
  br label %195

195:                                              ; preds = %194, %116
  %196 = load i32*, i32** @ofname, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %223

200:                                              ; preds = %195
  %201 = load i32, i32* @fw_ver, align 4
  %202 = call i32 @sscanf(i32 %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* @fw_ver_hi, i32* @fw_ver_mid, i32* @fw_ver_lo)
  store i32 %202, i32* %2, align 4
  %203 = load i32, i32* %2, align 4
  %204 = icmp ne i32 %203, 3
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i32, i32* @fw_ver, align 4
  %207 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %206)
  store i32 -1, i32* %1, align 4
  br label %223

208:                                              ; preds = %200
  %209 = load i32, i32* @opt_hdr_ver, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* @HEADER_VERSION_V1, align 4
  store i32 %212, i32* @hdr_ver, align 4
  br label %222

213:                                              ; preds = %208
  %214 = load i32, i32* @opt_hdr_ver, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = load i32, i32* @HEADER_VERSION_V2, align 4
  store i32 %217, i32* @hdr_ver, align 4
  br label %221

218:                                              ; preds = %213
  %219 = load i32, i32* @opt_hdr_ver, align 4
  %220 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %219)
  store i32 -1, i32* %1, align 4
  br label %223

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %211
  store i32 0, i32* %1, align 4
  br label %223

223:                                              ; preds = %222, %218, %205, %198, %190, %179, %165, %135, %129, %114, %108, %102, %72, %63, %50, %32, %22, %16, %12, %10
  %224 = load i32, i32* %1, align 4
  ret i32 %224
}

declare dso_local i32 @get_file_stat(%struct.TYPE_7__*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i8* @strtoul(i32*, i32*, i32) #1

declare dso_local i32 @find_region(i32) #1

declare dso_local %struct.TYPE_8__* @find_layout(i32, i32*) #1

declare dso_local i32 @ALIGN(i32, i64) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
