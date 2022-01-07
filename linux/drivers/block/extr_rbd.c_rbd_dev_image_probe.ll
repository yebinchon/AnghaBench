; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_image_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_image_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32*, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"image %s/%s%s%s does not exist\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"snap %s/%s%s%s@%s does not exist\0A\00", align 1
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@RBD_FEATURE_OBJECT_MAP = common dso_local global i32 0, align 4
@RBD_FEATURE_LAYERING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"discovered format %u image, header name is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i32)* @rbd_dev_image_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_image_probe(%struct.rbd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %8 = call i32 @rbd_dev_image_id(%struct.rbd_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %209

13:                                               ; preds = %2
  %14 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %15 = call i32 @rbd_dev_header_name(%struct.rbd_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %195

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %19
  %23 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %24 = call i32 @rbd_register_watch(%struct.rbd_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %34 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = inttoptr i64 %42 to i8*
  br label %47

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %46 ]
  %49 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %50 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %57 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %58 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %48, i8* %56, i32 %61)
  br label %63

63:                                               ; preds = %47, %27
  br label %195

64:                                               ; preds = %22
  br label %65

65:                                               ; preds = %64, %19
  %66 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %67 = call i32 @rbd_dev_header_info(%struct.rbd_device* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %188

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %76 = call i32 @rbd_spec_fill_snap_id(%struct.rbd_device* %75)
  store i32 %76, i32* %6, align 4
  br label %80

77:                                               ; preds = %71
  %78 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %79 = call i32 @rbd_spec_fill_names(%struct.rbd_device* %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %125

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %124

88:                                               ; preds = %83
  %89 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %90 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %95 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = inttoptr i64 %98 to i8*
  br label %103

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i8* [ %101, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %102 ]
  %105 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %106 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %113 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %114 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %119 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, i32, i8*, i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %93, i8* %104, i8* %112, i32 %117, i32 %122)
  br label %124

124:                                              ; preds = %103, %83
  br label %185

125:                                              ; preds = %80
  %126 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %127 = call i32 @rbd_dev_mapping_set(%struct.rbd_device* %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %185

131:                                              ; preds = %125
  %132 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %133 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CEPH_NOSNAP, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %131
  %140 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %141 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RBD_FEATURE_OBJECT_MAP, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %149 = call i32 @rbd_object_map_load(%struct.rbd_device* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %185

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %139, %131
  %155 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %156 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @RBD_FEATURE_LAYERING, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %154
  %163 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %164 = call i32 @rbd_dev_v2_parent_info(%struct.rbd_device* %163)
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %185

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168, %154
  %170 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @rbd_dev_probe_parent(%struct.rbd_device* %170, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %185

176:                                              ; preds = %169
  %177 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %178 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %181 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @dout(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %179, i32 %183)
  store i32 0, i32* %3, align 4
  br label %209

185:                                              ; preds = %175, %167, %152, %130, %124
  %186 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %187 = call i32 @rbd_dev_unprobe(%struct.rbd_device* %186)
  br label %188

188:                                              ; preds = %185, %70
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %193 = call i32 @rbd_unregister_watch(%struct.rbd_device* %192)
  br label %194

194:                                              ; preds = %191, %188
  br label %195

195:                                              ; preds = %194, %63, %18
  %196 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %197 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  %198 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %199 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %198, i32 0, i32 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @kfree(i32* %202)
  %204 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %205 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  store i32* null, i32** %207, align 8
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %195, %176, %11
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @rbd_dev_image_id(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_header_name(%struct.rbd_device*) #1

declare dso_local i32 @rbd_register_watch(%struct.rbd_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @rbd_dev_header_info(%struct.rbd_device*) #1

declare dso_local i32 @rbd_spec_fill_snap_id(%struct.rbd_device*) #1

declare dso_local i32 @rbd_spec_fill_names(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_mapping_set(%struct.rbd_device*) #1

declare dso_local i32 @rbd_object_map_load(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_v2_parent_info(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_probe_parent(%struct.rbd_device*, i32) #1

declare dso_local i32 @dout(i8*, i64, i32) #1

declare dso_local i32 @rbd_dev_unprobe(%struct.rbd_device*) #1

declare dso_local i32 @rbd_unregister_watch(%struct.rbd_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
