; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_advance_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_advance_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rbd_device* }
%struct.rbd_device = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*, i32*)* @rbd_obj_advance_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_advance_read(%struct.rbd_obj_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_obj_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %10 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.rbd_device*, %struct.rbd_device** %12, align 8
  store %struct.rbd_device* %13, %struct.rbd_device** %6, align 8
  br label %14

14:                                               ; preds = %28, %2
  %15 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %16 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %158 [
    i32 128, label %18
    i32 130, label %45
    i32 129, label %133
  ]

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rbd_assert(i32 %23)
  %25 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %26 = call i32 @rbd_obj_may_exist(%struct.rbd_obj_request* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %33 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %32, i32 0, i32 0
  store i32 130, i32* %33, align 8
  br label %14

34:                                               ; preds = %18
  %35 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %36 = call i32 @rbd_obj_read_object(%struct.rbd_obj_request* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %3, align 4
  br label %160

42:                                               ; preds = %34
  %43 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %44 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %43, i32 0, i32 0
  store i32 130, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %160

45:                                               ; preds = %14
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %53 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %58 = call i32 @rbd_obj_calc_img_extents(%struct.rbd_obj_request* %57, i32 0)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  store i32 1, i32* %3, align 4
  br label %160

64:                                               ; preds = %56
  %65 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %66 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %71 = call i32 @rbd_obj_read_from_parent(%struct.rbd_obj_request* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  store i32 1, i32* %3, align 4
  br label %160

77:                                               ; preds = %69
  %78 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %79 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %78, i32 0, i32 0
  store i32 129, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %160

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %51, %45
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %89 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %90 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @rbd_obj_zero_range(%struct.rbd_obj_request* %88, i32 0, i32 %92)
  %94 = load i32*, i32** %5, align 8
  store i32 0, i32* %94, align 4
  br label %132

95:                                               ; preds = %81
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %95
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %103 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %99
  %108 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %112 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %114, %116
  %118 = call i32 @rbd_obj_zero_range(%struct.rbd_obj_request* %108, i32 %110, i32 %117)
  br label %129

119:                                              ; preds = %99
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %123 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %121, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @rbd_assert(i32 %127)
  br label %129

129:                                              ; preds = %119, %107
  %130 = load i32*, i32** %5, align 8
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %95
  br label %132

132:                                              ; preds = %131, %87
  store i32 1, i32* %3, align 4
  br label %160

133:                                              ; preds = %14
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %133
  %138 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %139 = call i32 @rbd_obj_img_extents_bytes(%struct.rbd_obj_request* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %142 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %137
  %147 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %150 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sub nsw i32 %152, %153
  %155 = call i32 @rbd_obj_zero_range(%struct.rbd_obj_request* %147, i32 %148, i32 %154)
  br label %156

156:                                              ; preds = %146, %137
  br label %157

157:                                              ; preds = %156, %133
  store i32 1, i32* %3, align 4
  br label %160

158:                                              ; preds = %14
  %159 = call i32 (...) @BUG()
  br label %160

160:                                              ; preds = %39, %42, %61, %74, %77, %132, %157, %158
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_obj_may_exist(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_obj_read_object(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_obj_calc_img_extents(%struct.rbd_obj_request*, i32) #1

declare dso_local i32 @rbd_obj_read_from_parent(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_obj_zero_range(%struct.rbd_obj_request*, i32, i32) #1

declare dso_local i32 @rbd_obj_img_extents_bytes(%struct.rbd_obj_request*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
