; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_cleanup.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demo = type { i64, i32, %struct.TYPE_9__*, i32, i32, i32, i64, i32, %struct.TYPE_9__*, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@DEMO_TEXTURE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demo*)* @demo_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_cleanup(%struct.demo* %0) #0 {
  %2 = alloca %struct.demo*, align 8
  %3 = alloca i64, align 8
  store %struct.demo* %0, %struct.demo** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.demo*, %struct.demo** %2, align 8
  %7 = getelementptr inbounds %struct.demo, %struct.demo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load %struct.demo*, %struct.demo** %2, align 8
  %12 = getelementptr inbounds %struct.demo, %struct.demo* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.demo*, %struct.demo** %2, align 8
  %15 = getelementptr inbounds %struct.demo, %struct.demo* %14, i32 0, i32 21
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @vkDestroyFramebuffer(i32 %13, i32 %20, i32* null)
  br label %22

22:                                               ; preds = %10
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %4

25:                                               ; preds = %4
  %26 = load %struct.demo*, %struct.demo** %2, align 8
  %27 = getelementptr inbounds %struct.demo, %struct.demo* %26, i32 0, i32 21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_9__* %28)
  %30 = load %struct.demo*, %struct.demo** %2, align 8
  %31 = getelementptr inbounds %struct.demo, %struct.demo* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.demo*, %struct.demo** %2, align 8
  %34 = getelementptr inbounds %struct.demo, %struct.demo* %33, i32 0, i32 20
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @vkDestroyDescriptorPool(i32 %32, i32 %35, i32* null)
  %37 = load %struct.demo*, %struct.demo** %2, align 8
  %38 = getelementptr inbounds %struct.demo, %struct.demo* %37, i32 0, i32 19
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %25
  %42 = load %struct.demo*, %struct.demo** %2, align 8
  %43 = getelementptr inbounds %struct.demo, %struct.demo* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.demo*, %struct.demo** %2, align 8
  %46 = getelementptr inbounds %struct.demo, %struct.demo* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.demo*, %struct.demo** %2, align 8
  %49 = getelementptr inbounds %struct.demo, %struct.demo* %48, i32 0, i32 19
  %50 = call i32 @vkFreeCommandBuffers(i32 %44, i32 %47, i32 1, i64* %49)
  br label %51

51:                                               ; preds = %41, %25
  %52 = load %struct.demo*, %struct.demo** %2, align 8
  %53 = getelementptr inbounds %struct.demo, %struct.demo* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.demo*, %struct.demo** %2, align 8
  %56 = getelementptr inbounds %struct.demo, %struct.demo* %55, i32 0, i32 17
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.demo*, %struct.demo** %2, align 8
  %59 = getelementptr inbounds %struct.demo, %struct.demo* %58, i32 0, i32 18
  %60 = call i32 @vkFreeCommandBuffers(i32 %54, i32 %57, i32 1, i64* %59)
  %61 = load %struct.demo*, %struct.demo** %2, align 8
  %62 = getelementptr inbounds %struct.demo, %struct.demo* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.demo*, %struct.demo** %2, align 8
  %65 = getelementptr inbounds %struct.demo, %struct.demo* %64, i32 0, i32 17
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vkDestroyCommandPool(i32 %63, i32 %66, i32* null)
  %68 = load %struct.demo*, %struct.demo** %2, align 8
  %69 = getelementptr inbounds %struct.demo, %struct.demo* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.demo*, %struct.demo** %2, align 8
  %72 = getelementptr inbounds %struct.demo, %struct.demo* %71, i32 0, i32 16
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vkDestroyPipeline(i32 %70, i32 %73, i32* null)
  %75 = load %struct.demo*, %struct.demo** %2, align 8
  %76 = getelementptr inbounds %struct.demo, %struct.demo* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.demo*, %struct.demo** %2, align 8
  %79 = getelementptr inbounds %struct.demo, %struct.demo* %78, i32 0, i32 15
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vkDestroyRenderPass(i32 %77, i32 %80, i32* null)
  %82 = load %struct.demo*, %struct.demo** %2, align 8
  %83 = getelementptr inbounds %struct.demo, %struct.demo* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.demo*, %struct.demo** %2, align 8
  %86 = getelementptr inbounds %struct.demo, %struct.demo* %85, i32 0, i32 14
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @vkDestroyPipelineLayout(i32 %84, i32 %87, i32* null)
  %89 = load %struct.demo*, %struct.demo** %2, align 8
  %90 = getelementptr inbounds %struct.demo, %struct.demo* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.demo*, %struct.demo** %2, align 8
  %93 = getelementptr inbounds %struct.demo, %struct.demo* %92, i32 0, i32 13
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @vkDestroyDescriptorSetLayout(i32 %91, i32 %94, i32* null)
  %96 = load %struct.demo*, %struct.demo** %2, align 8
  %97 = getelementptr inbounds %struct.demo, %struct.demo* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.demo*, %struct.demo** %2, align 8
  %100 = getelementptr inbounds %struct.demo, %struct.demo* %99, i32 0, i32 12
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @vkDestroyBuffer(i32 %98, i32 %102, i32* null)
  %104 = load %struct.demo*, %struct.demo** %2, align 8
  %105 = getelementptr inbounds %struct.demo, %struct.demo* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.demo*, %struct.demo** %2, align 8
  %108 = getelementptr inbounds %struct.demo, %struct.demo* %107, i32 0, i32 12
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @vkFreeMemory(i32 %106, i32 %110, i32* null)
  store i64 0, i64* %3, align 8
  br label %112

