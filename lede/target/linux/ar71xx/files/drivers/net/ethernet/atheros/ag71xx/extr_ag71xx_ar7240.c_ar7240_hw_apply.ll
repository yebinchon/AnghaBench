; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_hw_apply.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_hw_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.ar7240sw = type { i32*, i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@AR7240_NUM_PORTS = common dso_local global i32 0, align 4
@AR7240_VTU_OP_FLUSH = common dso_local global i32 0, align 4
@AR7240_MAX_VLANS = common dso_local global i32 0, align 4
@AR7240_VTU_OP_LOAD = common dso_local global i32 0, align 4
@AR7240_VTU_VID_S = common dso_local global i32 0, align 4
@AR7240_PORT_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @ar7240_hw_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar7240_hw_apply(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.ar7240sw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %11 = call %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev* %10)
  store %struct.ar7240sw* %11, %struct.ar7240sw** %3, align 8
  %12 = load i32, i32* @AR7240_NUM_PORTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %17 = load i32, i32* @AR7240_VTU_OP_FLUSH, align 4
  %18 = call i32 @ar7240_vtu_op(%struct.ar7240sw* %16, i32 %17, i32 0)
  %19 = mul nuw i64 4, %13
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %15, i32 0, i32 %20)
  %22 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %23 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %92, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @AR7240_MAX_VLANS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %33 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %92

42:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %68, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %46 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %15, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %57, %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %43

71:                                               ; preds = %43
  %72 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %73 = load i32, i32* @AR7240_VTU_OP_LOAD, align 4
  %74 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %75 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AR7240_VTU_VID_S, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %73, %82
  %84 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %85 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ar7240_vtu_op(%struct.ar7240sw* %72, i32 %83, i32 %90)
  br label %92

92:                                               ; preds = %71, %41
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %27

95:                                               ; preds = %27
  br label %126

96:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %122, %96
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %100 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @AR7240_PORT_CPU, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %122

109:                                              ; preds = %104
  %110 = load i32, i32* @AR7240_PORT_CPU, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %15, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %6, align 4
  %116 = shl i32 1, %115
  %117 = load i32, i32* @AR7240_PORT_CPU, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %15, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %109, %108
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %97

125:                                              ; preds = %97
  br label %126

126:                                              ; preds = %125, %95
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %142, %126
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %130 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load %struct.ar7240sw*, %struct.ar7240sw** %3, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %15, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ar7240sw_setup_port(%struct.ar7240sw* %135, i32 %136, i32 %140)
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %127

145:                                              ; preds = %127
  %146 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %146)
  ret i32 0
}

declare dso_local %struct.ar7240sw* @sw_to_ar7240(%struct.switch_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ar7240_vtu_op(%struct.ar7240sw*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ar7240sw_setup_port(%struct.ar7240sw*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
