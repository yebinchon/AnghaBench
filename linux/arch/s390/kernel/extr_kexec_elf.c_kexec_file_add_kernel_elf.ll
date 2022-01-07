; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kexec_elf.c_kexec_file_add_kernel_elf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kexec_elf.c_kexec_file_add_kernel_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.kimage = type { i64, i8* }
%struct.s390_load_data = type { i64, i32, i8*, i8*, i8* }
%struct.kexec_buf = type { i64, i8*, i8*, i32, %struct.kimage* }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i64, i32, i32 }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@STARTUP_KDUMP_OFFSET = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8
@crashk_res = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PARMAREA = common dso_local global i32 0, align 4
@IPL_RB_COMPONENT_FLAG_SIGNED = common dso_local global i32 0, align 4
@IPL_RB_COMPONENT_FLAG_VERIFIED = common dso_local global i32 0, align 4
@IPL_RB_CERT_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, %struct.s390_load_data*)* @kexec_file_add_kernel_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_file_add_kernel_elf(%struct.kimage* %0, %struct.s390_load_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca %struct.s390_load_data*, align 8
  %6 = alloca %struct.kexec_buf, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store %struct.s390_load_data* %1, %struct.s390_load_data** %5, align 8
  %13 = load %struct.kimage*, %struct.kimage** %4, align 8
  %14 = getelementptr inbounds %struct.kimage, %struct.kimage* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load %struct.kimage*, %struct.kimage** %4, align 8
  %19 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 4
  store %struct.kimage* %18, %struct.kimage** %19, align 8
  %20 = load %struct.kimage*, %struct.kimage** %4, align 8
  %21 = getelementptr inbounds %struct.kimage, %struct.kimage* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @STARTUP_KDUMP_OFFSET, align 8
  store i64 %26, i64* %9, align 8
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %27, %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = bitcast %struct.TYPE_5__* %32 to i8*
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %33, i64 %37
  %39 = bitcast i8* %38 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %141, %31
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %146

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PT_LOAD, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %141

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %54, i64 %58
  %60 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @ALIGN(i64 %67, i32 %70)
  %72 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load %struct.kimage*, %struct.kimage** %4, align 8
  %74 = getelementptr inbounds %struct.kimage, %struct.kimage* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %53
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @crashk_res, i32 0, i32 0), align 8
  %80 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr i8, i8* %81, i64 %79
  store i8* %82, i8** %80, align 8
  br label %83

83:                                               ; preds = %78, %53
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %89 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @ALIGN(i64 %90, i32 %93)
  %95 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr i8, i8* %94, i64 %96
  %98 = ptrtoint i8* %97 to i64
  %99 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %100 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %83
  %111 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %114 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %118 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %6, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @PARMAREA, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %120, i64 %122
  %124 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %125 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %110, %83
  %127 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %128 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IPL_RB_COMPONENT_FLAG_SIGNED, align 4
  %131 = load i32, i32* @IPL_RB_COMPONENT_FLAG_VERIFIED, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @IPL_RB_CERT_UNKNOWN, align 4
  %134 = call i32 @ipl_report_add_component(i32 %129, %struct.kexec_buf* %6, i32 %132, i32 %133)
  %135 = call i32 @kexec_add_buffer(%struct.kexec_buf* %6)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %3, align 4
  br label %157

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %52
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 1
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %8, align 8
  br label %40

146:                                              ; preds = %40
  %147 = load %struct.s390_load_data*, %struct.s390_load_data** %5, align 8
  %148 = getelementptr inbounds %struct.s390_load_data, %struct.s390_load_data* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %155

152:                                              ; preds = %146
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  br label %155

155:                                              ; preds = %152, %151
  %156 = phi i32 [ 0, %151 ], [ %154, %152 ]
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %155, %138
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i8* @ALIGN(i64, i32) #1

declare dso_local i32 @ipl_report_add_component(i32, %struct.kexec_buf*, i32, i32) #1

declare dso_local i32 @kexec_add_buffer(%struct.kexec_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
