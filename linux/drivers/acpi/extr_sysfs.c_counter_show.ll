; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_counter_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_counter_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_attribute = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }

@counter_attrs = common dso_local global %struct.kobj_attribute* null, align 8
@acpi_irq_handled = common dso_local global i32 0, align 4
@all_counters = common dso_local global %struct.TYPE_2__* null, align 8
@num_gpes = common dso_local global i64 0, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@COUNT_SCI = common dso_local global i64 0, align 8
@acpi_irq_not_handled = common dso_local global i32 0, align 4
@COUNT_SCI_NOT = common dso_local global i64 0, align 8
@acpi_gpe_count = common dso_local global i32 0, align 4
@COUNT_GPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%8u\00", align 1
@ACPI_EVENT_FLAG_ENABLE_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"  EN\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@ACPI_EVENT_FLAG_STATUS_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" STS\00", align 1
@ACPI_EVENT_FLAG_HAS_HANDLER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c" invalid     \00", align 1
@ACPI_EVENT_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" enabled     \00", align 1
@ACPI_EVENT_FLAG_WAKE_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c" wake_enabled\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" disabled    \00", align 1
@ACPI_EVENT_FLAG_MASKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" masked  \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" unmasked\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @counter_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.kobj_attribute*, %struct.kobj_attribute** %5, align 8
  %13 = load %struct.kobj_attribute*, %struct.kobj_attribute** @counter_attrs, align 8
  %14 = ptrtoint %struct.kobj_attribute* %12 to i64
  %15 = ptrtoint %struct.kobj_attribute* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @acpi_irq_handled, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %21 = load i64, i64* @num_gpes, align 8
  %22 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* @COUNT_SCI, align 8
  %25 = add i64 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %19, i32* %27, align 4
  %28 = load i32, i32* @acpi_irq_not_handled, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %30 = load i64, i64* @num_gpes, align 8
  %31 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* @COUNT_SCI_NOT, align 8
  %34 = add i64 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %28, i32* %36, align 4
  %37 = load i32, i32* @acpi_gpe_count, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %39 = load i64, i64* @num_gpes, align 8
  %40 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* @COUNT_GPE, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %37, i32* %45, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_counters, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @num_gpes, align 8
  %57 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %58 = add i64 %56, %57
  %59 = icmp uge i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %3
  br label %180

61:                                               ; preds = %3
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @get_status(i32 %62, i32* %10, i32* %9)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %180

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ACPI_EVENT_FLAG_ENABLE_SET, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %88

80:                                               ; preds = %67
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ACPI_EVENT_FLAG_STATUS_SET, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %109

101:                                              ; preds = %88
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %101, %93
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @ACPI_EVENT_FLAG_HAS_HANDLER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = call i32 (i8*, i8*, ...) @sprintf(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %158

122:                                              ; preds = %109
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @ACPI_EVENT_FLAG_ENABLED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %8, align 4
  br label %157

135:                                              ; preds = %122
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @ACPI_EVENT_FLAG_WAKE_ENABLED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = call i32 (i8*, i8*, ...) @sprintf(i8* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %156

148:                                              ; preds = %135
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %148, %140
  br label %157

157:                                              ; preds = %156, %127
  br label %158

158:                                              ; preds = %157, %114
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @ACPI_EVENT_FLAG_MASKED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = call i32 (i8*, i8*, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %179

171:                                              ; preds = %158
  %172 = load i8*, i8** %6, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = call i32 (i8*, i8*, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %171, %163
  br label %180

180:                                              ; preds = %179, %66, %60
  %181 = load i8*, i8** %6, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = load i32, i32* %11, align 4
  br label %194

192:                                              ; preds = %180
  %193 = load i32, i32* %8, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  ret i32 %195
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @get_status(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
