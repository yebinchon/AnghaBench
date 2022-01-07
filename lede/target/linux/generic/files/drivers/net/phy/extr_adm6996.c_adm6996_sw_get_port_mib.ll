; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_sw_get_port_mib.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_sw_get_port_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.adm6996_priv = type { i8*, i32 }

@ADM_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Port %d MIB counters\0A\00", align 1
@adm6996_mibs = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%-12s: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @adm6996_sw_get_port_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_sw_get_port_mib(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.adm6996_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %14 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %15 = call %struct.adm6996_priv* @to_adm(%struct.switch_dev* %14)
  store %struct.adm6996_priv* %15, %struct.adm6996_priv** %8, align 8
  %16 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %17 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %20 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ADM_NUM_PORTS, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %112

28:                                               ; preds = %3
  %29 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %30 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 8, %37
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %98, %28
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm6996_mibs, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %46
  %52 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm6996_mibs, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @ADM_OFFSET_PORT(i32 %59)
  %61 = add nsw i64 %58, %60
  %62 = call i32 @r16(%struct.adm6996_priv* %52, i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm6996_mibs, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @ADM_OFFSET_PORT(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = add nsw i64 %72, 1
  %74 = call i32 @r16(%struct.adm6996_priv* %63, i64 %73)
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 8, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm6996_mibs, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %91, i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %51
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %46

101:                                              ; preds = %46
  %102 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %103 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %107 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %111 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %101, %25
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.adm6996_priv* @to_adm(%struct.switch_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @r16(%struct.adm6996_priv*, i64) #1

declare dso_local i64 @ADM_OFFSET_PORT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
