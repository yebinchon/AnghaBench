; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_init_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_init_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ports_device = type { i32, i8**, i8**, i8*, i8*, i32 }
%struct.virtqueue = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@in_intr = common dso_local global i8* null, align 8
@out_intr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@control_intr = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"control-i\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"control-o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ports_device*)* @init_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_vqs(%struct.ports_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ports_device*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.virtqueue**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ports_device* %0, %struct.ports_device** %3, align 8
  %12 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %13 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %16 = call i64 @use_multiport(%struct.ports_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 %20, 2
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 2, %22 ]
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc_array(i32 %25, i32 8, i32 %26)
  %28 = bitcast i8* %27 to %struct.virtqueue**
  store %struct.virtqueue** %28, %struct.virtqueue*** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc_array(i32 %29, i32 8, i32 %30)
  %32 = bitcast i8* %31 to i8**
  store i8** %32, i8*** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc_array(i32 %33, i32 8, i32 %34)
  %36 = bitcast i8* %35 to i8**
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kmalloc_array(i32 %37, i32 8, i32 %38)
  %40 = bitcast i8* %39 to i8**
  %41 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %42 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %41, i32 0, i32 1
  store i8** %40, i8*** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kmalloc_array(i32 %43, i32 8, i32 %44)
  %46 = bitcast i8* %45 to i8**
  %47 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %48 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %47, i32 0, i32 2
  store i8** %46, i8*** %48, align 8
  %49 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %50 = icmp ne %struct.virtqueue** %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %23
  %52 = load i8**, i8*** %4, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i8**, i8*** %5, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %59 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = icmp ne i8** %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %64 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62, %57, %54, %51, %23
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %11, align 4
  br label %244

70:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  %71 = load i8*, i8** @in_intr, align 8
  %72 = load i8**, i8*** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** @out_intr, align 8
  %77 = load i8**, i8*** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %76, i8** %81, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %85, align 8
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %8, align 4
  %93 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %94 = call i64 @use_multiport(%struct.ports_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %147

96:                                               ; preds = %70
  %97 = load i8*, i8** @control_intr, align 8
  %98 = load i8**, i8*** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %97, i8** %101, align 8
  %102 = load i8**, i8*** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  store i8* null, i8** %106, align 8
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %110, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %115, align 8
  store i32 1, i32* %7, align 4
  br label %116

116:                                              ; preds = %143, %96
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %8, align 4
  %123 = load i8*, i8** @in_intr, align 8
  %124 = load i8**, i8*** %4, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %123, i8** %127, align 8
  %128 = load i8*, i8** @out_intr, align 8
  %129 = load i8**, i8*** %4, align 8
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  store i8* %128, i8** %133, align 8
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %137, align 8
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %138, i64 %141
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %142, align 8
  br label %143

143:                                              ; preds = %120
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %116

146:                                              ; preds = %116
  br label %147

147:                                              ; preds = %146, %70
  %148 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %149 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %153 = bitcast %struct.virtqueue** %152 to i8**
  %154 = load i8**, i8*** %4, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = call i32 @virtio_find_vqs(i32 %150, i32 %151, i8** %153, i8** %154, i8** %155, i32* null)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %147
  br label %244

160:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  %161 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %162 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %161, i64 0
  %163 = load %struct.virtqueue*, %struct.virtqueue** %162, align 8
  %164 = bitcast %struct.virtqueue* %163 to i8*
  %165 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %166 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %165, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 0
  store i8* %164, i8** %168, align 8
  %169 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %170 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %169, i64 1
  %171 = load %struct.virtqueue*, %struct.virtqueue** %170, align 8
  %172 = bitcast %struct.virtqueue* %171 to i8*
  %173 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %174 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %173, i32 0, i32 2
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  store i8* %172, i8** %176, align 8
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %8, align 4
  %179 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %180 = call i64 @use_multiport(%struct.ports_device* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %236

182:                                              ; preds = %160
  %183 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %183, i64 %185
  %187 = load %struct.virtqueue*, %struct.virtqueue** %186, align 8
  %188 = bitcast %struct.virtqueue* %187 to i8*
  %189 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %190 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %191, i64 %194
  %196 = load %struct.virtqueue*, %struct.virtqueue** %195, align 8
  %197 = bitcast %struct.virtqueue* %196 to i8*
  %198 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %199 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %198, i32 0, i32 4
  store i8* %197, i8** %199, align 8
  store i32 1, i32* %7, align 4
  br label %200

200:                                              ; preds = %232, %182
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %235

204:                                              ; preds = %200
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 2
  store i32 %206, i32* %8, align 4
  %207 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %207, i64 %209
  %211 = load %struct.virtqueue*, %struct.virtqueue** %210, align 8
  %212 = bitcast %struct.virtqueue* %211 to i8*
  %213 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %214 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %213, i32 0, i32 1
  %215 = load i8**, i8*** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  store i8* %212, i8** %218, align 8
  %219 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %219, i64 %222
  %224 = load %struct.virtqueue*, %struct.virtqueue** %223, align 8
  %225 = bitcast %struct.virtqueue* %224 to i8*
  %226 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %227 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %226, i32 0, i32 2
  %228 = load i8**, i8*** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  store i8* %225, i8** %231, align 8
  br label %232

232:                                              ; preds = %204
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %200

235:                                              ; preds = %200
  br label %236

236:                                              ; preds = %235, %160
  %237 = load i8**, i8*** %5, align 8
  %238 = call i32 @kfree(i8** %237)
  %239 = load i8**, i8*** %4, align 8
  %240 = call i32 @kfree(i8** %239)
  %241 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %242 = bitcast %struct.virtqueue** %241 to i8**
  %243 = call i32 @kfree(i8** %242)
  store i32 0, i32* %2, align 4
  br label %261

244:                                              ; preds = %159, %67
  %245 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %246 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %245, i32 0, i32 2
  %247 = load i8**, i8*** %246, align 8
  %248 = call i32 @kfree(i8** %247)
  %249 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %250 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = call i32 @kfree(i8** %251)
  %253 = load i8**, i8*** %5, align 8
  %254 = call i32 @kfree(i8** %253)
  %255 = load i8**, i8*** %4, align 8
  %256 = call i32 @kfree(i8** %255)
  %257 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %258 = bitcast %struct.virtqueue** %257 to i8**
  %259 = call i32 @kfree(i8** %258)
  %260 = load i32, i32* %11, align 4
  store i32 %260, i32* %2, align 4
  br label %261

261:                                              ; preds = %244, %236
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

declare dso_local i64 @use_multiport(%struct.ports_device*) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @virtio_find_vqs(i32, i32, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
