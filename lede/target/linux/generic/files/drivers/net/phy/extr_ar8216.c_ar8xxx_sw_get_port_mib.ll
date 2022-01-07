; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_mib.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_get_port_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ar8xxx_priv = type { i8*, i32*, i32, %struct.ar8xxx_chip* }
%struct.ar8xxx_chip = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MIB counters\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%-12s: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TxByte\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"RxGoodByte\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"No MIB data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_sw_get_port_mib(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.ar8xxx_priv*, align 8
  %9 = alloca %struct.ar8xxx_chip*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [64 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %20 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %21 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %20)
  store %struct.ar8xxx_priv* %21, %struct.ar8xxx_priv** %8, align 8
  %22 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %23 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %22, i32 0, i32 3
  %24 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %23, align 8
  store %struct.ar8xxx_chip* %24, %struct.ar8xxx_chip** %9, align 8
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %26 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %28 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %29 = call i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %171

34:                                               ; preds = %3
  %35 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %36 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %40 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp uge i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %171

46:                                               ; preds = %34
  %47 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %48 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %47, i32 0, i32 2
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %51 = call i32 @ar8xxx_mib_capture(%struct.ar8xxx_priv* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %166

55:                                               ; preds = %46
  %56 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ar8xxx_mib_fetch_port_stat(%struct.ar8xxx_priv* %56, i32 %57, i32 0)
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 8, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %62, i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %18, align 4
  %70 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %71 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %9, align 8
  %75 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul i32 %73, %76
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  store i32* %79, i32** %10, align 8
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %149, %55
  %81 = load i32, i32* %17, align 4
  %82 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %9, align 8
  %83 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %152

86:                                               ; preds = %80
  %87 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %9, align 8
  %88 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %16, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 8, %105
  %107 = trunc i64 %106 to i32
  %108 = load i8*, i8** %16, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %103, i32 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %108, i32 %109)
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %18, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %86
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %141, label %120

120:                                              ; preds = %116, %86
  %121 = load i32, i32* %11, align 4
  %122 = icmp sge i32 %121, 1024
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @ar8xxx_byte_to_str(i8* %124, i32 64, i32 %125)
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %18, align 4
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = sub i64 8, %134
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %138 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %132, i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %123, %120, %116
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* %19, align 4
  br label %148

148:                                              ; preds = %147, %144, %141
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %80

152:                                              ; preds = %80
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8*, i8** %14, align 8
  %157 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %156, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i8*, i8** %14, align 8
  %160 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %161 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %165 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %158, %54
  %167 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  %168 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %167, i32 0, i32 2
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %43, %31
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

declare dso_local i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ar8xxx_mib_capture(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_mib_fetch_port_stat(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ar8xxx_byte_to_str(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
