; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_is_valid_soft_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_is_valid_soft_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%union.drbd_state = type { i64 }

@SS_SUCCESS = common dso_local global i32 0, align 4
@C_STARTING_SYNC_T = common dso_local global i64 0, align 8
@C_STARTING_SYNC_S = common dso_local global i64 0, align 8
@C_CONNECTED = common dso_local global i64 0, align 8
@SS_RESYNC_RUNNING = common dso_local global i32 0, align 4
@C_DISCONNECTING = common dso_local global i64 0, align 8
@C_STANDALONE = common dso_local global i64 0, align 8
@SS_ALREADY_STANDALONE = common dso_local global i32 0, align 4
@D_ATTACHING = common dso_local global i64 0, align 8
@D_DISKLESS = common dso_local global i64 0, align 8
@SS_IS_DISKLESS = common dso_local global i32 0, align 4
@C_WF_CONNECTION = common dso_local global i64 0, align 8
@C_UNCONNECTED = common dso_local global i64 0, align 8
@SS_NO_NET_CONFIG = common dso_local global i32 0, align 4
@D_OUTDATED = common dso_local global i64 0, align 8
@SS_LOWER_THAN_OUTDATED = common dso_local global i32 0, align 4
@SS_IN_TRANSIENT_STATE = common dso_local global i32 0, align 4
@STATE_SENT = common dso_local global i32 0, align 4
@C_WF_REPORT_PARAMS = common dso_local global i64 0, align 8
@R_PRIMARY = common dso_local global i64 0, align 8
@D_UP_TO_DATE = common dso_local global i64 0, align 8
@C_WF_SYNC_UUID = common dso_local global i64 0, align 8
@C_VERIFY_S = common dso_local global i64 0, align 8
@C_VERIFY_T = common dso_local global i64 0, align 8
@SS_NEED_CONNECTION = common dso_local global i32 0, align 4
@C_SYNC_TARGET = common dso_local global i64 0, align 8
@C_SYNC_SOURCE = common dso_local global i64 0, align 8
@SS_OUTDATE_WO_CONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.drbd_connection*)* @is_valid_soft_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_soft_transition(i64 %0, i64 %1, %struct.drbd_connection* %2) #0 {
  %4 = alloca %union.drbd_state, align 8
  %5 = alloca %union.drbd_state, align 8
  %6 = alloca %struct.drbd_connection*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %4, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  store %struct.drbd_connection* %2, %struct.drbd_connection** %6, align 8
  %10 = load i32, i32* @SS_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = bitcast %union.drbd_state* %5 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @C_STARTING_SYNC_T, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = bitcast %union.drbd_state* %5 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @C_STARTING_SYNC_S, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15, %3
  %21 = bitcast %union.drbd_state* %4 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @C_CONNECTED, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @SS_RESYNC_RUNNING, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %20, %15
  %28 = bitcast %union.drbd_state* %5 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @C_DISCONNECTING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = bitcast %union.drbd_state* %4 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @C_STANDALONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @SS_ALREADY_STANDALONE, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %32, %27
  %40 = bitcast %union.drbd_state* %5 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @D_ATTACHING, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = bitcast %union.drbd_state* %4 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @D_DISKLESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @SS_IS_DISKLESS, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %44, %39
  %52 = bitcast %union.drbd_state* %5 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @C_WF_CONNECTION, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = bitcast %union.drbd_state* %4 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @C_UNCONNECTED, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @SS_NO_NET_CONFIG, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %56, %51
  %64 = bitcast %union.drbd_state* %5 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @D_OUTDATED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = bitcast %union.drbd_state* %4 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @D_OUTDATED, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = bitcast %union.drbd_state* %4 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @D_ATTACHING, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @SS_LOWER_THAN_OUTDATED, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %73, %68, %63
  %81 = bitcast %union.drbd_state* %5 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @C_DISCONNECTING, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = bitcast %union.drbd_state* %4 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @C_UNCONNECTED, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %85, %80
  %93 = load i32, i32* @STATE_SENT, align 4
  %94 = load %struct.drbd_connection*, %struct.drbd_connection** %6, align 8
  %95 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %94, i32 0, i32 0
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = bitcast %union.drbd_state* %5 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @C_WF_REPORT_PARAMS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = bitcast %union.drbd_state* %4 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @C_WF_CONNECTION, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %103, %98
  %109 = bitcast %union.drbd_state* %5 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @C_CONNECTED, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = bitcast %union.drbd_state* %4 to i64*
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @C_WF_REPORT_PARAMS, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %120, label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %118, %113, %103, %92
  %121 = bitcast %union.drbd_state* %4 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @R_PRIMARY, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %158

