; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ath25/extr_devices.c_get_system_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ath25/extr_devices.c_get_system_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ath25_soc = common dso_local global i64 0, align 8
@soc_type_strings = common dso_local global i8** null, align 8
@ATH25_SOC_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_system_type() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @ath25_soc, align 8
  %3 = load i8**, i8*** @soc_type_strings, align 8
  %4 = call i64 @ARRAY_SIZE(i8** %3)
  %5 = icmp uge i64 %2, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = load i8**, i8*** @soc_type_strings, align 8
  %8 = load i64, i64* @ath25_soc, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6, %0
  %13 = load i8**, i8*** @soc_type_strings, align 8
  %14 = load i64, i64* @ATH25_SOC_UNKNOWN, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %1, align 8
  br label %22

17:                                               ; preds = %6
  %18 = load i8**, i8*** @soc_type_strings, align 8
  %19 = load i64, i64* @ath25_soc, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %1, align 8
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i8*, i8** %1, align 8
  ret i8* %23
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
