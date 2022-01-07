; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_rw_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_rw_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 (...)*, i32 (i32)*, i32 (...)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }

@R_HEAD = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_12__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@SIZECODE = common dso_local global i32 0, align 4
@ST1 = common dso_local global i32 0, align 4
@ST1_EOC = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@R_TRACK = common dso_local global i32 0, align 4
@TRACK = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@SECT_PER_TRACK = common dso_local global i32 0, align 4
@R_SECTOR = common dso_local global i32 0, align 4
@SECTOR = common dso_local global i32 0, align 4
@in_sector_offset = common dso_local global i32 0, align 4
@current_count_sectors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"long rw: %x instead of %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rs=%d s=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rh=%d h=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rt=%d t=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"heads=%d eoc=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"spt=%d st=%d ss=%d\0A\00", align 1
@fsector_t = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"in_sector_offset=%d\0A\00", align 1
@cont = common dso_local global %struct.TYPE_11__* null, align 8
@_floppy = common dso_local global %struct.TYPE_9__* null, align 8
@current_type = common dso_local global %struct.TYPE_9__** null, align 8
@current_drive = common dso_local global i64 0, align 8
@floppy_sizes = common dso_local global i32* null, align 8
@probing = common dso_local global i64 0, align 8
@DP = common dso_local global %struct.TYPE_13__* null, align 8
@FTD_MSG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Auto-detected floppy type %s in fd%d\0A\00", align 1
@FD_READ = common dso_local global i64 0, align 8
@raw_cmd = common dso_local global %struct.TYPE_8__* null, align 8
@current_req = common dso_local global %struct.TYPE_10__* null, align 8
@buffer_track = common dso_local global i32 0, align 4
@buffer_drive = common dso_local global i64 0, align 8
@buffer_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rw_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rw_interrupt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @R_HEAD, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %202

8:                                                ; preds = %0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DRS, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DRS, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %13, %8
  store i32 0, i32* %4, align 4
  %18 = load i32, i32* @SIZECODE, align 4
  %19 = shl i32 1, %18
  %20 = call i32 @DIV_ROUND_UP(i32 %19, i32 4)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @ST1, align 4
  %22 = load i32, i32* @ST1_EOC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  br label %27

26:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* @COMMAND, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 2, i32* %3, align 4
  br label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* @R_TRACK, align 4
  %35 = load i32, i32* @TRACK, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @R_HEAD, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* @HEAD, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* @SECT_PER_TRACK, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* @R_SECTOR, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @SECTOR, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @SIZECODE, align 4
  %52 = shl i32 %50, %51
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %2, align 4
  %56 = sdiv i32 %54, %55
  %57 = load i32, i32* @in_sector_offset, align 4
  %58 = load i32, i32* @current_count_sectors, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @DIV_ROUND_UP(i32 %59, i32 %60)
  %62 = icmp sgt i32 %56, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %33
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @current_count_sectors, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %64, i64 %66)
  %68 = load i32, i32* @R_SECTOR, align 4
  %69 = load i32, i32* @SECTOR, align 4
  %70 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @R_HEAD, align 4
  %72 = load i32, i32* @HEAD, align 4
  %73 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* @R_TRACK, align 4
  %75 = load i32, i32* @TRACK, align 4
  %76 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @SECT_PER_TRACK, align 4
  %81 = load i32, i32* @fsector_t, align 4
  %82 = load i32, i32* %2, align 4
  %83 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @in_sector_offset, align 4
  %85 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %63, %33
  %87 = load i32, i32* @in_sector_offset, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @INFBOUND(i32 %90, i32 0)
  %92 = load i32, i32* @current_count_sectors, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @SUPBOUND(i32 %92, i32 %93)
  %95 = call i32 (...) @interpret_errors()
  switch i32 %95, label %134 [
    i32 2, label %96
    i32 1, label %101
    i32 0, label %114
  ]

96:                                               ; preds = %86
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32 (...)*, i32 (...)** %98, align 8
  %100 = call i32 (...) %99()
  br label %202

101:                                              ; preds = %86
  %102 = load i32, i32* @current_count_sectors, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32 (...)*, i32 (...)** %106, align 8
  %108 = call i32 (...) %107()
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32 (...)*, i32 (...)** %110, align 8
  %112 = call i32 (...) %111()
  br label %202

113:                                              ; preds = %101
  br label %134

114:                                              ; preds = %86
  %115 = load i32, i32* @current_count_sectors, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32 (...)*, i32 (...)** %119, align 8
  %121 = call i32 (...) %120()
  br label %202

122:                                              ; preds = %114
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %124 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @current_type, align 8
  %125 = load i64, i64* @current_drive, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %124, i64 %125
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** @floppy_sizes, align 8
  %131 = load i64, i64* @current_drive, align 8
  %132 = call i64 @TOMINOR(i64 %131)
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %86, %122, %113
  %135 = load i64, i64* @probing, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %134
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DP, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @FTD_MSG, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @current_drive, align 8
  %149 = call i32 @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %147, i64 %148)
  br label %150

150:                                              ; preds = %144, %137
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %152 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @current_type, align 8
  %153 = load i64, i64* @current_drive, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %152, i64 %153
  store %struct.TYPE_9__* %151, %struct.TYPE_9__** %154, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_floppy, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** @floppy_sizes, align 8
  %159 = load i64, i64* @current_drive, align 8
  %160 = call i64 @TOMINOR(i64 %159)
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  store i64 0, i64* @probing, align 8
  br label %162

162:                                              ; preds = %150, %134
  %163 = load i32, i32* @COMMAND, align 4
  %164 = call i64 @CT(i32 %163)
  %165 = load i64, i64* @FD_READ, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %176, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_cmd, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_req, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @bio_data(i32 %173)
  %175 = icmp eq i64 %170, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %167, %162
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32 (i32)*, i32 (i32)** %178, align 8
  %180 = call i32 %179(i32 1)
  br label %197

181:                                              ; preds = %167
  %182 = load i32, i32* @COMMAND, align 4
  %183 = call i64 @CT(i32 %182)
  %184 = load i64, i64* @FD_READ, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** @raw_cmd, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* @buffer_track, align 4
  %190 = load i64, i64* @current_drive, align 8
  store i64 %190, i64* @buffer_drive, align 8
  %191 = load i32, i32* @buffer_max, align 4
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @fsector_t, align 4
  %194 = add nsw i32 %192, %193
  %195 = call i32 @INFBOUND(i32 %191, i32 %194)
  br label %196

196:                                              ; preds = %186, %181
  br label %197

197:                                              ; preds = %196, %176
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cont, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32 (...)*, i32 (...)** %199, align 8
  %201 = call i32 (...) %200()
  br label %202

202:                                              ; preds = %197, %117, %104, %96, %7
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DPRINT(i8*, i32, i64) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @INFBOUND(i32, i32) #1

declare dso_local i32 @SUPBOUND(i32, i32) #1

declare dso_local i32 @interpret_errors(...) #1

declare dso_local i64 @TOMINOR(i64) #1

declare dso_local i64 @CT(i32) #1

declare dso_local i64 @bio_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
