; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_writer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c_erst_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.pstore_record = type { i32, i32, i32, i64 }
%struct.cper_pstore_record = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8*, i32, i32, i64, i32, i64 }

@erst_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CPER_SIG_RECORD = common dso_local global i32 0, align 4
@CPER_SIG_SIZE = common dso_local global i32 0, align 4
@CPER_RECORD_REV = common dso_local global i32 0, align 4
@CPER_SIG_END = common dso_local global i32 0, align 4
@CPER_SEV_FATAL = common dso_local global i8* null, align 8
@CPER_VALID_TIMESTAMP = common dso_local global i32 0, align 4
@CPER_CREATOR_PSTORE = common dso_local global i32 0, align 4
@CPER_NOTIFY_MCE = common dso_local global i32 0, align 4
@CPER_HW_ERROR_FLAGS_PREVERR = common dso_local global i32 0, align 4
@CPER_SEC_REV = common dso_local global i32 0, align 4
@CPER_SEC_PRIMARY = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_DMESG_Z = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_DMESG = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_MCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore_record*)* @erst_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erst_writer(%struct.pstore_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore_record*, align 8
  %4 = alloca %struct.cper_pstore_record*, align 8
  %5 = alloca i32, align 4
  store %struct.pstore_record* %0, %struct.pstore_record** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erst_info, i32 0, i32 0), align 8
  %7 = sub i64 %6, 112
  %8 = inttoptr i64 %7 to %struct.cper_pstore_record*
  store %struct.cper_pstore_record* %8, %struct.cper_pstore_record** %4, align 8
  %9 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %10 = call i32 @memset(%struct.cper_pstore_record* %9, i32 0, i32 112)
  %11 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %12 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CPER_SIG_RECORD, align 4
  %16 = load i32, i32* @CPER_SIG_SIZE, align 4
  %17 = call i32 @memcpy(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @CPER_RECORD_REV, align 4
  %19 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %20 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 10
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @CPER_SIG_END, align 4
  %23 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %24 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 9
  store i32 %22, i32* %25, align 8
  %26 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %27 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** @CPER_SEV_FATAL, align 8
  %30 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %31 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 8
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @CPER_VALID_TIMESTAMP, align 4
  %34 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %35 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 7
  store i32 %33, i32* %36, align 4
  %37 = call i32 (...) @ktime_get_real_seconds()
  %38 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %39 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 8
  %41 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %42 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add i64 112, %43
  %45 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %46 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @CPER_CREATOR_PSTORE, align 4
  %49 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %50 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @CPER_NOTIFY_MCE, align 4
  %53 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %54 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = call i32 (...) @cper_next_record_id()
  %57 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %58 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @CPER_HW_ERROR_FLAGS_PREVERR, align 4
  %61 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %62 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %65 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 112, i32* %66, align 8
  %67 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %68 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %71 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* @CPER_SEC_REV, align 4
  %74 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %75 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 8
  %77 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %78 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @CPER_SEC_PRIMARY, align 4
  %81 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %82 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %85 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %108 [
    i32 129, label %87
    i32 128, label %103
  ]

87:                                               ; preds = %1
  %88 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %89 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @CPER_SECTION_TYPE_DMESG_Z, align 4
  %94 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %95 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  br label %102

97:                                               ; preds = %87
  %98 = load i32, i32* @CPER_SECTION_TYPE_DMESG, align 4
  %99 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %100 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  br label %111

103:                                              ; preds = %1
  %104 = load i32, i32* @CPER_SECTION_TYPE_MCE, align 4
  %105 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %106 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  br label %111

108:                                              ; preds = %1
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %126

111:                                              ; preds = %103, %102
  %112 = load i8*, i8** @CPER_SEV_FATAL, align 8
  %113 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %114 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %117 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %116, i32 0, i32 0
  %118 = call i32 @erst_write(%struct.TYPE_5__* %117)
  store i32 %118, i32* %5, align 4
  %119 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %4, align 8
  %120 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.pstore_record*, %struct.pstore_record** %3, align 8
  %124 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %111, %108
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.cper_pstore_record*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @cper_next_record_id(...) #1

declare dso_local i32 @erst_write(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
