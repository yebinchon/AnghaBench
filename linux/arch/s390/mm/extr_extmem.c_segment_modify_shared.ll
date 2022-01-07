; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_segment_modify_shared.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_extmem.c_segment_modify_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcss_segment = type { i32, i64, i64, i64, i32, i32, %struct.dcss_segment*, i32, i32 }

@dcss_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"DCSS %s is already in the requested access mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"DCSS %s is in use and cannot be reloaded\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@SEG_TYPE_SR = common dso_local global i64 0, align 8
@SEG_TYPE_ER = common dso_local global i64 0, align 8
@iomem_resource = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"DCSS %s overlaps with used memory resources and cannot be reloaded\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@purgeseg_scode = common dso_local global i32 0, align 4
@loadnsr_scode = common dso_local global i32 0, align 4
@loadshr_scode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Reloading DCSS %s failed with rc=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @segment_modify_shared(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcss_segment*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  %11 = call i32 @mutex_lock(i32* @dcss_lock)
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct.dcss_segment* @segment_by_name(i8* %12)
  store %struct.dcss_segment* %13, %struct.dcss_segment** %5, align 8
  %14 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %15 = icmp eq %struct.dcss_segment* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %162

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %22 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 0, i32* %9, align 4
  br label %162

28:                                               ; preds = %19
  %29 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %30 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %29, i32 0, i32 8
  %31 = call i32 @refcount_read(i32* %30)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %162

38:                                               ; preds = %28
  %39 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %40 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %39, i32 0, i32 6
  %41 = load %struct.dcss_segment*, %struct.dcss_segment** %40, align 8
  %42 = call i32 @release_resource(%struct.dcss_segment* %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32, i32* @IORESOURCE_READONLY, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %49 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %48, i32 0, i32 6
  %50 = load %struct.dcss_segment*, %struct.dcss_segment** %49, align 8
  %51 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %47
  store i32 %53, i32* %51, align 8
  br label %75

54:                                               ; preds = %38
  %55 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %56 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SEG_TYPE_SR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %62 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SEG_TYPE_ER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @IORESOURCE_READONLY, align 4
  %68 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %69 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %68, i32 0, i32 6
  %70 = load %struct.dcss_segment*, %struct.dcss_segment** %69, align 8
  %71 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %66, %60
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %77 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %76, i32 0, i32 6
  %78 = load %struct.dcss_segment*, %struct.dcss_segment** %77, align 8
  %79 = call i64 @request_resource(i32* @iomem_resource, %struct.dcss_segment* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %87 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %86, i32 0, i32 6
  %88 = load %struct.dcss_segment*, %struct.dcss_segment** %87, align 8
  %89 = call i32 @kfree(%struct.dcss_segment* %88)
  br label %140

90:                                               ; preds = %75
  %91 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %92 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dcss_diag(i32* @purgeseg_scode, i32 %93, i64* %8, i64* %8)
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %99 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dcss_diag(i32* @loadnsr_scode, i32 %100, i64* %6, i64* %7)
  store i32 %101, i32* %10, align 4
  br label %107

102:                                              ; preds = %90
  %103 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %104 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dcss_diag(i32* @loadshr_scode, i32 %105, i64* %6, i64* %7)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %9, align 4
  br label %131

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i8*, i8** %3, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %116, i64 %117)
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @dcss_diag_translate_rc(i64 %119)
  store i32 %120, i32* %9, align 4
  br label %131

121:                                              ; preds = %112
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %124 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %127 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %130 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  store i32 0, i32* %9, align 4
  br label %162

131:                                              ; preds = %115, %110
  %132 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %133 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %132, i32 0, i32 6
  %134 = load %struct.dcss_segment*, %struct.dcss_segment** %133, align 8
  %135 = call i32 @release_resource(%struct.dcss_segment* %134)
  %136 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %137 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %136, i32 0, i32 6
  %138 = load %struct.dcss_segment*, %struct.dcss_segment** %137, align 8
  %139 = call i32 @kfree(%struct.dcss_segment* %138)
  br label %140

140:                                              ; preds = %131, %81
  %141 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %142 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %145 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %148 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = sub i64 %146, %149
  %151 = add i64 %150, 1
  %152 = call i32 @vmem_remove_mapping(i64 %143, i64 %151)
  %153 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %154 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %153, i32 0, i32 5
  %155 = call i32 @list_del(i32* %154)
  %156 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %157 = getelementptr inbounds %struct.dcss_segment, %struct.dcss_segment* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @dcss_diag(i32* @purgeseg_scode, i32 %158, i64* %8, i64* %8)
  %160 = load %struct.dcss_segment*, %struct.dcss_segment** %5, align 8
  %161 = call i32 @kfree(%struct.dcss_segment* %160)
  br label %162

162:                                              ; preds = %140, %121, %33, %25, %16
  %163 = call i32 @mutex_unlock(i32* @dcss_lock)
  %164 = load i32, i32* %9, align 4
  ret i32 %164
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dcss_segment* @segment_by_name(i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

declare dso_local i32 @release_resource(%struct.dcss_segment*) #1

declare dso_local i64 @request_resource(i32*, %struct.dcss_segment*) #1

declare dso_local i32 @kfree(%struct.dcss_segment*) #1

declare dso_local i32 @dcss_diag(i32*, i32, i64*, i64*) #1

declare dso_local i32 @dcss_diag_translate_rc(i64) #1

declare dso_local i32 @vmem_remove_mapping(i64, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
