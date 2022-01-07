; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_rewind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pt.c_pt_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32 }

@ATAPI_REWIND = common dso_local global i8 0, align 1
@PT_REWIND_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rewind\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_unit*)* @pt_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt_rewind(%struct.pt_unit* %0) #0 {
  %2 = alloca %struct.pt_unit*, align 8
  %3 = alloca [12 x i8], align 1
  store %struct.pt_unit* %0, %struct.pt_unit** %2, align 8
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %5 = load i8, i8* @ATAPI_REWIND, align 1
  store i8 %5, i8* %4, align 1
  %6 = getelementptr inbounds i8, i8* %4, i64 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 0, i8* %16, align 1
  %17 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %18 = load i32, i32* @PT_REWIND_TMO, align 4
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %20 = call i32 @pt_media_access_cmd(%struct.pt_unit* %17, i32 %18, i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pt_media_access_cmd(%struct.pt_unit*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
