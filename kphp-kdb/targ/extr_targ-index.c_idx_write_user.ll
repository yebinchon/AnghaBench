; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_write_user.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_idx_write_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.school*, %struct.school*, %struct.school*, %struct.school*, %struct.school*, %struct.school*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.school = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.school*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.education = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.education*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.company = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.company*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.address = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.address*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.interest = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.interest*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.military = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.military*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TARG_INDEX_USER_STRUCT_V1_MAGIC = common dso_local global i32 0, align 4
@AdSpace = common dso_local global i32 0, align 4
@return_one = common dso_local global i32 0, align 4
@return_not_ancient = common dso_local global i32 0, align 4
@writeout_xz = common dso_local global i32 0, align 4
@writeout_xz_not_ancient = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @idx_write_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idx_write_user(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.education*, align 8
  %4 = alloca %struct.school*, align 8
  %5 = alloca %struct.company*, align 8
  %6 = alloca %struct.address*, align 8
  %7 = alloca %struct.interest*, align 8
  %8 = alloca %struct.military*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = call i32 @assert(%struct.TYPE_8__* %9)
  %11 = load i32, i32* @TARG_INDEX_USER_STRUCT_V1_MAGIC, align 4
  %12 = call i32 @writeout_int(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @writeout_int(i32 %15)
  %17 = load i32, i32* @AdSpace, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @return_one, align 4
  %22 = call i32 @intree_traverse(i32 %17, i32 %20, i32 %21)
  %23 = call i32 @writeout_int(i32 %22)
  %24 = load i32, i32* @AdSpace, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @return_not_ancient, align 4
  %29 = call i32 @intree_traverse(i32 %24, i32 %27, i32 %28)
  %30 = call i32 @writeout_int(i32 %29)
  %31 = load i32, i32* @AdSpace, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @return_one, align 4
  %36 = call i32 @intree_traverse(i32 %31, i32 %34, i32 %35)
  %37 = call i32 @writeout_int(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  %42 = call i32 @writeout_int(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @writeout_int(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @writeout_int(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @writeout_int(i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 47
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @writeout(i32 %57, i32 16)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 46
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @writeout_char(i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 45
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @writeout_char(i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 44
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @writeout_short(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 43
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @writeout_char(i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 42
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @writeout_char(i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 41
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @writeout_char(i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 40
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @writeout_char(i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 39
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @writeout_char(i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 38
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @writeout_char(i32 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 37
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @writeout_char(i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 36
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @writeout_char(i32 %101)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 35
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @writeout_short(i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 34
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @writeout_short(i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 33
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @writeout_char(i32 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 32
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @writeout_char(i32 %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 31
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @writeout_char(i32 %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 30
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @writeout_char(i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 29
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @writeout_char(i32 %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 28
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @writeout_char(i32 %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 27
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @writeout_char(i32 %137)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 26
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @writeout_char(i32 %141)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 25
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @writeout(i32 %145, i32 15)
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 15
  %149 = load %struct.school*, %struct.school** %148, align 8
  %150 = call i32 @get_list_len(%struct.school* %149)
  %151 = call i32 @writeout_ushort_check(i32 %150)
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 14
  %154 = load %struct.school*, %struct.school** %153, align 8
  %155 = call i32 @get_list_len(%struct.school* %154)
  %156 = call i32 @writeout_ushort_check(i32 %155)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 13
  %159 = load %struct.school*, %struct.school** %158, align 8
  %160 = call i32 @get_list_len(%struct.school* %159)
  %161 = call i32 @writeout_ushort_check(i32 %160)
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 12
  %164 = load %struct.school*, %struct.school** %163, align 8
  %165 = call i32 @get_list_len(%struct.school* %164)
  %166 = call i32 @writeout_ushort_check(i32 %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 11
  %169 = load %struct.school*, %struct.school** %168, align 8
  %170 = call i32 @get_list_len(%struct.school* %169)
  %171 = call i32 @writeout_ushort_check(i32 %170)
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 10
  %174 = load %struct.school*, %struct.school** %173, align 8
  %175 = call i32 @get_list_len(%struct.school* %174)
  %176 = call i32 @writeout_ushort_check(i32 %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 9
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = icmp ne %struct.TYPE_6__* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 9
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  br label %188

187:                                              ; preds = %1
  br label %188

188:                                              ; preds = %187, %181
  %189 = phi i32 [ %186, %181 ], [ 0, %187 ]
  %190 = call i32 @writeout_ushort_check(i32 %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = icmp ne %struct.TYPE_7__* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  br label %202

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201, %195
  %203 = phi i32 [ %200, %195 ], [ 0, %201 ]
  %204 = call i32 @writeout_ushort_check(i32 %203)
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 24
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @writeout_hashlist(i32 %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 23
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @writeout_hashlist(i32 %211)
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 22
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @writeout_hashlist(i32 %215)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 21
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @writeout_hashlist(i32 %219)
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 20
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @writeout_hashlist(i32 %223)
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 19
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @writeout_string(i32 %227)
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 18
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @writeout_string(i32 %231)
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 17
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @writeout_string(i32 %235)
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 16
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @writeout_string(i32 %239)
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 15
  %243 = load %struct.school*, %struct.school** %242, align 8
  %244 = bitcast %struct.school* %243 to %struct.education*
  store %struct.education* %244, %struct.education** %3, align 8
  br label %245

245:                                              ; preds = %285, %202
  %246 = load %struct.education*, %struct.education** %3, align 8
  %247 = icmp ne %struct.education* %246, null
  br i1 %247, label %248, label %289

248:                                              ; preds = %245
  %249 = load %struct.education*, %struct.education** %3, align 8
  %250 = getelementptr inbounds %struct.education, %struct.education* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @writeout_int(i32 %251)
  %253 = load %struct.education*, %struct.education** %3, align 8
  %254 = getelementptr inbounds %struct.education, %struct.education* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @writeout_int(i32 %255)
  %257 = load %struct.education*, %struct.education** %3, align 8
  %258 = getelementptr inbounds %struct.education, %struct.education* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @writeout_int(i32 %259)
  %261 = load %struct.education*, %struct.education** %3, align 8
  %262 = getelementptr inbounds %struct.education, %struct.education* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @writeout_int(i32 %263)
  %265 = load %struct.education*, %struct.education** %3, align 8
  %266 = getelementptr inbounds %struct.education, %struct.education* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @writeout_int(i32 %267)
  %269 = load %struct.education*, %struct.education** %3, align 8
  %270 = getelementptr inbounds %struct.education, %struct.education* %269, i32 0, i32 22
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @writeout_char(i32 %271)
  %273 = load %struct.education*, %struct.education** %3, align 8
  %274 = getelementptr inbounds %struct.education, %struct.education* %273, i32 0, i32 33
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @writeout_char(i32 %275)
  %277 = load %struct.education*, %struct.education** %3, align 8
  %278 = getelementptr inbounds %struct.education, %struct.education* %277, i32 0, i32 32
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @writeout_char(i32 %279)
  %281 = load %struct.education*, %struct.education** %3, align 8
  %282 = getelementptr inbounds %struct.education, %struct.education* %281, i32 0, i32 31
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @writeout_char(i32 %283)
  br label %285

285:                                              ; preds = %248
  %286 = load %struct.education*, %struct.education** %3, align 8
  %287 = getelementptr inbounds %struct.education, %struct.education* %286, i32 0, i32 13
  %288 = load %struct.education*, %struct.education** %287, align 8
  store %struct.education* %288, %struct.education** %3, align 8
  br label %245

289:                                              ; preds = %245
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 14
  %292 = load %struct.school*, %struct.school** %291, align 8
  store %struct.school* %292, %struct.school** %4, align 8
  br label %293

293:                                              ; preds = %337, %289
  %294 = load %struct.school*, %struct.school** %4, align 8
  %295 = icmp ne %struct.school* %294, null
  br i1 %295, label %296, label %341

296:                                              ; preds = %293
  %297 = load %struct.school*, %struct.school** %4, align 8
  %298 = getelementptr inbounds %struct.school, %struct.school* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @writeout_int(i32 %299)
  %301 = load %struct.school*, %struct.school** %4, align 8
  %302 = getelementptr inbounds %struct.school, %struct.school* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @writeout_int(i32 %303)
  %305 = load %struct.school*, %struct.school** %4, align 8
  %306 = getelementptr inbounds %struct.school, %struct.school* %305, i32 0, i32 12
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @writeout_short(i32 %307)
  %309 = load %struct.school*, %struct.school** %4, align 8
  %310 = getelementptr inbounds %struct.school, %struct.school* %309, i32 0, i32 11
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @writeout_short(i32 %311)
  %313 = load %struct.school*, %struct.school** %4, align 8
  %314 = getelementptr inbounds %struct.school, %struct.school* %313, i32 0, i32 30
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @writeout_short(i32 %315)
  %317 = load %struct.school*, %struct.school** %4, align 8
  %318 = getelementptr inbounds %struct.school, %struct.school* %317, i32 0, i32 22
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @writeout_char(i32 %319)
  %321 = load %struct.school*, %struct.school** %4, align 8
  %322 = getelementptr inbounds %struct.school, %struct.school* %321, i32 0, i32 29
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @writeout_char(i32 %323)
  %325 = load %struct.school*, %struct.school** %4, align 8
  %326 = getelementptr inbounds %struct.school, %struct.school* %325, i32 0, i32 28
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @writeout_char(i32 %327)
  %329 = load %struct.school*, %struct.school** %4, align 8
  %330 = getelementptr inbounds %struct.school, %struct.school* %329, i32 0, i32 27
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @writeout_hashlist(i32 %331)
  %333 = load %struct.school*, %struct.school** %4, align 8
  %334 = getelementptr inbounds %struct.school, %struct.school* %333, i32 0, i32 26
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @writeout_string(i32 %335)
  br label %337

337:                                              ; preds = %296
  %338 = load %struct.school*, %struct.school** %4, align 8
  %339 = getelementptr inbounds %struct.school, %struct.school* %338, i32 0, i32 13
  %340 = load %struct.school*, %struct.school** %339, align 8
  store %struct.school* %340, %struct.school** %4, align 8
  br label %293

341:                                              ; preds = %293
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 13
  %344 = load %struct.school*, %struct.school** %343, align 8
  %345 = bitcast %struct.school* %344 to %struct.company*
  store %struct.company* %345, %struct.company** %5, align 8
  br label %346

346:                                              ; preds = %386, %341
  %347 = load %struct.company*, %struct.company** %5, align 8
  %348 = icmp ne %struct.company* %347, null
  br i1 %348, label %349, label %390

349:                                              ; preds = %346
  %350 = load %struct.company*, %struct.company** %5, align 8
  %351 = getelementptr inbounds %struct.company, %struct.company* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @writeout_int(i32 %352)
  %354 = load %struct.company*, %struct.company** %5, align 8
  %355 = getelementptr inbounds %struct.company, %struct.company* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @writeout_int(i32 %356)
  %358 = load %struct.company*, %struct.company** %5, align 8
  %359 = getelementptr inbounds %struct.company, %struct.company* %358, i32 0, i32 12
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @writeout_short(i32 %360)
  %362 = load %struct.company*, %struct.company** %5, align 8
  %363 = getelementptr inbounds %struct.company, %struct.company* %362, i32 0, i32 11
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @writeout_short(i32 %364)
  %366 = load %struct.company*, %struct.company** %5, align 8
  %367 = getelementptr inbounds %struct.company, %struct.company* %366, i32 0, i32 22
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @writeout_char(i32 %368)
  %370 = load %struct.company*, %struct.company** %5, align 8
  %371 = getelementptr inbounds %struct.company, %struct.company* %370, i32 0, i32 19
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @writeout_hashlist(i32 %372)
  %374 = load %struct.company*, %struct.company** %5, align 8
  %375 = getelementptr inbounds %struct.company, %struct.company* %374, i32 0, i32 25
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @writeout_hashlist(i32 %376)
  %378 = load %struct.company*, %struct.company** %5, align 8
  %379 = getelementptr inbounds %struct.company, %struct.company* %378, i32 0, i32 24
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @writeout_string(i32 %380)
  %382 = load %struct.company*, %struct.company** %5, align 8
  %383 = getelementptr inbounds %struct.company, %struct.company* %382, i32 0, i32 23
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @writeout_string(i32 %384)
  br label %386

386:                                              ; preds = %349
  %387 = load %struct.company*, %struct.company** %5, align 8
  %388 = getelementptr inbounds %struct.company, %struct.company* %387, i32 0, i32 13
  %389 = load %struct.company*, %struct.company** %388, align 8
  store %struct.company* %389, %struct.company** %5, align 8
  br label %346

390:                                              ; preds = %346
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 12
  %393 = load %struct.school*, %struct.school** %392, align 8
  %394 = bitcast %struct.school* %393 to %struct.address*
  store %struct.address* %394, %struct.address** %6, align 8
  br label %395

395:                                              ; preds = %439, %390
  %396 = load %struct.address*, %struct.address** %6, align 8
  %397 = icmp ne %struct.address* %396, null
  br i1 %397, label %398, label %443

398:                                              ; preds = %395
  %399 = load %struct.address*, %struct.address** %6, align 8
  %400 = getelementptr inbounds %struct.address, %struct.address* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @writeout_int(i32 %401)
  %403 = load %struct.address*, %struct.address** %6, align 8
  %404 = getelementptr inbounds %struct.address, %struct.address* %403, i32 0, i32 7
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @writeout_int(i32 %405)
  %407 = load %struct.address*, %struct.address** %6, align 8
  %408 = getelementptr inbounds %struct.address, %struct.address* %407, i32 0, i32 8
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @writeout_int(i32 %409)
  %411 = load %struct.address*, %struct.address** %6, align 8
  %412 = getelementptr inbounds %struct.address, %struct.address* %411, i32 0, i32 9
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @writeout_int(i32 %413)
  %415 = load %struct.address*, %struct.address** %6, align 8
  %416 = getelementptr inbounds %struct.address, %struct.address* %415, i32 0, i32 22
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @writeout_char(i32 %417)
  %419 = load %struct.address*, %struct.address** %6, align 8
  %420 = getelementptr inbounds %struct.address, %struct.address* %419, i32 0, i32 21
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @writeout_char(i32 %421)
  %423 = load %struct.address*, %struct.address** %6, align 8
  %424 = getelementptr inbounds %struct.address, %struct.address* %423, i32 0, i32 20
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @writeout_hashlist(i32 %425)
  %427 = load %struct.address*, %struct.address** %6, align 8
  %428 = getelementptr inbounds %struct.address, %struct.address* %427, i32 0, i32 19
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @writeout_hashlist(i32 %429)
  %431 = load %struct.address*, %struct.address** %6, align 8
  %432 = getelementptr inbounds %struct.address, %struct.address* %431, i32 0, i32 18
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @writeout_string(i32 %433)
  %435 = load %struct.address*, %struct.address** %6, align 8
  %436 = getelementptr inbounds %struct.address, %struct.address* %435, i32 0, i32 17
  %437 = load i32, i32* %436, align 4
  %438 = call i32 @writeout_string(i32 %437)
  br label %439

439:                                              ; preds = %398
  %440 = load %struct.address*, %struct.address** %6, align 8
  %441 = getelementptr inbounds %struct.address, %struct.address* %440, i32 0, i32 13
  %442 = load %struct.address*, %struct.address** %441, align 8
  store %struct.address* %442, %struct.address** %6, align 8
  br label %395

443:                                              ; preds = %395
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 11
  %446 = load %struct.school*, %struct.school** %445, align 8
  %447 = bitcast %struct.school* %446 to %struct.interest*
  store %struct.interest* %447, %struct.interest** %7, align 8
  br label %448

448:                                              ; preds = %464, %443
  %449 = load %struct.interest*, %struct.interest** %7, align 8
  %450 = icmp ne %struct.interest* %449, null
  br i1 %450, label %451, label %468

451:                                              ; preds = %448
  %452 = load %struct.interest*, %struct.interest** %7, align 8
  %453 = getelementptr inbounds %struct.interest, %struct.interest* %452, i32 0, i32 16
  %454 = load i32, i32* %453, align 8
  %455 = call i32 @writeout_char(i32 %454)
  %456 = load %struct.interest*, %struct.interest** %7, align 8
  %457 = getelementptr inbounds %struct.interest, %struct.interest* %456, i32 0, i32 15
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @writeout_char(i32 %458)
  %460 = load %struct.interest*, %struct.interest** %7, align 8
  %461 = getelementptr inbounds %struct.interest, %struct.interest* %460, i32 0, i32 14
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @writeout_string(i32 %462)
  br label %464

464:                                              ; preds = %451
  %465 = load %struct.interest*, %struct.interest** %7, align 8
  %466 = getelementptr inbounds %struct.interest, %struct.interest* %465, i32 0, i32 13
  %467 = load %struct.interest*, %struct.interest** %466, align 8
  store %struct.interest* %467, %struct.interest** %7, align 8
  br label %448

468:                                              ; preds = %448
  %469 = call i32 @writeout_align(i32 4)
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 10
  %472 = load %struct.school*, %struct.school** %471, align 8
  %473 = bitcast %struct.school* %472 to %struct.military*
  store %struct.military* %473, %struct.military** %8, align 8
  br label %474

474:                                              ; preds = %490, %468
  %475 = load %struct.military*, %struct.military** %8, align 8
  %476 = icmp ne %struct.military* %475, null
  br i1 %476, label %477, label %494

477:                                              ; preds = %474
  %478 = load %struct.military*, %struct.military** %8, align 8
  %479 = getelementptr inbounds %struct.military, %struct.military* %478, i32 0, i32 10
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @writeout_int(i32 %480)
  %482 = load %struct.military*, %struct.military** %8, align 8
  %483 = getelementptr inbounds %struct.military, %struct.military* %482, i32 0, i32 12
  %484 = load i32, i32* %483, align 8
  %485 = call i32 @writeout_short(i32 %484)
  %486 = load %struct.military*, %struct.military** %8, align 8
  %487 = getelementptr inbounds %struct.military, %struct.military* %486, i32 0, i32 11
  %488 = load i32, i32* %487, align 4
  %489 = call i32 @writeout_short(i32 %488)
  br label %490

490:                                              ; preds = %477
  %491 = load %struct.military*, %struct.military** %8, align 8
  %492 = getelementptr inbounds %struct.military, %struct.military* %491, i32 0, i32 13
  %493 = load %struct.military*, %struct.military** %492, align 8
  store %struct.military* %493, %struct.military** %8, align 8
  br label %474

494:                                              ; preds = %474
  %495 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %496 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %495, i32 0, i32 9
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %496, align 8
  %498 = icmp ne %struct.TYPE_6__* %497, null
  br i1 %498, label %499, label %512

499:                                              ; preds = %494
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i32 0, i32 9
  %502 = load %struct.TYPE_6__*, %struct.TYPE_6__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 9
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = mul nsw i32 %509, 4
  %511 = call i32 @writeout(i32 %504, i32 %510)
  br label %512

512:                                              ; preds = %499, %494
  %513 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %514 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %513, i32 0, i32 8
  %515 = load %struct.TYPE_7__*, %struct.TYPE_7__** %514, align 8
  %516 = icmp ne %struct.TYPE_7__* %515, null
  br i1 %516, label %517, label %530

517:                                              ; preds = %512
  %518 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %519 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %518, i32 0, i32 8
  %520 = load %struct.TYPE_7__*, %struct.TYPE_7__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i32 0, i32 8
  %525 = load %struct.TYPE_7__*, %struct.TYPE_7__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = mul nsw i32 %527, 2
  %529 = call i32 @writeout(i32 %522, i32 %528)
  br label %530

530:                                              ; preds = %517, %512
  %531 = call i32 @writeout_align(i32 4)
  %532 = load i32, i32* @AdSpace, align 4
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 7
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @writeout_xz, align 4
  %537 = call i32 @intree_traverse(i32 %532, i32 %535, i32 %536)
  %538 = load i32, i32* @AdSpace, align 4
  %539 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %539, i32 0, i32 6
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @writeout_xz_not_ancient, align 4
  %543 = call i32 @intree_traverse(i32 %538, i32 %541, i32 %542)
  %544 = load i32, i32* @AdSpace, align 4
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 5
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* @writeout_xz, align 4
  %549 = call i32 @intree_traverse(i32 %544, i32 %547, i32 %548)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @writeout_int(i32) #1

declare dso_local i32 @intree_traverse(i32, i32, i32) #1

declare dso_local i32 @writeout(i32, i32) #1

declare dso_local i32 @writeout_char(i32) #1

declare dso_local i32 @writeout_short(i32) #1

declare dso_local i32 @writeout_ushort_check(i32) #1

declare dso_local i32 @get_list_len(%struct.school*) #1

declare dso_local i32 @writeout_hashlist(i32) #1

declare dso_local i32 @writeout_string(i32) #1

declare dso_local i32 @writeout_align(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
