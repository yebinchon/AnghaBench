; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_resize.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demo = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@DEMO_TEXTURE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demo*)* @demo_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_resize(%struct.demo* %0) #0 {
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
  %12 = getelementptr inbounds %struct.demo, %struct.demo* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.demo*, %struct.demo** %2, align 8
  %15 = getelementptr inbounds %struct.demo, %struct.demo* %14, i32 0, i32 14
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
  %27 = getelementptr inbounds %struct.demo, %struct.demo* %26, i32 0, i32 14
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_9__* %28)
  %30 = load %struct.demo*, %struct.demo** %2, align 8
  %31 = getelementptr inbounds %struct.demo, %struct.demo* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.demo*, %struct.demo** %2, align 8
  %34 = getelementptr inbounds %struct.demo, %struct.demo* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @vkDestroyDescriptorPool(i32 %32, i32 %35, i32* null)
  %37 = load %struct.demo*, %struct.demo** %2, align 8
  %38 = getelementptr inbounds %struct.demo, %struct.demo* %37, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %25
  %42 = load %struct.demo*, %struct.demo** %2, align 8
  %43 = getelementptr inbounds %struct.demo, %struct.demo* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.demo*, %struct.demo** %2, align 8
  %46 = getelementptr inbounds %struct.demo, %struct.demo* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.demo*, %struct.demo** %2, align 8
  %49 = getelementptr inbounds %struct.demo, %struct.demo* %48, i32 0, i32 12
  %50 = call i32 @vkFreeCommandBuffers(i32 %44, i32 %47, i32 1, i64* %49)
  %51 = load i64, i64* @VK_NULL_HANDLE, align 8
  %52 = load %struct.demo*, %struct.demo** %2, align 8
  %53 = getelementptr inbounds %struct.demo, %struct.demo* %52, i32 0, i32 12
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %41, %25
  %55 = load %struct.demo*, %struct.demo** %2, align 8
  %56 = getelementptr inbounds %struct.demo, %struct.demo* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.demo*, %struct.demo** %2, align 8
  %59 = getelementptr inbounds %struct.demo, %struct.demo* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.demo*, %struct.demo** %2, align 8
  %62 = getelementptr inbounds %struct.demo, %struct.demo* %61, i32 0, i32 11
  %63 = call i32 @vkFreeCommandBuffers(i32 %57, i32 %60, i32 1, i64* %62)
  %64 = load %struct.demo*, %struct.demo** %2, align 8
  %65 = getelementptr inbounds %struct.demo, %struct.demo* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.demo*, %struct.demo** %2, align 8
  %68 = getelementptr inbounds %struct.demo, %struct.demo* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @vkDestroyCommandPool(i32 %66, i32 %69, i32* null)
  %71 = load %struct.demo*, %struct.demo** %2, align 8
  %72 = getelementptr inbounds %struct.demo, %struct.demo* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.demo*, %struct.demo** %2, align 8
  %75 = getelementptr inbounds %struct.demo, %struct.demo* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @vkDestroyPipeline(i32 %73, i32 %76, i32* null)
  %78 = load %struct.demo*, %struct.demo** %2, align 8
  %79 = getelementptr inbounds %struct.demo, %struct.demo* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.demo*, %struct.demo** %2, align 8
  %82 = getelementptr inbounds %struct.demo, %struct.demo* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @vkDestroyRenderPass(i32 %80, i32 %83, i32* null)
  %85 = load %struct.demo*, %struct.demo** %2, align 8
  %86 = getelementptr inbounds %struct.demo, %struct.demo* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.demo*, %struct.demo** %2, align 8
  %89 = getelementptr inbounds %struct.demo, %struct.demo* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vkDestroyPipelineLayout(i32 %87, i32 %90, i32* null)
  %92 = load %struct.demo*, %struct.demo** %2, align 8
  %93 = getelementptr inbounds %struct.demo, %struct.demo* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.demo*, %struct.demo** %2, align 8
  %96 = getelementptr inbounds %struct.demo, %struct.demo* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @vkDestroyDescriptorSetLayout(i32 %94, i32 %97, i32* null)
  %99 = load %struct.demo*, %struct.demo** %2, align 8
  %100 = getelementptr inbounds %struct.demo, %struct.demo* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.demo*, %struct.demo** %2, align 8
  %103 = getelementptr inbounds %struct.demo, %struct.demo* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @vkDestroyBuffer(i32 %101, i32 %105, i32* null)
  %107 = load %struct.demo*, %struct.demo** %2, align 8
  %108 = getelementptr inbounds %struct.demo, %struct.demo* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.demo*, %struct.demo** %2, align 8
  %111 = getelementptr inbounds %struct.demo, %struct.demo* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @vkFreeMemory(i32 %109, i32 %113, i32* null)
  store i64 0, i64* %3, align 8
  br label %115

