; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_em_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_em_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@FW_FEATURE_LPAR = common dso_local global i32 0, align 4
@H_GET_EM_PARMS = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"power_mode_data=%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @parse_em_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_em_data(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %5 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i64, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load i32, i32* @FW_FEATURE_LPAR, align 4
  %10 = call i64 @firmware_has_feature(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @H_GET_EM_PARMS, align 4
  %14 = call i64 @plpar_hcall(i32 %13, i64* %8)
  %15 = load i64, i64* @H_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %19 = getelementptr inbounds i64, i64* %8, i64 0
  %20 = load i64, i64* %19, align 16
  %21 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %23)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @firmware_has_feature(i32) #2

declare dso_local i64 @plpar_hcall(i32, i64*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
