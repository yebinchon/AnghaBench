; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_recv_packet.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_device_listener.c_dl_recv_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@DL_ERROR = common dso_local global i32 0, align 4
@TYPE_PLIST = common dso_local global i64 0, align 8
@DL_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"MessageType\00", align 1
@PLIST_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Number\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Attached\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"DeviceID\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ProductID\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"SerialNumber\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"LocationID\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Detached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_recv_packet(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %8, align 8
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @dl_sscanf_uint32(i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %40, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i64, i64* %10, align 8
  %46 = icmp ult i64 %45, 16
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %3
  %48 = load i32, i32* @DL_ERROR, align 4
  store i32 %48, i32* %4, align 4
  br label %230

49:                                               ; preds = %44
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @dl_sscanf_uint32(i8* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @dl_sscanf_uint32(i8* %54)
  store i64 %55, i64* %12, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @dl_sscanf_uint32(i8* %58)
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  store i8* %62, i8** %13, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, 16
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 1
  br i1 %66, label %71, label %67

67:                                               ; preds = %49
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @TYPE_PLIST, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %49
  %72 = load i32, i32* @DL_SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  br label %230

73:                                               ; preds = %67
  store i32* null, i32** %15, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @plist_from_xml(i8* %74, i64 %75, i32** %15)
  store i8* null, i8** %16, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load i32*, i32** %15, align 8
  %81 = call i32* @plist_dict_get_item(i32* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %81, i32** %17, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = call i64 @plist_get_node_type(i32* %82)
  %84 = load i64, i64* @PLIST_STRING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @plist_get_string_val(i32* %87, i8** %16)
  br label %89

89:                                               ; preds = %86, %79
  br label %90

90:                                               ; preds = %89, %73
  %91 = load i32, i32* @DL_ERROR, align 4
  store i32 %91, i32* %18, align 4
  %92 = load i8*, i8** %16, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @DL_ERROR, align 4
  store i32 %95, i32* %18, align 4
  br label %224

96:                                               ; preds = %90
  %97 = load i8*, i8** %16, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %117, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %15, align 8
  %102 = call i32* @plist_dict_get_item(i32* %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %102, i32** %19, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  store i64 0, i64* %20, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = call i32 @plist_get_uint_val(i32* %106, i64* %20)
  %108 = load i64, i64* %20, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @DL_ERROR, align 4
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @DL_SUCCESS, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %18, align 4
  br label %116

116:                                              ; preds = %114, %100
  br label %223

117:                                              ; preds = %96
  %118 = load i8*, i8** %16, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %186, label %121

121:                                              ; preds = %117
  %122 = load i32*, i32** %15, align 8
  %123 = call i32* @plist_dict_get_item(i32* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32* %123, i32** %21, align 8
  %124 = load i32*, i32** %21, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %185

126:                                              ; preds = %121
  store i64 0, i64* %22, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = call i32* @plist_dict_get_item(i32* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32* %128, i32** %23, align 8
  %129 = load i32*, i32** %23, align 8
  %130 = call i32 @plist_get_uint_val(i32* %129, i64* %22)
  store i64 0, i64* %24, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = call i32* @plist_dict_get_item(i32* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32* %132, i32** %23, align 8
  %133 = load i32*, i32** %23, align 8
  %134 = call i32 @plist_get_uint_val(i32* %133, i64* %24)
  store i8* null, i8** %25, align 8
  %135 = load i32*, i32** %21, align 8
  %136 = call i32* @plist_dict_get_item(i32* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32* %136, i32** %23, align 8
  %137 = load i32*, i32** %23, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %126
  %140 = load i32*, i32** %23, align 8
  %141 = call i32 @plist_get_string_val(i32* %140, i8** %25)
  %142 = load i8*, i8** %25, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %163

144:                                              ; preds = %139
  %145 = load i8*, i8** %25, align 8
  %146 = call i32 @strlen(i8* %145)
  %147 = icmp eq i32 %146, 24
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = call i8* @malloc(i32 26)
  store i8* %149, i8** %26, align 8
  %150 = load i8*, i8** %26, align 8
  %151 = load i8*, i8** %25, align 8
  %152 = call i32 @memcpy(i8* %150, i8* %151, i32 8)
  %153 = load i8*, i8** %26, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 9
  %155 = load i8*, i8** %25, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 8
  %157 = call i32 @memcpy(i8* %154, i8* %156, i32 17)
  %158 = load i8*, i8** %26, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 8
  store i8 45, i8* %159, align 1
  %160 = load i8*, i8** %25, align 8
  %161 = call i32 @free(i8* %160)
  %162 = load i8*, i8** %26, align 8
  store i8* %162, i8** %25, align 8
  br label %163

163:                                              ; preds = %148, %144, %139
  br label %164

164:                                              ; preds = %163, %126
  store i64 0, i64* %27, align 8
  %165 = load i32*, i32** %21, align 8
  %166 = call i32* @plist_dict_get_item(i32* %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32* %166, i32** %23, align 8
  %167 = load i32*, i32** %23, align 8
  %168 = call i32 @plist_get_uint_val(i32* %167, i64* %27)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %28, align 4
  %172 = load i32, i32* %28, align 4
  %173 = load i64, i64* %22, align 8
  %174 = call i32 @HT_KEY(i64 %173)
  %175 = load i8*, i8** %25, align 8
  %176 = call i32 @ht_put(i32 %172, i32 %174, i8* %175)
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %181 = load i8*, i8** %25, align 8
  %182 = load i64, i64* %22, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 %179(%struct.TYPE_6__* %180, i8* %181, i32 %183)
  store i32 %184, i32* %18, align 4
  br label %185

185:                                              ; preds = %164, %121
  br label %222

186:                                              ; preds = %117
  %187 = load i8*, i8** %16, align 8
  %188 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %221

190:                                              ; preds = %186
  %191 = load i32*, i32** %15, align 8
  %192 = call i32* @plist_dict_get_item(i32* %191, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32* %192, i32** %29, align 8
  %193 = load i32*, i32** %29, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %220

195:                                              ; preds = %190
  store i64 0, i64* %30, align 8
  %196 = load i32*, i32** %29, align 8
  %197 = call i32 @plist_get_uint_val(i32* %196, i64* %30)
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %31, align 4
  %201 = load i32, i32* %31, align 4
  %202 = load i64, i64* %30, align 8
  %203 = call i32 @HT_KEY(i64 %202)
  %204 = call i64 @ht_remove(i32 %201, i32 %203)
  %205 = inttoptr i64 %204 to i8*
  store i8* %205, i8** %32, align 8
  %206 = load i8*, i8** %32, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %219

208:                                              ; preds = %195
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_6__*, i8*, i32)*, i32 (%struct.TYPE_6__*, i8*, i32)** %210, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %213 = load i8*, i8** %32, align 8
  %214 = load i64, i64* %30, align 8
  %215 = trunc i64 %214 to i32
  %216 = call i32 %211(%struct.TYPE_6__* %212, i8* %213, i32 %215)
  store i32 %216, i32* %18, align 4
  %217 = load i8*, i8** %32, align 8
  %218 = call i32 @free(i8* %217)
  br label %219

219:                                              ; preds = %208, %195
  br label %220

220:                                              ; preds = %219, %190
  br label %221

221:                                              ; preds = %220, %186
  br label %222

222:                                              ; preds = %221, %185
  br label %223

223:                                              ; preds = %222, %116
  br label %224

224:                                              ; preds = %223, %94
  %225 = load i8*, i8** %16, align 8
  %226 = call i32 @free(i8* %225)
  %227 = load i32*, i32** %15, align 8
  %228 = call i32 @plist_free(i32* %227)
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %224, %71, %47
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i64 @dl_sscanf_uint32(i8*) #1

declare dso_local i32 @plist_from_xml(i8*, i64, i32**) #1

declare dso_local i32* @plist_dict_get_item(i32*, i8*) #1

declare dso_local i64 @plist_get_node_type(i32*) #1

declare dso_local i32 @plist_get_string_val(i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @plist_get_uint_val(i32*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ht_put(i32, i32, i8*) #1

declare dso_local i32 @HT_KEY(i64) #1

declare dso_local i64 @ht_remove(i32, i32) #1

declare dso_local i32 @plist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
