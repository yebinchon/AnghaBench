; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_iosched_process_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_iosched_process_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"write, waiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"read, waiting\0A\00", align 1
@READ = common dso_local global i64 0, align 8
@HI_SPEED_SWITCH = common dso_local global i64 0, align 8
@MAX_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_iosched_process_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_iosched_process_queue(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %7 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %8 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 6
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %233

13:                                               ; preds = %1
  %14 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %15 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  br label %18

18:                                               ; preds = %226, %148, %13
  %19 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %20 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %24 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = call i32 @bio_list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %31 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 5
  %33 = call i32 @bio_list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %38 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %18
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %233

47:                                               ; preds = %43, %18
  %48 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %49 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %101

53:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  %54 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %55 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %59 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = call %struct.bio* @bio_list_peek(i32* %60)
  store %struct.bio* %61, %struct.bio** %3, align 8
  %62 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %63 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.bio*, %struct.bio** %3, align 8
  %67 = icmp ne %struct.bio* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %53
  %69 = load %struct.bio*, %struct.bio** %3, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %74 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %68, %53
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %87 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i64 @atomic_read(i32* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %93 = call i32 @pkt_dbg(i32 2, %struct.pktcdvd_device* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %233

94:                                               ; preds = %85
  %95 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %96 = call i32 @pkt_flush_cache(%struct.pktcdvd_device* %95)
  %97 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %98 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %82, %79
  br label %121

101:                                              ; preds = %47
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %109 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = call i64 @atomic_read(i32* %110)
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %115 = call i32 @pkt_dbg(i32 2, %struct.pktcdvd_device* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %233

116:                                              ; preds = %107
  %117 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %118 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %104, %101
  br label %121

121:                                              ; preds = %120, %100
  %122 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %123 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = call i32 @spin_lock(i32* %124)
  %126 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %127 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %133 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 5
  %135 = call %struct.bio* @bio_list_pop(i32* %134)
  store %struct.bio* %135, %struct.bio** %3, align 8
  br label %141

136:                                              ; preds = %121
  %137 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %138 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = call %struct.bio* @bio_list_pop(i32* %139)
  store %struct.bio* %140, %struct.bio** %3, align 8
  br label %141

141:                                              ; preds = %136, %131
  %142 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %143 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load %struct.bio*, %struct.bio** %3, align 8
  %147 = icmp ne %struct.bio* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %141
  br label %18

149:                                              ; preds = %141
  %150 = load %struct.bio*, %struct.bio** %3, align 8
  %151 = call i64 @bio_data_dir(%struct.bio* %150)
  %152 = load i64, i64* @READ, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load %struct.bio*, %struct.bio** %3, align 8
  %156 = getelementptr inbounds %struct.bio, %struct.bio* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = ashr i32 %158, 10
  %160 = sext i32 %159 to i64
  %161 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %162 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %160
  store i64 %165, i64* %163, align 8
  br label %175

166:                                              ; preds = %149
  %167 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %168 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  store i64 0, i64* %169, align 8
  %170 = load %struct.bio*, %struct.bio** %3, align 8
  %171 = call i64 @bio_end_sector(%struct.bio* %170)
  %172 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %173 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  store i64 %171, i64* %174, align 8
  br label %175

175:                                              ; preds = %166, %154
  %176 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %177 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @HI_SPEED_SWITCH, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %175
  %183 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %184 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %187 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %185, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %182
  %191 = load i64, i64* @MAX_SPEED, align 8
  %192 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %193 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %195 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %196 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %199 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @pkt_set_speed(%struct.pktcdvd_device* %194, i64 %197, i64 %200)
  br label %202

202:                                              ; preds = %190, %182
  br label %226

203:                                              ; preds = %175
  %204 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %205 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %208 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %206, %209
  br i1 %210, label %211, label %225

211:                                              ; preds = %203
  %212 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %213 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %216 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  %217 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %218 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %219 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %222 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @pkt_set_speed(%struct.pktcdvd_device* %217, i64 %220, i64 %223)
  br label %225

225:                                              ; preds = %211, %203
  br label %226

226:                                              ; preds = %225, %202
  %227 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %228 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = call i32 @atomic_inc(i32* %229)
  %231 = load %struct.bio*, %struct.bio** %3, align 8
  %232 = call i32 @generic_make_request(%struct.bio* %231)
  br label %18

233:                                              ; preds = %12, %113, %91, %46
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @bio_list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.bio* @bio_list_peek(i32*) #1

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*) #1

declare dso_local i32 @pkt_flush_cache(%struct.pktcdvd_device*) #1

declare dso_local %struct.bio* @bio_list_pop(i32*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local i32 @pkt_set_speed(%struct.pktcdvd_device*, i64, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