115:                                              ; preds = %164, %54
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* @DEMO_TEXTURE_COUNT, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %167

119:                                              ; preds = %115
  %120 = load %struct.demo*, %struct.demo** %2, align 8
  %121 = getelementptr inbounds %struct.demo, %struct.demo* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.demo*, %struct.demo** %2, align 8
  %124 = getelementptr inbounds %struct.demo, %struct.demo* %123, i32 0, i32 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i64, i64* %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @vkDestroyImageView(i32 %122, i32 %129, i32* null)
  %131 = load %struct.demo*, %struct.demo** %2, align 8
  %132 = getelementptr inbounds %struct.demo, %struct.demo* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.demo*, %struct.demo** %2, align 8
  %135 = getelementptr inbounds %struct.demo, %struct.demo* %134, i32 0, i32 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i64, i64* %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @vkDestroyImage(i32 %133, i32 %140, i32* null)
  %142 = load %struct.demo*, %struct.demo** %2, align 8
  %143 = getelementptr inbounds %struct.demo, %struct.demo* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.demo*, %struct.demo** %2, align 8
  %146 = getelementptr inbounds %struct.demo, %struct.demo* %145, i32 0, i32 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i64, i64* %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @vkFreeMemory(i32 %144, i32 %151, i32* null)
  %153 = load %struct.demo*, %struct.demo** %2, align 8
  %154 = getelementptr inbounds %struct.demo, %struct.demo* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.demo*, %struct.demo** %2, align 8
  %157 = getelementptr inbounds %struct.demo, %struct.demo* %156, i32 0, i32 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i64, i64* %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @vkDestroySampler(i32 %155, i32 %162, i32* null)
  br label %164

164:                                              ; preds = %119
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %3, align 8
  br label %115

167:                                              ; preds = %115
  store i64 0, i64* %3, align 8
  br label %168

168:                                              ; preds = %186, %167
  %169 = load i64, i64* %3, align 8
  %170 = load %struct.demo*, %struct.demo** %2, align 8
  %171 = getelementptr inbounds %struct.demo, %struct.demo* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ult i64 %169, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %168
  %175 = load %struct.demo*, %struct.demo** %2, align 8
  %176 = getelementptr inbounds %struct.demo, %struct.demo* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.demo*, %struct.demo** %2, align 8
  %179 = getelementptr inbounds %struct.demo, %struct.demo* %178, i32 0, i32 1
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = load i64, i64* %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @vkDestroyImageView(i32 %177, i32 %184, i32* null)
  br label %186

186:                                              ; preds = %174
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %3, align 8
  br label %168

189:                                              ; preds = %168
  %190 = load %struct.demo*, %struct.demo** %2, align 8
  %191 = getelementptr inbounds %struct.demo, %struct.demo* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.demo*, %struct.demo** %2, align 8
  %194 = getelementptr inbounds %struct.demo, %struct.demo* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @vkDestroyImageView(i32 %192, i32 %196, i32* null)
  %198 = load %struct.demo*, %struct.demo** %2, align 8
  %199 = getelementptr inbounds %struct.demo, %struct.demo* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.demo*, %struct.demo** %2, align 8
  %202 = getelementptr inbounds %struct.demo, %struct.demo* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @vkDestroyImage(i32 %200, i32 %204, i32* null)
  %206 = load %struct.demo*, %struct.demo** %2, align 8
  %207 = getelementptr inbounds %struct.demo, %struct.demo* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.demo*, %struct.demo** %2, align 8
  %210 = getelementptr inbounds %struct.demo, %struct.demo* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @vkFreeMemory(i32 %208, i32 %212, i32* null)
  %214 = load %struct.demo*, %struct.demo** %2, align 8
  %215 = getelementptr inbounds %struct.demo, %struct.demo* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = call i32 @free(%struct.TYPE_9__* %216)
  %218 = load %struct.demo*, %struct.demo** %2, align 8
  %219 = call i32 @demo_prepare(%struct.demo* %218)
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

declare dso_local i32 @demo_prepare(%struct.demo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