112:                                              ; preds = %161, %51
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @DEMO_TEXTURE_COUNT, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %164

116:                                              ; preds = %112
  %117 = load %struct.demo*, %struct.demo** %2, align 8
  %118 = getelementptr inbounds %struct.demo, %struct.demo* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.demo*, %struct.demo** %2, align 8
  %121 = getelementptr inbounds %struct.demo, %struct.demo* %120, i32 0, i32 11
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load i64, i64* %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @vkDestroyImageView(i32 %119, i32 %126, i32* null)
  %128 = load %struct.demo*, %struct.demo** %2, align 8
  %129 = getelementptr inbounds %struct.demo, %struct.demo* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.demo*, %struct.demo** %2, align 8
  %132 = getelementptr inbounds %struct.demo, %struct.demo* %131, i32 0, i32 11
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i64, i64* %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @vkDestroyImage(i32 %130, i32 %137, i32* null)
  %139 = load %struct.demo*, %struct.demo** %2, align 8
  %140 = getelementptr inbounds %struct.demo, %struct.demo* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.demo*, %struct.demo** %2, align 8
  %143 = getelementptr inbounds %struct.demo, %struct.demo* %142, i32 0, i32 11
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i64, i64* %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @vkFreeMemory(i32 %141, i32 %148, i32* null)
  %150 = load %struct.demo*, %struct.demo** %2, align 8
  %151 = getelementptr inbounds %struct.demo, %struct.demo* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.demo*, %struct.demo** %2, align 8
  %154 = getelementptr inbounds %struct.demo, %struct.demo* %153, i32 0, i32 11
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i64, i64* %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @vkDestroySampler(i32 %152, i32 %159, i32* null)
  br label %161

161:                                              ; preds = %116
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %3, align 8
  br label %112

164:                                              ; preds = %112
  store i64 0, i64* %3, align 8
  br label %165

165:                                              ; preds = %183, %164
  %166 = load i64, i64* %3, align 8
  %167 = load %struct.demo*, %struct.demo** %2, align 8
  %168 = getelementptr inbounds %struct.demo, %struct.demo* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ult i64 %166, %169
  br i1 %170, label %171, label %186

171:                                              ; preds = %165
  %172 = load %struct.demo*, %struct.demo** %2, align 8
  %173 = getelementptr inbounds %struct.demo, %struct.demo* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.demo*, %struct.demo** %2, align 8
  %176 = getelementptr inbounds %struct.demo, %struct.demo* %175, i32 0, i32 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load i64, i64* %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @vkDestroyImageView(i32 %174, i32 %181, i32* null)
  br label %183

183:                                              ; preds = %171
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %3, align 8
  br label %165

