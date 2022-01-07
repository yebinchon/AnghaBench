; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw2.c_check_options.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktplinkfw2.c_check_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }

@inspect_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@extract = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"no firmware for inspection specified\00", align 1
@opt_hw_id = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"hardware id must be specified\00", align 1
@custom_board = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@board = common dso_local global %struct.TYPE_11__* null, align 8
@layout_id = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"flash layout is not specified\00", align 1
@opt_hw_rev = common dso_local global i32* null, align 8
@opt_hw_ver_add = common dso_local global i32* null, align 8
@layouts = common dso_local global i32 0, align 4
@layout = common dso_local global %struct.TYPE_10__* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown flash layout \22%s\22\00", align 1
@kernel_la = common dso_local global i64 0, align 8
@kernel_ep = common dso_local global i64 0, align 8
@rootfs_ofs = common dso_local global i32 0, align 4
@kernel_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"no kernel image specified\00", align 1
@kernel_len = common dso_local global i32 0, align 4
@combined = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"kernel image is too big\00", align 1
@rootfs_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"no rootfs image specified\00", align 1
@rootfs_align = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"rootfs offset aligned to 0x%u\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"images are too big\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"rootfs image is too big\00", align 1
@ofname = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"no output file specified\00", align 1
@fw_ver = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@fw_ver_hi = common dso_local global i32 0, align 4
@fw_ver_mid = common dso_local global i32 0, align 4
@fw_ver_lo = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"invalid firmware version '%s'\00", align 1
@sver = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@sver_hi = common dso_local global i32 0, align 4
@sver_lo = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"invalid secondary version '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inspect_info, i32 0, i32 1), align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i32 @get_file_stat(%struct.TYPE_9__* @inspect_info)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %194

11:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %194

12:                                               ; preds = %0
  %13 = load i64, i64* @extract, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17
  %19 = load i32*, i32** @opt_hw_id, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

23:                                               ; preds = %18
  store %struct.TYPE_11__* @custom_board, %struct.TYPE_11__** @board, align 8
  %24 = load i32*, i32** @layout_id, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

28:                                               ; preds = %23
  %29 = load i32*, i32** @opt_hw_id, align 8
  %30 = call i8* @strtoul(i32* %29, i32* null, i32 0)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @board, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @board, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @board, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i8* null, i8** %36, align 8
  %37 = load i32*, i32** @opt_hw_rev, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load i32*, i32** @opt_hw_rev, align 8
  %41 = call i8* @strtoul(i32* %40, i32* null, i32 0)
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @board, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %39, %28
  %46 = load i32*, i32** @opt_hw_ver_add, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32*, i32** @opt_hw_ver_add, align 8
  %50 = call i8* @strtoul(i32* %49, i32* null, i32 0)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @board, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* @layouts, align 4
  %55 = load i32*, i32** @layout_id, align 8
  %56 = call %struct.TYPE_10__* @find_layout(i32 %54, i32* %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** @layout, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @layout, align 8
  %58 = icmp eq %struct.TYPE_10__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32*, i32** @layout_id, align 8
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %60)
  store i32 -1, i32* %1, align 4
  br label %194

62:                                               ; preds = %53
  %63 = load i64, i64* @kernel_la, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @layout, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* @kernel_la, align 8
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i64, i64* @kernel_ep, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @layout, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* @kernel_ep, align 8
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* @rootfs_ofs, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @layout, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* @rootfs_ofs, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kernel_info, i32 0, i32 1), align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

88:                                               ; preds = %83
  %89 = call i32 @get_file_stat(%struct.TYPE_9__* @kernel_info)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %2, align 4
  store i32 %93, i32* %1, align 4
  br label %194

94:                                               ; preds = %88
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kernel_info, i32 0, i32 0), align 8
  store i32 %95, i32* @kernel_len, align 4
  %96 = load i64, i64* @combined, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kernel_info, i32 0, i32 0), align 8
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @layout, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %104, 4
  %106 = icmp ugt i64 %100, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

109:                                              ; preds = %98
  br label %172

110:                                              ; preds = %94
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rootfs_info, i32 0, i32 1), align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

115:                                              ; preds = %110
  %116 = call i32 @get_file_stat(%struct.TYPE_9__* @rootfs_info)
  store i32 %116, i32* %2, align 4
  %117 = load i32, i32* %2, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %2, align 4
  store i32 %120, i32* %1, align 4
  br label %194

121:                                              ; preds = %115
  %122 = load i64, i64* @rootfs_align, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %121
  %125 = load i32, i32* @kernel_len, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 4
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* @kernel_len, align 4
  %129 = load i32, i32* @kernel_len, align 4
  %130 = load i64, i64* @rootfs_align, align 8
  %131 = call i32 @ALIGN(i32 %129, i64 %130)
  store i32 %131, i32* @rootfs_ofs, align 4
  %132 = load i32, i32* @kernel_len, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 %133, 4
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* @kernel_len, align 4
  %136 = load i32, i32* @rootfs_ofs, align 4
  %137 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @kernel_len, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rootfs_info, i32 0, i32 0), align 8
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @layout, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = sub i64 %145, 4
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %124
  %149 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

150:                                              ; preds = %124
  br label %171

151:                                              ; preds = %121
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kernel_info, i32 0, i32 0), align 8
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* @rootfs_ofs, align 4
  %155 = sext i32 %154 to i64
  %156 = sub i64 %155, 4
  %157 = icmp ugt i64 %153, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

160:                                              ; preds = %151
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rootfs_info, i32 0, i32 0), align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** @layout, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @rootfs_ofs, align 4
  %166 = sub nsw i32 %164, %165
  %167 = icmp sgt i32 %161, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %150
  br label %172

172:                                              ; preds = %171, %109
  %173 = load i32*, i32** @ofname, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %194

177:                                              ; preds = %172
  %178 = load i32*, i32** @fw_ver, align 8
  %179 = call i32 (i32*, i8*, i32*, i32*, ...) @sscanf(i32* %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* @fw_ver_hi, i32* @fw_ver_mid, i32* @fw_ver_lo)
  store i32 %179, i32* %2, align 4
  %180 = load i32, i32* %2, align 4
  %181 = icmp ne i32 %180, 3
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load i32*, i32** @fw_ver, align 8
  %184 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32* %183)
  store i32 -1, i32* %1, align 4
  br label %194

185:                                              ; preds = %177
  %186 = load i32*, i32** @sver, align 8
  %187 = call i32 (i32*, i8*, i32*, i32*, ...) @sscanf(i32* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32* @sver_hi, i32* @sver_lo)
  store i32 %187, i32* %2, align 4
  %188 = load i32, i32* %2, align 4
  %189 = icmp ne i32 %188, 2
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i32*, i32** @sver, align 8
  %192 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32* %191)
  store i32 -1, i32* %1, align 4
  br label %194

193:                                              ; preds = %185
  store i32 0, i32* %1, align 4
  br label %194

194:                                              ; preds = %193, %190, %182, %175, %168, %158, %148, %119, %113, %107, %92, %86, %59, %26, %21, %15, %11, %9
  %195 = load i32, i32* %1, align 4
  ret i32 %195
}

declare dso_local i32 @get_file_stat(%struct.TYPE_9__*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i8* @strtoul(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @find_layout(i32, i32*) #1

declare dso_local i32 @ALIGN(i32, i64) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
