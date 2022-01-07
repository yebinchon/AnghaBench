; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_combine_lpi_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_combine_lpi_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_lpi_state = type { i64, i8*, i32, i32, i32, i32, i64, i32, i64 }

@ACPI_CSTATE_INTEGER = common dso_local global i64 0, align 8
@ACPI_CX_DESC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_lpi_state*, %struct.acpi_lpi_state*, %struct.acpi_lpi_state*)* @combine_lpi_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combine_lpi_states(%struct.acpi_lpi_state* %0, %struct.acpi_lpi_state* %1, %struct.acpi_lpi_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_lpi_state*, align 8
  %6 = alloca %struct.acpi_lpi_state*, align 8
  %7 = alloca %struct.acpi_lpi_state*, align 8
  store %struct.acpi_lpi_state* %0, %struct.acpi_lpi_state** %5, align 8
  store %struct.acpi_lpi_state* %1, %struct.acpi_lpi_state** %6, align 8
  store %struct.acpi_lpi_state* %2, %struct.acpi_lpi_state** %7, align 8
  %8 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %9 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ACPI_CSTATE_INTEGER, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %15 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %100

19:                                               ; preds = %13
  %20 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %24 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %28 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %27, i32 0, i32 8
  store i64 %26, i64* %28, align 8
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %33, i32 0, i32 8
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %19
  %36 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %5, align 8
  %37 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %40 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @max(i32 %38, i32 %41)
  %43 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %44 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %5, align 8
  %46 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %49 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %53 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %52, i32 0, i32 6
  store i64 %51, i64* %53, align 8
  %54 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %55 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %58 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %63 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %65 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %68 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %70 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %73 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %75 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %78 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %80 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %5, align 8
  %83 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @ACPI_CX_DESC_LEN, align 4
  %86 = call i32 @strlcpy(i8* %81, i8* %84, i32 %85)
  %87 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %88 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @ACPI_CX_DESC_LEN, align 4
  %91 = call i32 @strlcat(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %7, align 8
  %93 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %6, align 8
  %96 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @ACPI_CX_DESC_LEN, align 4
  %99 = call i32 @strlcat(i8* %94, i8* %97, i32 %98)
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %35, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
