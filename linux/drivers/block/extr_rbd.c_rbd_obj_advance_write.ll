; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_advance_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_advance_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rbd_device* }
%struct.rbd_device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"pre object map update failed: %d\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RBD_OBJ_FLAG_COPYUP_ENABLED = common dso_local global i32 0, align 4
@RBD_OBJ_COPYUP_START = common dso_local global i32 0, align 4
@RBD_OBJ_FLAG_DELETION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"copyup failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"post object map update failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*, i32*)* @rbd_obj_advance_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_advance_write(%struct.rbd_obj_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_obj_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %9 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.rbd_device*, %struct.rbd_device** %11, align 8
  store %struct.rbd_device* %12, %struct.rbd_device** %6, align 8
  br label %13

13:                                               ; preds = %130, %98, %76, %41, %2
  %14 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %15 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %142 [
    i32 129, label %17
    i32 130, label %43
    i32 132, label %63
    i32 128, label %101
    i32 133, label %108
    i32 131, label %132
  ]

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @rbd_assert(i32 %22)
  %24 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %25 = call i32 @rbd_obj_write_is_noop(%struct.rbd_obj_request* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %144

28:                                               ; preds = %17
  %29 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %30 = call i32 @rbd_obj_write_pre_object_map(%struct.rbd_obj_request* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  store i32 1, i32* %3, align 4
  br label %144

36:                                               ; preds = %28
  %37 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %38 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %37, i32 0, i32 0
  store i32 130, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %13

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %144

43:                                               ; preds = %13
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rbd_warn(%struct.rbd_device* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 1, i32* %3, align 4
  br label %144

52:                                               ; preds = %43
  %53 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %54 = call i32 @rbd_obj_write_object(%struct.rbd_obj_request* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %3, align 4
  br label %144

60:                                               ; preds = %52
  %61 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %62 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %61, i32 0, i32 0
  store i32 132, i32* %62, align 8
  store i32 0, i32* %3, align 4
  br label %144

63:                                               ; preds = %13
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %63
  %70 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %71 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ENABLED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32*, i32** %5, align 8
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @RBD_OBJ_COPYUP_START, align 4
  %79 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %80 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %82 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %81, i32 0, i32 0
  store i32 128, i32* %82, align 8
  br label %13

83:                                               ; preds = %69
  %84 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %85 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RBD_OBJ_FLAG_DELETION, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32*, i32** %5, align 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %83
  br label %93

93:                                               ; preds = %92, %63
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %144

98:                                               ; preds = %93
  %99 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %100 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %99, i32 0, i32 0
  store i32 133, i32* %100, align 8
  br label %13

101:                                              ; preds = %13
  %102 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @rbd_obj_advance_copyup(%struct.rbd_obj_request* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %144

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %13, %107
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @rbd_warn(%struct.rbd_device* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  store i32 1, i32* %3, align 4
  br label %144

117:                                              ; preds = %108
  %118 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %119 = call i32 @rbd_obj_write_post_object_map(%struct.rbd_obj_request* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %7, align 4
  %124 = load i32*, i32** %5, align 8
  store i32 %123, i32* %124, align 4
  store i32 1, i32* %3, align 4
  br label %144

125:                                              ; preds = %117
  %126 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %4, align 8
  %127 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %126, i32 0, i32 0
  store i32 131, i32* %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %13

131:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %144

132:                                              ; preds = %13
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @rbd_warn(%struct.rbd_device* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %136, %132
  store i32 1, i32* %3, align 4
  br label %144

142:                                              ; preds = %13
  %143 = call i32 (...) @BUG()
  br label %144

144:                                              ; preds = %27, %33, %42, %47, %57, %60, %97, %106, %112, %122, %131, %141, %142
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_obj_write_is_noop(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_obj_write_pre_object_map(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32) #1

declare dso_local i32 @rbd_obj_write_object(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_obj_advance_copyup(%struct.rbd_obj_request*, i32*) #1

declare dso_local i32 @rbd_obj_write_post_object_map(%struct.rbd_obj_request*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
