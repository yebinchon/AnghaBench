; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_set_throttling_fadt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_throttling.c_acpi_processor_set_throttling_fadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.acpi_processor = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Throttling state set to T%d (%d%%)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*, i32, i32)* @acpi_processor_set_throttling_fadt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_set_throttling_fadt(%struct.acpi_processor* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_processor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %12 = icmp ne %struct.acpi_processor* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %161

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19, %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %161

30:                                               ; preds = %19
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %161

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %45 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %161

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %53 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %161

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %64 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = shl i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %76 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = xor i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %62, %59
  %86 = call i32 (...) @local_irq_disable()
  %87 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %88 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @inl(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 16
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, -17
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %100 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @outl(i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %95, %85
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %116 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @outl(i32 %114, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, 16
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %124 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @outl(i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %107, %104
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %131 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = call i32 (...) @local_irq_enable()
  %134 = load i32, i32* @ACPI_DB_INFO, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %137 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %128
  %147 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %148 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sdiv i32 %155, 10
  br label %158

157:                                              ; preds = %128
  br label %158

158:                                              ; preds = %157, %146
  %159 = phi i32 [ %156, %146 ], [ 0, %157 ]
  %160 = call i32 @ACPI_DEBUG_PRINT(i32 %159)
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %158, %56, %49, %36, %27, %13
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