125:                                              ; preds = %120
  %126 = bitcast %union.drbd_state* %5 to i64*
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @R_PRIMARY, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %125
  %131 = bitcast %union.drbd_state* %5 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @D_UP_TO_DATE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %130
  %136 = bitcast %union.drbd_state* %5 to i64*
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @D_UP_TO_DATE, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %135
  %141 = bitcast %union.drbd_state* %5 to i64*
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @D_DISKLESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = bitcast %union.drbd_state* %5 to i64*
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @C_WF_SYNC_UUID, align 8
  %149 = icmp sle i64 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  %151 = bitcast %union.drbd_state* %5 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = bitcast %union.drbd_state* %4 to i64*
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %152, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150, %145
  %157 = load i32, i32* @SS_IN_TRANSIENT_STATE, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %156, %150, %140, %135, %130, %125, %120
  %159 = bitcast %union.drbd_state* %5 to i64*
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @C_VERIFY_S, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = bitcast %union.drbd_state* %5 to i64*
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @C_VERIFY_T, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %163, %158
  %169 = bitcast %union.drbd_state* %4 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @C_CONNECTED, align 8
  %172 = icmp slt i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* @SS_NEED_CONNECTION, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %173, %168, %163
  %176 = bitcast %union.drbd_state* %5 to i64*
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @C_VERIFY_S, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = bitcast %union.drbd_state* %5 to i64*
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @C_VERIFY_T, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %180, %175
  %186 = bitcast %union.drbd_state* %5 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = bitcast %union.drbd_state* %4 to i64*
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %187, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = bitcast %union.drbd_state* %4 to i64*
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @C_CONNECTED, align 8
  %195 = icmp sgt i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i32, i32* @SS_RESYNC_RUNNING, align 4
  store i32 %197, i32* %7, align 4
  br label %198

198:                                              ; preds = %196, %191, %185, %180
  %199 = bitcast %union.drbd_state* %5 to i64*
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @C_STARTING_SYNC_S, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = bitcast %union.drbd_state* %5 to i64*
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @C_STARTING_SYNC_T, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %203, %198
  %209 = bitcast %union.drbd_state* %4 to i64*
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @C_CONNECTED, align 8
  %212 = icmp slt i64 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @SS_NEED_CONNECTION, align 4
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %213, %208, %203
  %216 = bitcast %union.drbd_state* %5 to i64*
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @C_SYNC_TARGET, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = bitcast %union.drbd_state* %5 to i64*
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @C_SYNC_SOURCE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %220, %215
  %226 = bitcast %union.drbd_state* %4 to i64*
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @C_WF_REPORT_PARAMS, align 8
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = load i32, i32* @SS_NEED_CONNECTION, align 4
  store i32 %231, i32* %7, align 4
  br label %232

232:                                              ; preds = %230, %225, %220
  %233 = bitcast %union.drbd_state* %5 to i64*
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @C_DISCONNECTING, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %232
  %238 = bitcast %union.drbd_state* %5 to i64*
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @D_OUTDATED, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %254

242:                                              ; preds = %237
  %243 = bitcast %union.drbd_state* %4 to i64*
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @C_CONNECTED, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %242
  %248 = bitcast %union.drbd_state* %4 to i64*
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @D_OUTDATED, align 8
  %251 = icmp sgt i64 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i32, i32* @SS_OUTDATE_WO_CONN, align 4
  store i32 %253, i32* %7, align 4
  br label %254

254:                                              ; preds = %252, %247, %242, %237, %232
  %255 = load i32, i32* %7, align 4
  ret i32 %255
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
