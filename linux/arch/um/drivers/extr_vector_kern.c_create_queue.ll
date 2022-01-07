; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_create_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_queue = type { i32, i32, %struct.vector_queue*, i64, i64, i64, i32, i32, %struct.TYPE_2__, i32**, i32 }
%struct.TYPE_2__ = type { i32, i64, i32*, i32, i64, i32*, %struct.iovec* }
%struct.iovec = type { i32, i32* }
%struct.vector_private = type { i64, i32 }
%struct.mmsghdr = type { i32, i32, %struct.mmsghdr*, i64, i64, i64, i32, i32, %struct.TYPE_2__, i32**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vector_queue* (%struct.vector_private*, i32, i32, i32)* @create_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vector_queue* @create_queue(%struct.vector_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vector_queue*, align 8
  %6 = alloca %struct.vector_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vector_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iovec*, align 8
  %13 = alloca %struct.mmsghdr*, align 8
  store %struct.vector_private* %0, %struct.vector_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 120, i32 %14)
  %16 = bitcast i8* %15 to %struct.vector_queue*
  store %struct.vector_queue* %16, %struct.vector_queue** %10, align 8
  %17 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %18 = icmp eq %struct.vector_queue* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.vector_queue* null, %struct.vector_queue** %5, align 8
  br label %197

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %23 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %25 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %28 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 120, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmalloc(i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.vector_queue*
  %36 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %37 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %36, i32 0, i32 2
  store %struct.vector_queue* %35, %struct.vector_queue** %37, align 8
  %38 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %39 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %38, i32 0, i32 2
  %40 = load %struct.vector_queue*, %struct.vector_queue** %39, align 8
  %41 = icmp eq %struct.vector_queue* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %191

43:                                               ; preds = %20
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kmalloc(i32 %47, i32 %48)
  %50 = bitcast i8* %49 to i32**
  %51 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %52 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %51, i32 0, i32 9
  store i32** %50, i32*** %52, align 8
  %53 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %54 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %53, i32 0, i32 9
  %55 = load i32**, i32*** %54, align 8
  %56 = icmp eq i32** %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %186

58:                                               ; preds = %43
  %59 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %60 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %59, i32 0, i32 2
  %61 = load %struct.vector_queue*, %struct.vector_queue** %60, align 8
  %62 = bitcast %struct.vector_queue* %61 to %struct.mmsghdr*
  store %struct.mmsghdr* %62, %struct.mmsghdr** %13, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %79, %58
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %69 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %68, i32 0, i32 9
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  store i32* null, i32** %73, align 8
  %74 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %75 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  store %struct.iovec* null, %struct.iovec** %76, align 8
  %77 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %78 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %77, i32 1
  store %struct.mmsghdr* %78, %struct.mmsghdr** %13, align 8
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %84 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %83, i32 0, i32 2
  %85 = load %struct.vector_queue*, %struct.vector_queue** %84, align 8
  %86 = bitcast %struct.vector_queue* %85 to %struct.mmsghdr*
  store %struct.mmsghdr* %86, %struct.mmsghdr** %13, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %89 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %169, %82
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %172

94:                                               ; preds = %90
  %95 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %96 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 3, %100
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.iovec* @kmalloc_array(i32 %101, i32 16, i32 %102)
  store %struct.iovec* %103, %struct.iovec** %12, align 8
  br label %109

104:                                              ; preds = %94
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 2, %105
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.iovec* @kmalloc_array(i32 %106, i32 16, i32 %107)
  store %struct.iovec* %108, %struct.iovec** %12, align 8
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.iovec*, %struct.iovec** %12, align 8
  %111 = icmp eq %struct.iovec* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %194

113:                                              ; preds = %109
  %114 = load %struct.iovec*, %struct.iovec** %12, align 8
  %115 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %116 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 6
  store %struct.iovec* %114, %struct.iovec** %117, align 8
  %118 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %119 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %122 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %121, i32 0, i32 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 5
  store i32* null, i32** %123, align 8
  %124 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %125 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @MSG_DONTWAIT, align 4
  %128 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %129 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 8
  %131 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %132 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i32* null, i32** %133, align 8
  %134 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %135 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %134, i32 0, i32 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %138 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %113
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i8* @kmalloc(i32 %142, i32 %143)
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.iovec*, %struct.iovec** %12, align 8
  %147 = getelementptr inbounds %struct.iovec, %struct.iovec* %146, i32 0, i32 1
  store i32* %145, i32** %147, align 8
  %148 = load %struct.iovec*, %struct.iovec** %12, align 8
  %149 = getelementptr inbounds %struct.iovec, %struct.iovec* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %194

153:                                              ; preds = %141
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.iovec*, %struct.iovec** %12, align 8
  %156 = getelementptr inbounds %struct.iovec, %struct.iovec* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %158 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  store i32 2, i32* %159, align 8
  %160 = load %struct.iovec*, %struct.iovec** %12, align 8
  %161 = getelementptr inbounds %struct.iovec, %struct.iovec* %160, i32 1
  store %struct.iovec* %161, %struct.iovec** %12, align 8
  br label %162

162:                                              ; preds = %153, %113
  %163 = load %struct.iovec*, %struct.iovec** %12, align 8
  %164 = getelementptr inbounds %struct.iovec, %struct.iovec* %163, i32 0, i32 1
  store i32* null, i32** %164, align 8
  %165 = load %struct.iovec*, %struct.iovec** %12, align 8
  %166 = getelementptr inbounds %struct.iovec, %struct.iovec* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  %167 = load %struct.mmsghdr*, %struct.mmsghdr** %13, align 8
  %168 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %167, i32 1
  store %struct.mmsghdr* %168, %struct.mmsghdr** %13, align 8
  br label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %90

172:                                              ; preds = %90
  %173 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %174 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %173, i32 0, i32 7
  %175 = call i32 @spin_lock_init(i32* %174)
  %176 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %177 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %176, i32 0, i32 6
  %178 = call i32 @spin_lock_init(i32* %177)
  %179 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %180 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %179, i32 0, i32 5
  store i64 0, i64* %180, align 8
  %181 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %182 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %184 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  %185 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  store %struct.vector_queue* %185, %struct.vector_queue** %5, align 8
  br label %197

186:                                              ; preds = %57
  %187 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %188 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %187, i32 0, i32 2
  %189 = load %struct.vector_queue*, %struct.vector_queue** %188, align 8
  %190 = call i32 @kfree(%struct.vector_queue* %189)
  br label %191

191:                                              ; preds = %186, %42
  %192 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %193 = call i32 @kfree(%struct.vector_queue* %192)
  store %struct.vector_queue* null, %struct.vector_queue** %5, align 8
  br label %197

194:                                              ; preds = %152, %112
  %195 = load %struct.vector_queue*, %struct.vector_queue** %10, align 8
  %196 = call i32 @destroy_queue(%struct.vector_queue* %195)
  store %struct.vector_queue* null, %struct.vector_queue** %5, align 8
  br label %197

197:                                              ; preds = %194, %191, %172, %19
  %198 = load %struct.vector_queue*, %struct.vector_queue** %5, align 8
  ret %struct.vector_queue* %198
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.iovec* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.vector_queue*) #1

declare dso_local i32 @destroy_queue(%struct.vector_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