186:                                              ; preds = %165
  %187 = load %struct.demo*, %struct.demo** %2, align 8
  %188 = getelementptr inbounds %struct.demo, %struct.demo* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.demo*, %struct.demo** %2, align 8
  %191 = getelementptr inbounds %struct.demo, %struct.demo* %190, i32 0, i32 10
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @vkDestroyImageView(i32 %189, i32 %193, i32* null)
  %195 = load %struct.demo*, %struct.demo** %2, align 8
  %196 = getelementptr inbounds %struct.demo, %struct.demo* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.demo*, %struct.demo** %2, align 8
  %199 = getelementptr inbounds %struct.demo, %struct.demo* %198, i32 0, i32 10
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @vkDestroyImage(i32 %197, i32 %201, i32* null)
  %203 = load %struct.demo*, %struct.demo** %2, align 8
  %204 = getelementptr inbounds %struct.demo, %struct.demo* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.demo*, %struct.demo** %2, align 8
  %207 = getelementptr inbounds %struct.demo, %struct.demo* %206, i32 0, i32 10
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @vkFreeMemory(i32 %205, i32 %209, i32* null)
  %211 = load %struct.demo*, %struct.demo** %2, align 8
  %212 = getelementptr inbounds %struct.demo, %struct.demo* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.demo*, %struct.demo** %2, align 8
  %215 = getelementptr inbounds %struct.demo, %struct.demo* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @vkDestroySwapchainKHR(i32 %213, i32 %216, i32* null)
  %218 = load %struct.demo*, %struct.demo** %2, align 8
  %219 = getelementptr inbounds %struct.demo, %struct.demo* %218, i32 0, i32 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = call i32 @free(%struct.TYPE_9__* %220)
  %222 = load %struct.demo*, %struct.demo** %2, align 8
  %223 = getelementptr inbounds %struct.demo, %struct.demo* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @vkDestroyDevice(i32 %224, i32* null)
  %226 = load %struct.demo*, %struct.demo** %2, align 8
  %227 = getelementptr inbounds %struct.demo, %struct.demo* %226, i32 0, i32 6
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %186
  %231 = load %struct.demo*, %struct.demo** %2, align 8
  %232 = getelementptr inbounds %struct.demo, %struct.demo* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.demo*, %struct.demo** %2, align 8
  %235 = getelementptr inbounds %struct.demo, %struct.demo* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @vkDestroyDebugReportCallbackEXT(i32 %233, i32 %236, i32* null)
  br label %238

238:                                              ; preds = %230, %186
  %239 = load %struct.demo*, %struct.demo** %2, align 8
  %240 = getelementptr inbounds %struct.demo, %struct.demo* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.demo*, %struct.demo** %2, align 8
  %243 = getelementptr inbounds %struct.demo, %struct.demo* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @vkDestroySurfaceKHR(i32 %241, i32 %244, i32* null)
  %246 = load %struct.demo*, %struct.demo** %2, align 8
  %247 = getelementptr inbounds %struct.demo, %struct.demo* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @vkDestroyInstance(i32 %248, i32* null)
  %250 = load %struct.demo*, %struct.demo** %2, align 8
  %251 = getelementptr inbounds %struct.demo, %struct.demo* %250, i32 0, i32 2
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = call i32 @free(%struct.TYPE_9__* %252)
  %254 = load %struct.demo*, %struct.demo** %2, align 8
  %255 = getelementptr inbounds %struct.demo, %struct.demo* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @glfwDestroyWindow(i32 %256)
  %258 = call i32 (...) @glfwTerminate()
  ret void
}

declare dso_local i32 @vkDestroyFramebuffer(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @vkDestroyDescriptorPool(i32, i32, i32*) #1

declare dso_local i32 @vkFreeCommandBuffers(i32, i32, i32, i64*) #1

declare dso_local i32 @vkDestroyCommandPool(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyPipeline(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyRenderPass(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyPipelineLayout(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyDescriptorSetLayout(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyBuffer(i32, i32, i32*) #1

declare dso_local i32 @vkFreeMemory(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyImageView(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyImage(i32, i32, i32*) #1

declare dso_local i32 @vkDestroySampler(i32, i32, i32*) #1

declare dso_local i32 @vkDestroySwapchainKHR(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyDevice(i32, i32*) #1

declare dso_local i32 @vkDestroyDebugReportCallbackEXT(i32, i32, i32*) #1

declare dso_local i32 @vkDestroySurfaceKHR(i32, i32, i32*) #1

declare dso_local i32 @vkDestroyInstance(i32, i32*) #1

declare dso_local i32 @glfwDestroyWindow(i32) #1

declare dso_local i32 @glfwTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
