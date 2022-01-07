; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_apei.c_apei_write_mce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_apei.c_apei_write_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32 }
%struct.cper_mce_record = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i8*, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32, i64, i32 }

@CPER_SIG_RECORD = common dso_local global %struct.mce* null, align 8
@CPER_SIG_SIZE = common dso_local global i32 0, align 4
@CPER_RECORD_REV = common dso_local global i32 0, align 4
@CPER_SIG_END = common dso_local global i32 0, align 4
@CPER_SEV_FATAL = common dso_local global i8* null, align 8
@CPER_CREATOR_MCE = common dso_local global i32 0, align 4
@CPER_NOTIFY_MCE = common dso_local global i32 0, align 4
@CPER_HW_ERROR_FLAGS_PREVERR = common dso_local global i32 0, align 4
@CPER_SEC_REV = common dso_local global i32 0, align 4
@CPER_SEC_PRIMARY = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_MCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apei_write_mce(%struct.mce* %0) #0 {
  %2 = alloca %struct.mce*, align 8
  %3 = alloca %struct.cper_mce_record, align 8
  store %struct.mce* %0, %struct.mce** %2, align 8
  %4 = call i32 @memset(%struct.cper_mce_record* %3, i32 0, i32 104)
  %5 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 10
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.mce*, %struct.mce** @CPER_SIG_RECORD, align 8
  %9 = load i32, i32* @CPER_SIG_SIZE, align 4
  %10 = call i32 @memcpy(i32* %7, %struct.mce* %8, i32 %9)
  %11 = load i32, i32* @CPER_RECORD_REV, align 4
  %12 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @CPER_SIG_END, align 4
  %15 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 8
  %17 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i8*, i8** @CPER_SEV_FATAL, align 8
  %20 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 104, i32* %25, align 4
  %26 = load i32, i32* @CPER_CREATOR_MCE, align 4
  %27 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CPER_NOTIFY_MCE, align 4
  %30 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = call i32 (...) @cper_next_record_id()
  %33 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @CPER_HW_ERROR_FLAGS_PREVERR, align 4
  %36 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 1
  %39 = bitcast i32* %38 to i8*
  %40 = bitcast %struct.cper_mce_record* %3 to i8*
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 4, i32* %48, align 4
  %49 = load i32, i32* @CPER_SEC_REV, align 4
  %50 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @CPER_SEC_PRIMARY, align 4
  %55 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @CPER_SECTION_TYPE_MCE, align 4
  %58 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @CPER_SEV_FATAL, align 8
  %61 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 1
  %64 = load %struct.mce*, %struct.mce** %2, align 8
  %65 = call i32 @memcpy(i32* %63, %struct.mce* %64, i32 4)
  %66 = getelementptr inbounds %struct.cper_mce_record, %struct.cper_mce_record* %3, i32 0, i32 0
  %67 = call i32 @erst_write(%struct.TYPE_4__* %66)
  ret i32 %67
}

declare dso_local i32 @memset(%struct.cper_mce_record*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mce*, i32) #1

declare dso_local i32 @cper_next_record_id(...) #1

declare dso_local i32 @erst_write(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
