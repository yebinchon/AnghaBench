; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"amb_proc_read\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"frames: TX OK %lu, RX OK %lu, RX bad %lu (CRC %lu, long %lu, aborted %lu, unused %lu).\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"cmd queue [cur/hi/max]: %u/%u/%u. \00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"TX queue [cur/max high full]: %u/%u %u %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"RX queues [cur/max/req low empty]:\00", align 1
@NUM_RX_POOLS = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c" %u/%u/%u %u %u\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"RX buffer sizes:\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32*, i8*)* @amb_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amb_proc_read(%struct.atm_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %19 = call %struct.TYPE_12__* @AMB_DEV(%struct.atm_dev* %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %8, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @DBG_FLOW, align 4
  %23 = call i32 @PRINTD(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %11, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37, i32 %41, i32 %45, i32 %49, i32 %53, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %195

59:                                               ; preds = %3
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %12, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %195

77:                                               ; preds = %59
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %77
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %13, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %195

98:                                               ; preds = %77
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %152, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 %104, i32* %14, align 4
  store i8 0, i8* %10, align 1
  br label %105

105:                                              ; preds = %140, %102
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @NUM_RX_POOLS, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %105
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i8, i8* %10, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %116
  store %struct.TYPE_11__* %117, %struct.TYPE_11__** %15, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %14, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, i8*, ...) @sprintf(i8* %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %127, i32 %130, i32 %133, i32 %136)
  %138 = load i32, i32* %14, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %111
  %141 = load i8, i8* %10, align 1
  %142 = add i8 %141, 1
  store i8 %142, i8* %10, align 1
  br label %105

143:                                              ; preds = %105
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %14, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = call i32 (i8*, i8*, ...) @sprintf(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i32, i32* %14, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %4, align 4
  br label %195

152:                                              ; preds = %98
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %9, align 4
  %155 = icmp ne i32 %153, 0
  br i1 %155, label %194, label %156

156:                                              ; preds = %152
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 %158, i32* %16, align 4
  store i8 0, i8* %10, align 1
  br label %159

159:                                              ; preds = %182, %156
  %160 = load i8, i8* %10, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* @NUM_RX_POOLS, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %185

165:                                              ; preds = %159
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = load i8, i8* %10, align 1
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 %170
  store %struct.TYPE_11__* %171, %struct.TYPE_11__** %17, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %16, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %16, align 4
  %181 = add i32 %180, %179
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %165
  %183 = load i8, i8* %10, align 1
  %184 = add i8 %183, 1
  store i8 %184, i8* %10, align 1
  br label %159

185:                                              ; preds = %159
  %186 = load i8*, i8** %7, align 8
  %187 = load i32, i32* %16, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = call i32 (i8*, i8*, ...) @sprintf(i8* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %191 = load i32, i32* %16, align 4
  %192 = add i32 %191, %190
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  store i32 %193, i32* %4, align 4
  br label %195

194:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %185, %143, %81, %63, %27
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.TYPE_12__* @AMB_DEV(%struct.atm_dev*) #1

declare dso_local i32 @PRINTD(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
