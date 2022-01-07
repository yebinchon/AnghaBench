; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_cbr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_cbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i64, i32, i64 }
%struct.vc_map = type { i32, i32 }
%struct.atm_vcc = type { i32 }
%struct.atm_qos = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"%s: trying to open a CBR VC with cell rate = 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VCF_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: CBR target cell rate = %d\0A\00", align 1
@SAR_TST_RESERVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: no CBR bandwidth free.\0A\00", align 1
@ENOSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: selected CBR bandwidth < granularity.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: not enough CBR bandwidth free.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: modify %d -> %d entries in TST.\0A\00", align 1
@TSTE_OPC_CBR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: setting %d entries in TST.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*)* @idt77252_init_cbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_init_cbr(%struct.idt77252_dev* %0, %struct.vc_map* %1, %struct.atm_vcc* %2, %struct.atm_qos* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.idt77252_dev*, align 8
  %7 = alloca %struct.vc_map*, align 8
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca %struct.atm_qos*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %6, align 8
  store %struct.vc_map* %1, %struct.vc_map** %7, align 8
  store %struct.atm_vcc* %2, %struct.atm_vcc** %8, align 8
  store %struct.atm_qos* %3, %struct.atm_qos** %9, align 8
  %17 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %18 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %4
  %23 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %24 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %30 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %36 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %185

41:                                               ; preds = %28, %22, %4
  store i32 0, i32* %11, align 4
  %42 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %43 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @VCF_TX, align 4
  %46 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %47 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %52 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %59 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %58, i32 0, i32 0
  %60 = call i32 @atm_pcr_goal(%struct.TYPE_2__* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %63
  %69 = phi i32 [ %64, %63 ], [ %67, %65 ]
  store i32 %69, i32* %16, align 4
  %70 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %71 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @TXPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %78 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %79, 2
  %81 = mul i64 %76, %80
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %84 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = urem i64 %82, %85
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %89 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = udiv i64 %87, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %68
  %96 = load i64, i64* %14, align 8
  %97 = icmp ugt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %120

102:                                              ; preds = %68
  %103 = load i32, i32* %15, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @SAR_TST_RESERVED, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %113 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ENOSR, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %185

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %102
  br label %120

120:                                              ; preds = %119, %101
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %125 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %185

130:                                              ; preds = %120
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @SAR_TST_RESERVED, align 4
  %134 = sub nsw i32 %132, %133
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %138 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @ENOSR, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %185

143:                                              ; preds = %130
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %146 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %151 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @VCF_TX, align 4
  %153 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %154 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %153, i32 0, i32 1
  %155 = call i64 @test_bit(i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %143
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 0, i32* %5, align 4
  br label %185

162:                                              ; preds = %157
  %163 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %164 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 (i8*, i32, i32, ...) @OPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166, i32 %167)
  %169 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %170 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @TSTE_OPC_CBR, align 4
  %173 = call i32 @change_tst(%struct.idt77252_dev* %169, %struct.vc_map* %170, i32 %171, i32 %172)
  store i32 0, i32* %5, align 4
  br label %185

174:                                              ; preds = %143
  %175 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %176 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 (i8*, i32, i32, ...) @OPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %177, i32 %178)
  %180 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %181 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @TSTE_OPC_CBR, align 4
  %184 = call i32 @fill_tst(%struct.idt77252_dev* %180, %struct.vc_map* %181, i32 %182, i32 %183)
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %174, %162, %161, %136, %123, %111, %34
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atm_pcr_goal(%struct.TYPE_2__*) #1

declare dso_local i32 @TXPRINTK(i8*, i32, i32) #1

declare dso_local i32 @OPRINTK(i8*, i32, i32, ...) #1

declare dso_local i32 @change_tst(%struct.idt77252_dev*, %struct.vc_map*, i32, i32) #1

declare dso_local i32 @fill_tst(%struct.idt77252_dev*, %struct.vc_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
