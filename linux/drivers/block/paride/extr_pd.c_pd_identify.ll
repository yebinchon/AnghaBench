; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pd.c_pd_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pd_unit = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PD_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"before IDENT\00", align 1
@IDE_IDENTIFY = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"IDENT DRQ\00", align 1
@STAT_ERR = common dso_local global i32 0, align 4
@Fail = common dso_local global i32 0, align 4
@pd_scratch = common dso_local global i32* null, align 8
@PD_ID_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: %s, %s, %d blocks [%dM], (%d/%d/%d), %s media\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pd_unit*)* @pd_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_identify(%struct.pd_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pd_unit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pd_unit* %0, %struct.pd_unit** %3, align 8
  %8 = load i32, i32* @PD_ID_LEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %14 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %19 = call i32 @pd_reset(%struct.pd_unit* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %22 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %23 = call i32 @DRIVE(%struct.pd_unit* %22)
  %24 = call i32 @write_reg(%struct.pd_unit* %21, i32 6, i32 %23)
  %25 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %26 = call i32 @DBMSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @pd_wait_for(%struct.pd_unit* %25, i32 0, i32 %26)
  %28 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %29 = load i32, i32* @IDE_IDENTIFY, align 4
  %30 = call i32 @pd_send_command(%struct.pd_unit* %28, i32 1, i32 0, i32 0, i32 0, i32 0, i32 %29)
  %31 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %32 = load i32, i32* @STAT_DRQ, align 4
  %33 = call i32 @DBMSG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @pd_wait_for(%struct.pd_unit* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @STAT_ERR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* @Fail, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %198

40:                                               ; preds = %20
  %41 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %42 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** @pd_scratch, align 8
  %45 = call i32 @pi_read_block(i32 %43, i32* %44, i32 512)
  %46 = load i32*, i32** @pd_scratch, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 99
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 2
  %50 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %51 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32*, i32** @pd_scratch, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @le16_to_cpu(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %58 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** @pd_scratch, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %65 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i32*, i32** @pd_scratch, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @le16_to_cpu(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %72 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %74 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %40
  %78 = load i32*, i32** @pd_scratch, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 120
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %83 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  br label %98

84:                                               ; preds = %40
  %85 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %86 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %89 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %93 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %97 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %84, %77
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PD_ID_LEN, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i32*, i32** @pd_scratch, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @PD_ID_OFF, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i32, i32* %4, align 4
  %113 = xor i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %12, i64 %114
  store i8 %111, i8* %115, align 1
  br label %116

116:                                              ; preds = %103
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %99

119:                                              ; preds = %99
  %120 = load i32, i32* @PD_ID_LEN, align 4
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %134, %119
  %123 = load i32, i32* %4, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %12, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp sle i32 %130, 32
  br label %132

132:                                              ; preds = %125, %122
  %133 = phi i1 [ false, %122 ], [ %131, %125 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %4, align 4
  br label %122

137:                                              ; preds = %132
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %12, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load i32*, i32** @pd_scratch, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 128
  %147 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %148 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 4
  %149 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %150 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %153 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %158 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %159 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %162 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %163, 2048
  %165 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %166 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %169 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %172 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %175 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %180 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %151, i8* %12, i8* %157, i32 %160, i32 %164, i32 %167, i32 %170, i32 %173, i8* %179)
  %181 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %182 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %137
  %186 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %187 = call i32 @pd_init_dev_parms(%struct.pd_unit* %186)
  br label %188

188:                                              ; preds = %185, %137
  %189 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %190 = getelementptr inbounds %struct.pd_unit, %struct.pd_unit* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %188
  %194 = load %struct.pd_unit*, %struct.pd_unit** %3, align 8
  %195 = call i32 @pd_standby_off(%struct.pd_unit* %194)
  br label %196

196:                                              ; preds = %193, %188
  %197 = load i32, i32* @Ok, align 4
  store i32 %197, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %198

198:                                              ; preds = %196, %38
  %199 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pd_reset(%struct.pd_unit*) #2

declare dso_local i32 @write_reg(%struct.pd_unit*, i32, i32) #2

declare dso_local i32 @DRIVE(%struct.pd_unit*) #2

declare dso_local i32 @pd_wait_for(%struct.pd_unit*, i32, i32) #2

declare dso_local i32 @DBMSG(i8*) #2

declare dso_local i32 @pd_send_command(%struct.pd_unit*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @pi_read_block(i32, i32*, i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @printk(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @pd_init_dev_parms(%struct.pd_unit*) #2

declare dso_local i32 @pd_standby_off(%struct.pd_unit*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
